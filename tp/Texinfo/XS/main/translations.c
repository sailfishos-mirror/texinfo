/* Copyright 2010-2023 Free Software Foundation, Inc.
          
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>. */

/* In sync with Texinfo::Translations */
    
#include <config.h>

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <errno.h>

#ifdef ENABLE_NLS
#include <gettext.h>
#include <libintl.h>
#endif

#include "options_types.h"
#include "tree_types.h"
#include "command_ids.h"
#include "text.h"
#include "utils.h"
#include "tree.h"
#include "errors.h"
#include "debug.h"
#include "api.h"
#include "document.h"
#include "convert_to_texinfo.h"
#include "api_to_perl.h"
#include "translations.h"

/*
my $DEFAULT_ENCODING = 'utf-8';
my $DEFAULT_PERL_ENCODING = 'utf-8';

my $messages_textdomain = 'texinfo';
*/

static char *working_locale = 0;
static char *locale_command = 0;

static char *strings_textdomain = "texinfo_document";

void
configure (char *localesdir, char *strings_textdomain_in)
{
  char *textdomain_directory;
  if (strings_textdomain_in)
    strings_textdomain = strings_textdomain_in;

  #ifdef ENABLE_NLS
  /* FIXME error out if failure?
     if failure bindtextdomain sets errno to ENOMEM and returns NULL */
  textdomain_directory = bindtextdomain (strings_textdomain, localesdir);
  #endif
}

void
switch_messages_locale (void)
{
  char *locale = 0;
  int setenv_status = 1;

  if (working_locale)
    {
      setenv_status = setenv ("LANG", working_locale, 1);
      locale = setlocale (LC_MESSAGES, working_locale);
    }
  if (!locale || setenv_status)
    {
      setenv_status = setenv ("LANG", "en_US.UTF-8", 1);
      locale = setlocale (LC_MESSAGES, "en_US.UTF-8");
    }
  if (!locale || setenv_status)
    {
      setenv_status = setenv ("LANG", "en_US", 1);
      locale = setlocale (LC_MESSAGES, "en_US");
    }
  if ((!locale || setenv_status) && !locale_command)
    {
      FILE *p;
      locale_command = "locale -a";
      
      p = popen (locale_command, "r");
      if (p)
        {
          size_t n = 0;

          while (1)
            {
              char *line = 0;
              ssize_t ret = getline (&line, &n, p);
              if (ret == (ssize_t) -1)
                {
                  free (line);
                  pclose (p);
                  break;
                }
              line[ret - 1] = '\0';   /* Remove trailing newline. */
              if (strcmp (line, "C") == 0 || strcmp (line, "POSIX") == 0)
                {
                  free (line);
                  continue;
                }
              setenv_status = setenv ("LANG", line, 1);
              locale = setlocale (LC_MESSAGES, line);
              if (locale && !setenv_status)
                {
                  free (line);
                  pclose (p);
                  break;
                }
            }
        }
    }
  /* check that the locale set is not "C"/"POSIX" as we want to set
     to other locales for LANGUAGE.  The locale returned by setlocale
     can be these one of these locales even if the locale passed
     in argument is not */
  if (locale && strcmp (locale, "C") && strcmp (locale, "POSIX"))
    {
      /*
      char *current_lang = getenv ("LANG");
      fprintf (stderr, "SETTING (%d) LANG '%s' locale %s '%s'\n",
               setenv_status, current_lang, locale, working_locale);
      if (strcmp (current_lang, locale))
        {
          fprintf (stderr, "LANG %s != locale %s\n", current_lang, locale);
        }
      */
      free (working_locale);
      working_locale = strdup (locale);
    }
}

char *
translate_string (OPTIONS *options, const char * string,
                  const char *translation_context, const char *in_lang)
{
  const char *lang = in_lang;
  char *saved_LANGUAGE;
  char *saved_LANG;
  char *saved_LC_MESSAGES;
  char *encoding = 0;
  char *langs[2] = {0, 0};
  char *main_lang = 0;
  char *translated_string;
  char *p;
  static TEXT language_locales;
  int i;

  if ((!lang) && options && options->documentlanguage)
    lang = options->documentlanguage;
  if (!lang)
    lang = "en";

  if (strlen (lang) == 0)
    {
      fprintf (stderr, "For string '%s'\n", string);
      bug ("BUG: defined but empty documentlanguage\n");
      lang = "en";
    }

  #ifndef ENABLE_NLS
  
  translated_string = strdup (string);

  #else

  /* if a code calls setlocale and accesses global locale while perl
     uses per thread locale, the result is unpredictable.  So we switch to
     global locales as we use setlocale */
  call_switch_to_global_locale ();

  /*  
  We need to set LC_MESSAGES to a valid locale other than "C" or "POSIX"
  for translation via LANGUAGE to work.  (The locale is "C" if the
  tests are being run.)
    LC_MESSAGES was reported not to exist for Perl on MS-Windows.  We
  could use LC_ALL instead, but (a) it's not clear if this would help,
  and (b) this could interfere with the LC_CTYPE setting in XSParagraph.
   */

  #ifndef _WIN32
  /* In
   https://www.gnu.org/software/gettext/manual/html_node/The-LANGUAGE-variable.html
    Note: The variable LANGUAGE is ignored if the locale is set to ‘C’. In
    other words, you have to first enable localization, by setting LANG (or
    LC_ALL) to a value other than ‘C’, before you can use a language priority
    list through the LANGUAGE variable.

   We set LANG and then LC_MESSAGES to a valid locale in
   switch_messages_locale to have LANGUAGE work in that case.
   FIXME it does not work.  Also tested with setting LC_ALL instead of
         LC_MESSAGES and it does not work either
   */

  saved_LANG = getenv ("LANG");

  if (saved_LANG)
    {
      saved_LANG = strdup (saved_LANG);
    }

  saved_LC_MESSAGES = setlocale(LC_MESSAGES, NULL);

  if (saved_LC_MESSAGES)
    saved_LC_MESSAGES = strdup (saved_LC_MESSAGES);

  switch_messages_locale ();

  #endif

  saved_LANGUAGE = getenv ("LANGUAGE");

  if (saved_LANGUAGE)
    {
      saved_LANGUAGE = strdup (saved_LANGUAGE);
    }

  textdomain (strings_textdomain);
  bind_textdomain_codeset (strings_textdomain, "utf-8");

  /*
   {
     char *bindtextdomain_dir;
     char *current_textdomain;
     current_textdomain = textdomain (NULL);
     bindtextdomain_dir = bindtextdomain (current_textdomain, NULL);
     fprintf (stderr, "DOMAIN %s '%s'\n", current_textdomain,
                                         bindtextdomain_dir);
   }
   */

/*
  if ($self) {
    # NOTE the following customization variables are not set for
    # a Parser, so the encoding will be undef when gdt is called from
    # parsers.
    if ($self->get_conf('OUTPUT_ENCODING_NAME')) {
      $encoding = $self->get_conf('OUTPUT_ENCODING_NAME');
    }
    #if (defined($self->get_conf('OUTPUT_PERL_ENCODING'))) {
    #  $perl_encoding = $self->get_conf('OUTPUT_PERL_ENCODING');
    #}
  } else {
    # NOTE never happens in the tests, unlikely to happen at all.
    $encoding = $DEFAULT_ENCODING;
    #$perl_encoding = $DEFAULT_PERL_ENCODING;
  }
 */
  langs[0] = strdup (lang);
  p = strchr (lang, '_');
  if (p && p - lang > 0)
    {
      char *q = p;
      while (isascii_lower (*q))
        q++;
      if (q == p)
        {
          q++;
          while (isascii_upper (*q))
            q++;
          if (q - (p + 1) > 0)
            {
              main_lang = strndup (lang, p - lang);
            }
        }
    }
  if (main_lang)
    langs[1] = main_lang;

  text_init (&language_locales);

  for (i = 0; i < 2; i++)
    {
      if (!langs[i])
        continue;
      if (i > 0)
        text_append_n (&language_locales, ":", 1);
      text_append (&language_locales, langs[i]);
      if (encoding)
        {
          text_append_n (&language_locales, ".", 1);
          text_append (&language_locales, encoding);
        }
    /*
      also try us-ascii, the charset should be compatible with other
      charset, and should resort to @-commands if needed for non
      ascii characters
      REMARK this is not necessarily true for every language/encoding.
      This can be true for latin1, and maybe some other 8 bit encodings
      with accents available as @-commands, but not for most
      language.  However, for those languages, it is unlikely that
      the locale with .us-ascii are set, so it should not hurt
      to add this possibility.
     */
      if (!encoding || !strcmp (encoding, "us-ascii"))
        {
          text_append_n (&language_locales, ":", 1);
          text_append (&language_locales, langs[i]);
          text_append_n (&language_locales, ".", 1);
          text_append (&language_locales, "us-ascii");
        }
      free (langs[i]);
    }
  if (setenv ("LANGUAGE", language_locales.text, 1) != 0)
    {
      fprintf (stderr, "gdt: setenv `%s' error for string `%s': %s\n",
              language_locales.text, string, strerror(errno));
    }

  /* pgettext only works with string litterals, so use pgettext_expr */
  if (translation_context)
    translated_string = strdup (pgettext_expr (translation_context, string));
  else
    translated_string = strdup (gettext (string));

  /*
  fprintf (stderr, "TRANSLATED(%s): '%s' (%s) '%s'\n", language_locales.text,
                               string, translation_context, translated_string);

  */

  if (saved_LANGUAGE)
    {
      setenv ("LANGUAGE", saved_LANGUAGE, 1);
      free (saved_LANGUAGE);
    }
  else
    unsetenv ("LANGUAGE");

  free (language_locales.text);

  #ifndef _WIN32

  if (saved_LANG)
    {
      setenv ("LANG", saved_LANG, 1);
      free (saved_LANG);
    }
  else
    unsetenv ("LANG");

  if (saved_LC_MESSAGES)
    {
      setlocale (LC_MESSAGES, saved_LC_MESSAGES);
      free (saved_LC_MESSAGES);
    }
  else
    setlocale (LC_MESSAGES, "");

  #endif

  call_sync_locale ();

  #endif

  return translated_string;
}

char *
replace_substrings (char *string,
                    NAMED_STRING_ELEMENT_LIST *replaced_substrings)
{
  char *p = string;
  TEXT substituted;

  if (!replaced_substrings)
    return strdup (string);

  text_init (&substituted);
  text_append (&substituted, "");  

  while (*p)
    {
      char *q = strchr (p, '{');
      if (q)
        {
          int found = 0;
          char *flag;

          if (q - p)
            text_append_n (&substituted, p, q - p);

          p = q;
          /* past { */
          q++;
          flag = read_flag_name (&q);
          if (flag)
            {
              if (*q == '}')
                {
                  int i;
                  /* past } */
                  q++;
                  for (i = 0; i < replaced_substrings->number; i++)
                    {
                      if (!strcmp (replaced_substrings->list[i].name,
                                   flag))
                        {
                          text_append (&substituted,
                                     replaced_substrings->list[i].string);     
                          found = 1;
                          break;
                        }
                    }
                }
              free (flag);
            }
          if (!found)
            text_append_n (&substituted, p, q - p);
          p = q;
        }
      else
        {
          text_append (&substituted, p);
          break;
        }
    }
  return substituted.text;
}

ELEMENT *
substitute (ELEMENT *tree, NAMED_STRING_ELEMENT_LIST *replaced_substrings);

void
substitute_element_array (ELEMENT_LIST *list,
                          NAMED_STRING_ELEMENT_LIST *replaced_substrings)
{
  int idx = 0;

  for (; idx < list->number; idx++)
    {
      ELEMENT *e = list->list[idx];
      if (e->cmd == CM_txiinternalvalue)
        {
          char *name = e->args.list[0]->contents.list[0]->text.text;
          int i;
          for (i = 0; i < replaced_substrings->number; i++)
            {
              if (!strcmp (name, replaced_substrings->list[i].name))
                {
                  list->list[idx] = replaced_substrings->list[i].element;
                  destroy_element_and_children (e);
                  break;
                }
            }
        }
      else
        substitute (e, replaced_substrings);
    }
}

ELEMENT *
substitute (ELEMENT *tree, NAMED_STRING_ELEMENT_LIST *replaced_substrings)
{
  if (tree->contents.number > 0)
    substitute_element_array (&tree->contents, replaced_substrings);
  if (tree->args.number > 0)
    substitute_element_array (&tree->args, replaced_substrings);

  return tree;
}

/* the caller should have made sure that the
   inserted elements do not appear elsewhere in the tree. */
int
replace_convert_substrings (char *translated_string,
                            NAMED_STRING_ELEMENT_LIST *replaced_substrings)
{
  int i;
  char *texinfo_line;
  int document_descriptor;
  DOCUMENT *document;

  if (replaced_substrings)
    {
    /* setup the strings to be replaced using the input replaced_substrings
       structure, which should only contain elements */
      for (i = 0; i < replaced_substrings->number; i++)
        {
          TEXT text;
          text_init (&text);
          text_append (&text, "@txiinternalvalue{");
          text_append (&text, replaced_substrings->list[i].name);
          text_append (&text, "}");
          replaced_substrings->list[i].string = strdup (text.text);
          free (text.text);
        }

      texinfo_line = replace_substrings (translated_string,
                                         replaced_substrings);

      for (i = 0; i < replaced_substrings->number; i++)
        free (replaced_substrings->list[i].string);
    }
  else
    texinfo_line = translated_string;

  /*
  fprintf(stderr, "INTERNAL V CMDS '%s' '%s'\n", translated_string,
                                                 texinfo_line);
   */ 
  /* FIXME different from Perl case, as in perl case, a parser is
     setup, which means a full reset of configuration, here would
     correspond to a call of reset_parser */
  /*
   accept @txiinternalvalue as a valid Texinfo command, used to mark
   location in tree of substituted brace enclosed strings.
   */
  parser_set_accept_internalvalue (1);

  /* FIXME implement setting configuration.  This may not be needed when
     called from a parser without reset_parser being called, but would be
     when called from a converter */
  /*
  # general customization relevant for parser
  if ($customization_information) {
    foreach my $conf_variable ('DEBUG') {
      if (defined($customization_information->get_conf($conf_variable))) {
        $parser_conf->{$conf_variable}
          = $customization_information->get_conf($conf_variable);
      }
    }
  }
   */
  document_descriptor = parse_string (texinfo_line, 1);

  debug ("IN TR PARSER '%s'", texinfo_line);

  if (error_messages_list.number > 0)
    {
      fprintf (stderr, "translation %zu error(s)\n",
               error_messages_list.number);
      fprintf (stderr, "translated string: %s\n", translated_string);
      fprintf (stderr, "Error messages: \n");
      for (i = 0; i < error_messages_list.number; i++)
        fprintf (stderr, "%s", error_messages_list.list[i].error_line);
    }
  clear_document_errors (document_descriptor);

  parser_set_accept_internalvalue (0);

  document = retrieve_document (document_descriptor);
  if (replaced_substrings)
    {
      ELEMENT *result_tree = substitute (document->tree, replaced_substrings);
      document->tree = result_tree;
      free (texinfo_line);
    }


  debug("XS|RESULT GDT %d: '%s'\n", document_descriptor,
                                          convert_to_texinfo (document->tree));
/*
*/

  return document_descriptor;
}

/* returns a document descriptor. */
int
gdt (const char *string, OPTIONS *options,
     NAMED_STRING_ELEMENT_LIST *replaced_substrings,
     const char *translation_context, const char *in_lang)
{
  char *translated_string = translate_string (options, string,
                                              translation_context,
                                              in_lang);

  int document_descriptor
    = replace_convert_substrings (translated_string, replaced_substrings);
  free (translated_string);
  return document_descriptor;
}

/* Return a tree translated by gdt.  The document associated to the tree is
   removed and the small strings associated to the tree are merged with
   DOCUMENT small strings.  It is possible to pass 0 for the DOCUMENT
   if one knows that there won't be small strings (the general case) */
ELEMENT *
gdt_tree (const char *string, DOCUMENT *document, OPTIONS *options,
          NAMED_STRING_ELEMENT_LIST *replaced_substrings,
          const char *translation_context,
          const char *in_lang)
{
  ELEMENT *tree;
  int gdt_document_descriptor = gdt (string, options, replaced_substrings,
                                     translation_context, in_lang);
  TREE_AND_STRINGS *tree_and_strings
     = unregister_document_descriptor_tree (gdt_document_descriptor);

  tree = tree_and_strings->tree;

  if (tree_and_strings->small_strings)
    {
      /* this is very unlikely, as small strings correspond to file names and
         macro names, while we are parsing a simple string */
      if (tree_and_strings->small_strings->number)
        {
          if (document)
            merge_strings (document->small_strings,
                           tree_and_strings->small_strings);
          else
            fatal ("gdt_tree no document but small_strings");
        }
      free (tree_and_strings->small_strings->list);
      free (tree_and_strings->small_strings);
    }
  free (tree_and_strings);

  return tree;
}

char *
gdt_string (const char *string, OPTIONS *options,
            NAMED_STRING_ELEMENT_LIST *replaced_substrings,
            const char *translation_context, const char *in_lang)
{
  char *translated_string = translate_string (options, string,
                                              translation_context,
                                              in_lang);

  char *result = replace_substrings (translated_string, replaced_substrings);
  free (translated_string);
  return result;
}

ELEMENT *
pgdt_tree (const char *translation_context, const char *string,
           DOCUMENT *document, OPTIONS *options,
           NAMED_STRING_ELEMENT_LIST *replaced_substrings,
           const char *in_lang)
{
  return gdt_tree (string, document, options, replaced_substrings,
                   translation_context, in_lang);
}

NAMED_STRING_ELEMENT_LIST *
new_named_string_element_list (void)
{
  NAMED_STRING_ELEMENT_LIST *result
    = malloc (sizeof (NAMED_STRING_ELEMENT_LIST));
  result->number = 0;
  result->space = 0;
  result->list = 0;

  return result;
}

void
reallocate_named_string_element_list (NAMED_STRING_ELEMENT_LIST *nsel)
{
  if (nsel->number >= nsel->space)
    {
      nsel->space += 1;
      nsel->list = realloc (nsel->list,
                            nsel->space * sizeof (NAMED_STRING_ELEMENT));
      if (!nsel->list)
        fatal ("realloc failed");
    }
}

/* arguments to be freed by the caller, even name as it is a constant
   string in general */
void
add_string_to_named_string_element_list (NAMED_STRING_ELEMENT_LIST *nsel,
                                         char *name, char *string)
{
  NAMED_STRING_ELEMENT *new_string;

  reallocate_named_string_element_list (nsel);
  new_string = &nsel->list[nsel->number];
  new_string->element = 0;
  new_string->name = name;
  new_string->string = string;
  nsel->number++;
}

/* arguments to be freed by the caller, even name as it is a constant
   string in general */
void
add_element_to_named_string_element_list (NAMED_STRING_ELEMENT_LIST *nsel,
                                          char *name, ELEMENT *element)
{
  NAMED_STRING_ELEMENT *new_element;

  reallocate_named_string_element_list (nsel);
  new_element = &nsel->list[nsel->number];
  new_element->element = element;
  new_element->name = name;
  new_element->string = 0;
  nsel->number++;
}

void
destroy_named_string_element_list (NAMED_STRING_ELEMENT_LIST *nsel)
{
  if (nsel->space > 0)
    free (nsel->list);
  free (nsel);
}
