#define _GNU_SOURCE

#include <stddef.h>
#include <stdio.h>
#include <errno.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <stdarg.h>
#include <signal.h>

#include <gtk/gtk.h>
#include <gio/gio.h>
#include <webkit2/webkit2.h>

#include "common.h"
#include "infopath.h"

void
vmsg (char *fmt, va_list v)
{
  vprintf (fmt, v);
}

int debug_level = 1;

void
debug (int level, char *fmt, ...)
{
  if (level > debug_level)
    return;

  va_list v;
  va_start (v, fmt);

  printf ("MAIN/%lu: ", clock ());
  vmsg (fmt, v);
  va_end (v);
}

static GMainLoop *main_loop;

static void
destroy_window_cb (GtkWidget *widget, GtkWidget *window)
{
  g_main_loop_quit (main_loop);
}

static gboolean
close_web_view_cb(WebKitWebView *webView, GtkWidget *window)
{
  gtk_widget_destroy (window);
  return TRUE;
}

static gboolean key_press_cb(GtkWidget *webView,
                             GdkEvent  *event,
                             gpointer   user_data);

WebKitWebView *webView = 0;

static char *next_link, *prev_link, *up_link;

GtkWidget *main_window = 0;
GtkHeaderBar *header_bar;

GtkEntry *index_entry = 0;
GtkEntryCompletion *index_completion = 0;
GtkListStore *index_store = 0;

GtkTreeStore *toc_store = 0;
enum { COLUMN_TEXT, COLUMN_URL, COLUMN_CHILD_FULL };

GtkTreeView *toc_pane;
GtkTreeSelection *toc_selection = 0;
GtkWidget *toc_scroll = 0;
GtkPaned *paned;
GTree *toc_paths = 0;

gint
toc_cmp (const void *a, const void *b, void *ignored)
{
  return strcmp ((char *)a, (char *)b);
}

gboolean indices_loaded = FALSE;
WebKitWebView *hiddenWebView = NULL;

void
load_relative_url (const char *href)
{
  char *link = 0;

  const char *current_uri = webkit_web_view_get_uri (webView);
  if (current_uri)
    {
      const char *p = current_uri;
      const char *q;

      /* Set p to after the last '/'. */
      while ((q = strchr (p, '/')))
        {
          q++;
          p = q;
        }
      if (p != current_uri)
        {
          link = malloc ((p - current_uri)
                         + strlen (href) + 1);
          memcpy (link, current_uri, p - current_uri);
          strcpy (link + (p - current_uri), href);

          debug (1, "LOADING %s\n", link);
          webkit_web_view_load_uri (webView, link);
        }
    }
  free (link);
}

void
hide_index (void)
{
  gtk_widget_hide (GTK_WIDGET(index_entry));
  gtk_widget_grab_focus (GTK_WIDGET(webView));
}

void
clear_completions (void)
{
  if (index_store)
    gtk_list_store_clear (index_store);
}

gboolean
index_match_selected_cb (GtkEntryCompletion *widget,
                         GtkTreeModel       *model,
                         GtkTreeIter        *iter,
                         gpointer            user_data)
{
  GValue value = G_VALUE_INIT;

  gtk_tree_model_get_value (model,
			    iter,
			    1,
			    &value);
  load_relative_url (g_value_get_string (&value));
  g_value_unset (&value);

  hide_index ();
  return FALSE;
}

/* Save index entries.  Return 1 if it is the end of this index. */
int
save_completions (char *p)
{
  GtkTreeIter iter;

  if (!index_completion)
    {
      index_store = gtk_list_store_new (2, G_TYPE_STRING, G_TYPE_STRING);
      index_completion = gtk_entry_completion_new ();
      g_signal_connect (index_completion, "match-selected",
                        G_CALLBACK(index_match_selected_cb), NULL);
      gtk_entry_completion_set_model (index_completion,
                                      GTK_TREE_MODEL(index_store));
      gtk_entry_completion_set_text_column (index_completion, 0);
      gtk_entry_set_completion (index_entry, index_completion);
    }

  char *q, *q2;
  while ((q = strchr (p, '\n')))
    {
      *q++ = 0;
      q2 = strchr (q, '\n');
      if (!q2)
        {
          debug (1, "incomplete packet\n");
          return 1;
        }
      *q2++ = 0;

      if (!*p && !*q)
        return 1; /* end of index */

      // debug (2, "add index entry %s\n", p);

      gtk_list_store_append (index_store, &iter);
      gtk_list_store_set (index_store, &iter,
                          0, p, 1, q,
                          -1);

      p = q2;
    }
  return 0;
}

static char *current_manual;
static char *current_manual_dir;

static char *index_list = 0;
static char *index_list_ptr = 0;

/* Load a single index node in the list in index_list.  We only do one
   at a time to give the subprocess time to do it before we load the next one.  
   If only there were some way of getting the subthread to load pages itself
   instead of having to call webkit_web_view_load_uri here. */
void
continue_to_load_index_nodes (void)
{
  GString *s;
  char *q;

  if (!index_list_ptr || !(q = strchr (index_list_ptr, '\n')))
    {
      free (index_list);
      index_list_ptr = index_list = 0;
      return;
    }

  s = g_string_new (NULL);

  *q = '\0';
  g_string_assign (s, "file:");
  g_string_append (s, current_manual_dir);
  g_string_append (s, "/");
  g_string_append (s, index_list_ptr);
  g_string_append (s, "?send-index");

  debug (1, "load index node %s\n", s->str);
  webkit_web_view_load_uri (hiddenWebView, s->str);

  g_string_free (s, TRUE);

  index_list_ptr = q + 1;
}

/* P points to a list of URL's for index nodes, each on one line.  Start
   to load them one at a time. */
void
load_index_nodes (char *p)
{
  /* In case we were in the middle of loading indices for another manual. */
  free (index_list);

  index_list_ptr = index_list = strdup (p);
  continue_to_load_index_nodes ();
}

GtkCellRenderer *toc_renderer = 0;
GtkTreeViewColumn *toc_column = 0;

GtkTreeIter toc_iter; /* The entry to add new entries under. */
GtkTreeIter last_iter;

GtkTreeIter *toc_iter_ptr;
int toc_empty = 1;

/* Used when a new node should be selected in the TOC sidebar,
   but it is not ready yet. */
char *pending_node = 0;

/* Activate a new node entry in the sidebar. */
void
switch_node (char *p)
{
  GtkTreeIter *iter = g_tree_lookup (toc_paths, p);
  debug (1, "SWITCH %s\n", p);
  if (iter)
    {
      char *path = gtk_tree_model_get_string_from_iter
                     (GTK_TREE_MODEL(toc_store), iter);
      if (path)
        {
          GtkTreePath *path2 = gtk_tree_path_new_from_string (path);
          GtkTreePath *parent = gtk_tree_path_copy (path2);

          if (gtk_tree_path_up (parent))
            gtk_tree_view_expand_to_path (toc_pane, parent);

          gtk_tree_selection_select_path (toc_selection, path2);
          gtk_tree_view_scroll_to_cell (toc_pane, path2,
                                        NULL, TRUE, 0.5, 0);
          gtk_tree_path_free (path2);
          gtk_tree_path_free (parent);
          free (path);
        }
      }
    else
      {
        debug (1, "NOT IN TOC\n");
      }
}


/* P is a pointer to lines sent from the web process extension representing the 
   table of contents.  The lines are in pairs: the first, with the user-visible 
   text, the second, with the URL.  The hierarchical structure of the TOC is 
   represented by "+" and "-" characters in front of the URL's. */
void
load_toc (char *p)
{
  int last;

  if (!toc_paths)
    toc_paths = g_tree_new_full (toc_cmp, NULL, free, free);

  if (!toc_store)
    {
      toc_store = gtk_tree_store_new (3, G_TYPE_STRING, G_TYPE_STRING,
                                      G_TYPE_BOOLEAN);
      gtk_tree_view_set_model (toc_pane, GTK_TREE_MODEL(toc_store));

      toc_renderer = gtk_cell_renderer_text_new ();
      g_object_set (G_OBJECT(toc_renderer),
                    "ellipsize", PANGO_ELLIPSIZE_END, NULL);

      toc_column = gtk_tree_view_column_new_with_attributes (NULL,
                                                   toc_renderer,
                                                   "text", COLUMN_TEXT,
                                                   NULL);
      gtk_tree_view_append_column (GTK_TREE_VIEW (toc_pane), toc_column);
    }

  char *q, *q2;
  while ((q = strchr (p, '\n')))
    {
      last = 0;
      *q++ = 0;
      q2 = strchr (q, '\n');
      if (!q2)
        break;
      *q2++ = 0;
      debug (2, "add toc entry %s:%s\n", p, q);

      if (strchr (p, '<'))
	{
          /* Strip HTML tags. */
          char *p1, *p2;
          char *q3 = q;
          while ((p1 = strchr (p, '<')) && (p2 = strchr (p1, '>')))
            {
              p2++;
              memmove (p1, p2, q3 - p2);
              q3 -= p2 - p1;
            }
        }

      if (*q == '+') /* First sub-section in section. */
        {
          q++;
          if (!toc_empty)
            {
              /* Add items under the last item added.  */
              toc_iter_ptr = &toc_iter;
              toc_iter = last_iter;
            }
        }
      if (*q == '-') /* Last sub-section in section. */
        {
          q++;
          last = 1;
        }

      gtk_tree_store_append (toc_store, &last_iter, toc_iter_ptr);
      gtk_tree_store_set (toc_store, &last_iter,
                          COLUMN_TEXT, p,
                          COLUMN_URL, q,
                          COLUMN_CHILD_FULL, FALSE, -1);

      GtkTreeIter *saved_iter = malloc (sizeof (last_iter));
      *saved_iter = last_iter;

      /* Strip off file extension. */
      char *node = strdup (q);
      char *dot = strchr (node, '.');
      if (dot)
        *dot = '\0';

      g_tree_insert (toc_paths, node, saved_iter);

      toc_empty = 0;

      if (last)
        {
          GtkTreeIter parent;

          if (toc_iter_ptr)
            {
              /* Mark the parent entry as having no more children. */
              gtk_tree_store_set (toc_store, toc_iter_ptr,
                                  COLUMN_CHILD_FULL, TRUE, -1);

              while (1)
                {
                  bool result = gtk_tree_model_iter_parent
                    (GTK_TREE_MODEL(toc_store), &parent, &toc_iter);
                  if (result)
                    {
                      toc_iter = parent;
                    }
                  else
                    {
                      toc_iter_ptr = NULL; /* At top level. */
                      break;
                    }

                  bool no_more;
                  gtk_tree_model_get (GTK_TREE_MODEL(toc_store), &toc_iter,
                                      COLUMN_CHILD_FULL, &no_more, -1);

                  if (!no_more)
                    break;
                }
            }
        }

      p = q2;
    }
}

void
toc_selected_cb (GtkTreeSelection *selection, gpointer user_data)
{
  bool success;
  GtkTreeIter iter;
  GtkTreeModel *model;
  char *url;

  debug (1, "TOC ENTRY SELECTED\n");

  success = gtk_tree_selection_get_selected (selection, &model, &iter);
  if (!success)
    {
      debug (1, "NONE SELECTED\n");
      return;
    }

  gtk_tree_model_get (model, &iter, 1, &url, -1);

  load_relative_url (url);
  g_free (url);
}

int
new_manual (char *manual)
{
  debug (1, "NEW MANUAL %s\n", manual);

  char *new_manual_dir = locate_manual (manual);

  if (!new_manual_dir)
    {
      debug (1, "MANUAL NOT FOUND\n");
      GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT;
      GtkWidget *dialog = gtk_message_dialog_new (
                                        GTK_WINDOW(main_window),
                                        flags,
                                        GTK_MESSAGE_ERROR,
                                        GTK_BUTTONS_CLOSE,
                                        "Manual '%s' not found", manual);
      gtk_dialog_run (GTK_DIALOG (dialog));
      gtk_widget_destroy (dialog);
      return 0;
    }
  free (current_manual_dir);
  current_manual_dir = new_manual_dir;
  debug (1, "NEW MANUAL AT %s\n", current_manual_dir);

  free (current_manual);
  current_manual = strdup (manual);
  gtk_header_bar_set_title (header_bar, current_manual);

  clear_completions ();
  if (toc_store)
    {
      gtk_tree_selection_set_mode (toc_selection, GTK_SELECTION_NONE);
      gtk_tree_store_clear (toc_store);
      toc_iter_ptr = 0;
      toc_empty = 1;
      gtk_tree_selection_set_mode (toc_selection,
                                   GTK_SELECTION_SINGLE);
      /* If we do not change the selection mode, it appears that 
         gtk_tree_store_clear causes every row to be selected in turn, 
         so toc_selected_cb runs and loads all the nodes in the old 
         manual.  */
    }
  if (toc_paths)
    {
      g_tree_destroy (toc_paths);
      toc_paths = 0;
    }
  return 1;
}

void
load_manual (char *manual)
{
  if (!new_manual (manual))
    return;

  GString *s = g_string_new (NULL);
  g_string_append (s, "file:");
  g_string_append (s, current_manual_dir);
  g_string_append (s, "/index.html");
  webkit_web_view_load_uri (webView, s->str);
  g_string_free (s, TRUE);
}

/* Used to load a new node.  Used when the subprocess doesn't
   know the absolute file name after loading a new manual. */
void
load_node (char *p)
{
  if (!current_manual_dir)
    {
      debug (1, "ABORT LOAD NODE %s\n", p);
      return;
    }

  debug (1, "NEW NODE %s\n", p);

  GString *s = g_string_new (NULL);
  g_string_append (s, "file:");
  g_string_append (s, current_manual_dir);
  g_string_append (s, "/");
  g_string_append (s, p);
  g_string_append (s, ".html");
  debug (1, "TRY LOAD %s\n", s->str);
  webkit_web_view_load_uri (webView, s->str);
  g_string_free (s, TRUE);
}

void
handle_script_message (WebKitUserContentManager *manager,
                       WebKitJavascriptResult   *js_result,
                       gpointer                  user_data)
{
  JSCValue *jscValue = webkit_javascript_result_get_js_value (js_result);
  char *message = jsc_value_to_string (jscValue);
  //debug (1, "--------------> recvd mesg %s\n", message);

  char *p, *q;
  p = strchr (message, '\n');
  if (!p)
    {
      free (message);
      return;
    }
  *p = 0;

  char **save_where = 0;
  if (!strcmp (message, "next"))
    save_where = &next_link;
  else if (!strcmp (message, "prev"))
    save_where = &prev_link;
  else if (!strcmp (message, "up"))
    save_where = &up_link;
  if (save_where)
    {
      p++;
      q = strchr (p, '\n');
      if (q)
        {
          *q = 0;
          free (*save_where);
          *save_where = strdup (p);
        }
    }
  else if (!strcmp (message, "inform-new-node"))
    {
      p++;
      if (toc_paths)
        {
          switch_node (p);
        }
      else
        {
          free (pending_node); pending_node = strdup (p);
          debug (1, "TOC PATHS NOT READY\n");
        }
      free (next_link); free (prev_link); free (up_link);
      next_link = prev_link = up_link = 0;
    }
  else if (!strcmp (message, "new-node"))
    {
      p++;
      load_node (p);
    }
  else if (!strcmp (message, "index-nodes"))
    {
      /* Receive URL of files containing an index. */
      p++;
      load_index_nodes (p);
    }
  else if (!strcmp (message, "new-manual"))
    {
      if (new_manual (p + 1))
        {
          GString *s = g_string_new (NULL);
          g_string_append (s, "file:");
          g_string_append (s, current_manual_dir);
          g_string_append (s, "/index.html?top-node");
          webkit_web_view_load_uri (hiddenWebView, s->str);
          g_string_free (s, TRUE);
        }
    }
  else if (!strcmp (message, "index"))
    {
      p++; /* Set p to the first byte after index line. */

      if (save_completions (p))
        continue_to_load_index_nodes ();
    }
  else if (!strcmp (message, "toc"))
    {
      p++;
      load_toc (p);
      debug (1, "TOC FINISHED\n");
      if (pending_node)
        {
          debug (1, "HANDLE PENDING NODE %s\n", pending_node);
          switch_node (pending_node);
          free (pending_node); pending_node = 0;
        }
    }
}

char *extensions_directory;

static void
initialize_web_extensions (WebKitWebContext *context,
                           gpointer          user_data)
{
  char *d;
  asprintf (&d, "%s/%s", extensions_directory, ".libs");
  webkit_web_context_set_web_extensions_directory (context, d);
  free (d);

  webkit_web_context_set_web_extensions_initialization_user_data (context, 0);
}

void
show_index (void)
{
  gtk_widget_show (GTK_WIDGET(index_entry));
  gtk_widget_grab_focus (GTK_WIDGET(index_entry));
}


gboolean
index_search_box_focus_out_cb (GtkWidget *widget,
                               GdkEvent  *event,
                               gpointer   user_data)
{
  hide_index ();
  return FALSE;
}


/* Replace any ' characters with '\'' in preparation for being used in a
   single-quoted string in a shell invocation. */
void
escape_uri (char **out, const char *uri)
{
  static GRegex *gregex;
  if (!gregex)
    gregex = g_regex_new ("'", 0, 0, 0);

  *out = g_regex_replace_literal (gregex, uri, -1, 0, "'\\''", 0, NULL);
}

gboolean
decide_policy_cb (WebKitWebView           *web_view,
                  WebKitPolicyDecision    *decision,
                  WebKitPolicyDecisionType type,
                  gpointer                 user_data)
{
  switch (type)
    {
    case WEBKIT_POLICY_DECISION_TYPE_NAVIGATION_ACTION: {
      WebKitNavigationPolicyDecision *navigation_decision
        = WEBKIT_NAVIGATION_POLICY_DECISION (decision);

      WebKitURIRequest *request
        = webkit_navigation_policy_decision_get_request (navigation_decision);

      const char *uri = webkit_uri_request_get_uri (request);

      /* Check for an external URL. */
      if (!memcmp (uri, "http:", 5) || !memcmp(uri, "https:", 6))
        {
          debug (1, "link blocked");
          webkit_policy_decision_ignore (decision);

          char *s1 = 0;
          if (strchr (uri, '\''))
            {
              escape_uri (&s1, uri);
              uri = s1;
            }

          char *s;
          asprintf (&s, "xdg-open '%s'", uri);
          system (s);
          free (s);
          free (s1);
        }
      else
        webkit_policy_decision_use (decision);

      break;
    }
    case WEBKIT_POLICY_DECISION_TYPE_NEW_WINDOW_ACTION: {
       /* WebKitNavigationPolicyDecision *navigation_decision
            = WEBKIT_NAVIGATION_POLICY_DECISION (decision); */
       /* Make a policy decision here. */
       break;
    }
    case WEBKIT_POLICY_DECISION_TYPE_RESPONSE: {
       /* WebKitResponsePolicyDecision *response
            = WEBKIT_RESPONSE_POLICY_DECISION (decision); */
       /* Make a policy decision here. */
       break;
    }
    default:
       /* Making no decision results in webkit_policy_decision_use(). */
       return FALSE;
    }
   return TRUE;
}


void
find_extensions_directory (int argc, char *argv[])
{
  char *p;
  if (argc == 0 || !argv[0])
    {
      g_print ("cannot get program name; quitting\n");
      exit (1);
    }

  if (!(p = strchr (argv[0], '/')))
    {
      g_print ("running installed program not yet supported\n");
      exit (1);
    }

  extensions_directory = strdup (argv[0]);
  extensions_directory[p - argv[0]] = '\0';
}



static GtkWidget *toc_button;
static GtkWidget *back_button;
static GtkWidget *help_button;
static GtkWidget *manual_button;

static GtkWidget *manual_dialog, *manual_entry;

void
manual_entry_cb (GtkDialog *dialog,
                 gint       response_id,
                 gpointer   user_data)
{
  const char *p = gtk_entry_get_text (GTK_ENTRY(manual_entry));
  char *new_manual = 0;
  if (p)
    new_manual = strdup (p);
  gtk_widget_destroy (manual_dialog);
  if (new_manual)
    {
      load_manual (new_manual);
      free (new_manual);
    }
}

void
manual_clicked_cb (GtkButton *button, gpointer user_data)
{
  GtkDialogFlags flags = GTK_DIALOG_MODAL | GTK_DIALOG_DESTROY_WITH_PARENT;
  manual_dialog = gtk_dialog_new_with_buttons ("Enter manual name",
                                        GTK_WINDOW(main_window),
                                        flags,
                                        "_OK",
                                        GTK_RESPONSE_ACCEPT,
                                        NULL);

  GtkWidget *content_area = gtk_dialog_get_content_area
                              (GTK_DIALOG (manual_dialog));

  manual_entry = gtk_entry_new ();
  gtk_container_add (GTK_CONTAINER (content_area), manual_entry);

  g_signal_connect_swapped (manual_dialog,
                           "response",
                           G_CALLBACK (manual_entry_cb),
                           NULL);
  g_signal_connect_swapped (manual_entry,
                           "activate",
                           G_CALLBACK (manual_entry_cb),
                           NULL);
  gtk_widget_show_all (manual_dialog);
}

void
back_clicked_cb (GtkButton *button, gpointer user_data)
{
  webkit_web_view_go_back (webView);
}

void
toc_clicked_cb (GtkButton *button, gpointer user_data)
{
  if (gtk_paned_get_position (paned) != 0)
    gtk_paned_set_position (paned, 0);
  else
    gtk_paned_set_position (paned, 200);
}

void
help_clicked_cb (GtkButton *button, gpointer user_data)
{
  char *help_string =
    "Summary of key commands\n"
    "\n"
    "n\tnext node\n"
    "p\tprevious node\n"
    "u\tgo up to parent node\n"
    "i\tindex search\n"
    "q\tquit"
    ;
  GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT;
  GtkWidget *dialog = gtk_message_dialog_new (GTK_WINDOW(main_window),
                                   flags,
                                   GTK_MESSAGE_OTHER,
                                   GTK_BUTTONS_CLOSE,
                                   "%s", help_string);
  gtk_dialog_run (GTK_DIALOG (dialog));
  gtk_widget_destroy (dialog);
}

void
build_gui (void)
{
  main_window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
  gtk_window_set_default_size(GTK_WINDOW(main_window), 800, 700);

  header_bar = GTK_HEADER_BAR(gtk_header_bar_new ());
  gtk_header_bar_set_title (header_bar, "Info");
  gtk_header_bar_set_show_close_button (header_bar, TRUE);
  gtk_window_set_titlebar (GTK_WINDOW(main_window), GTK_WIDGET(header_bar));

  toc_button = gtk_button_new_with_mnemonic ("Hide _TOC");
  gtk_widget_set_focus_on_click (toc_button, FALSE);
  g_signal_connect (toc_button, "clicked",
                    G_CALLBACK(toc_clicked_cb), NULL);
  gtk_header_bar_pack_start (header_bar, toc_button);

  // back_button = gtk_button_new_with_mnemonic ("_Back");
  back_button = gtk_button_new_from_icon_name ("go-previous-symbolic", 
                                               GTK_ICON_SIZE_MENU);
  g_signal_connect (back_button, "clicked",
                    G_CALLBACK(back_clicked_cb), NULL);
  gtk_widget_set_focus_on_click (back_button, FALSE);
  gtk_header_bar_pack_start (header_bar, back_button);

  manual_button = gtk_button_new_with_mnemonic ("_Load manual");
  g_signal_connect (manual_button, "clicked",
                    G_CALLBACK(manual_clicked_cb), NULL);
  gtk_widget_set_focus_on_click (manual_button, FALSE);
  gtk_header_bar_pack_start (header_bar, manual_button);

  // help_button = gtk_button_new_with_mnemonic ("_Help");
  help_button = gtk_button_new_from_icon_name ("dialog-information", 
                                               GTK_ICON_SIZE_MENU);
  gtk_widget_set_focus_on_click (help_button, FALSE);
  g_signal_connect (help_button, "clicked",
                    G_CALLBACK(help_clicked_cb), NULL);
  gtk_header_bar_pack_start (header_bar, help_button);

  GtkBox *box = GTK_BOX(gtk_box_new (GTK_ORIENTATION_VERTICAL, 0));

  paned = GTK_PANED(gtk_paned_new (GTK_ORIENTATION_HORIZONTAL));
  gtk_paned_set_wide_handle (paned, TRUE);
  gtk_box_pack_start (box, GTK_WIDGET(paned), TRUE, TRUE, 0);

  toc_scroll = gtk_scrolled_window_new (NULL, NULL);
  toc_pane = GTK_TREE_VIEW(gtk_tree_view_new ());
  gtk_tree_view_set_headers_visible (toc_pane, FALSE);
  toc_selection = gtk_tree_view_get_selection (toc_pane);
  gtk_tree_selection_set_mode (toc_selection, GTK_SELECTION_SINGLE);
  g_signal_connect (toc_selection, "changed",
                    G_CALLBACK(toc_selected_cb), NULL);

  gtk_container_add (GTK_CONTAINER (toc_scroll), GTK_WIDGET(toc_pane));

  gtk_paned_set_position (paned, 200);
  gtk_paned_pack1 (paned, GTK_WIDGET(toc_scroll), FALSE, TRUE);

  gtk_paned_pack2 (paned, GTK_WIDGET(webView), TRUE, TRUE);

  index_entry = GTK_ENTRY(gtk_entry_new ());
  gtk_box_pack_start (box, GTK_WIDGET(index_entry), FALSE, FALSE, 0);

  gtk_container_add(GTK_CONTAINER(main_window), GTK_WIDGET(box));

  gtk_widget_add_events (GTK_WIDGET(webView), GDK_FOCUS_CHANGE_MASK);

  /* Hide the index search box when it loses focus. */
  g_signal_connect (index_entry, "focus-out-event",
                    G_CALLBACK(index_search_box_focus_out_cb), NULL);

  g_signal_connect (webView, "decide-policy",
                    G_CALLBACK(decide_policy_cb), NULL);

  // Set up callbacks so that if either the main window or the browser 
  // instance is closed, the program will exit.
  g_signal_connect(main_window, "destroy",
                   G_CALLBACK(destroy_window_cb), NULL);
  g_signal_connect(webView, "close",
                   G_CALLBACK(close_web_view_cb), main_window);

  g_signal_connect(webView, "key-press-event", G_CALLBACK(key_press_cb), NULL);

  g_signal_connect(toc_pane, "key-press-event", G_CALLBACK(key_press_cb), 
                   NULL);

  gtk_widget_show_all (main_window);
  gtk_widget_hide (GTK_WIDGET(index_entry));

  /* Make sure that when the browser area becomes visible, it will get mouse
     and keyboard events. */
  gtk_widget_grab_focus (GTK_WIDGET(webView));
}

/* Used to make sure atexit functions run. */
void
termination_handler (int signum)
{
  exit (0);
}

int
main (int argc, char *argv[])
{
    gtk_init (&argc, &argv);
    find_extensions_directory (argc, argv);

    if (signal (SIGINT, termination_handler) == SIG_IGN)
      signal (SIGINT, SIG_IGN);
    if (signal (SIGHUP, termination_handler) == SIG_IGN)
      signal (SIGHUP, SIG_IGN);
    if (signal (SIGTERM, termination_handler) == SIG_IGN)
      signal (SIGTERM, SIG_IGN);

    /* This is used to use a separate process for the web browser
       that looks up the index files.  This stops the program from freezing 
       while the index files are processed.  */
    if (1)
      {
        webkit_web_context_set_process_model (
          webkit_web_context_get_default (),
          WEBKIT_PROCESS_MODEL_MULTIPLE_SECONDARY_PROCESSES); 
      }

    /* Load "extensions".  The web browser is run in a separate process
       and we can only access the DOM in that process. */
    g_signal_connect (webkit_web_context_get_default (),
		      "initialize-web-extensions",
		      G_CALLBACK (initialize_web_extensions),
		      NULL);

    /* Disable JavaScript */
    WebKitSettings *settings = webkit_settings_new ();
    webkit_settings_set_enable_javascript (settings, FALSE);

    webView = WEBKIT_WEB_VIEW(webkit_web_view_new_with_settings(settings));

    WebKitUserContentManager *manager1, *manager2;

    manager1 = webkit_web_view_get_user_content_manager (webView);
    g_signal_connect (manager1, "script-message-received::channel",
                      G_CALLBACK (handle_script_message), NULL);
    webkit_user_content_manager_register_script_message_handler (manager1,
                                                                 "channel");
    build_gui ();

    /* Create a web view to parse index files.  */
    hiddenWebView = WEBKIT_WEB_VIEW(webkit_web_view_new());

    manager2 = webkit_web_view_get_user_content_manager (hiddenWebView);
    g_signal_connect (manager2, "script-message-received::channel",
                      G_CALLBACK (handle_script_message), NULL);
    webkit_user_content_manager_register_script_message_handler (manager2,
                                                                 "channel");

#define FIRST_MANUAL "texinfo"

    load_manual (FIRST_MANUAL);

    main_loop = g_main_loop_new (NULL, FALSE);
    g_main_loop_run (main_loop);

    exit (0);
}

static gboolean
key_press_cb (GtkWidget *widget,
            GdkEvent  *event,
            gpointer   user_data)
{
  GdkEventKey *k = (GdkEventKey *) event;

  if (k->type != GDK_KEY_PRESS)
    return TRUE;

  switch (k->keyval)
    {
    case GDK_KEY_q:
      g_main_loop_quit (main_loop);
      break;
    case GDK_KEY_n:
      if (next_link)
        webkit_web_view_load_uri (WEBKIT_WEB_VIEW(webView), next_link);
      break;
    case GDK_KEY_p:
      if (prev_link)
        webkit_web_view_load_uri (WEBKIT_WEB_VIEW(webView), prev_link);
      break;
    case GDK_KEY_u:
      if (up_link)
        webkit_web_view_load_uri (WEBKIT_WEB_VIEW(webView), up_link);
      break;
    case GDK_KEY_i:
      show_index ();
      break;
    default:
      return FALSE;
    }

  return TRUE;

}

