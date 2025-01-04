#define _GNU_SOURCE

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <dirent.h>
#include <sys/stat.h>

#include <gmodule.h>

#include "infopath.h"

void debug (int level, char *fmt, ...);

/* TODO: Also use the configure-time value of ${datarootdir}. */
char *default_path[] = { "/usr/share/texinfo/html",
                         "/usr/local/share/texinfo/html",
                         NULL };

static GArray *dirs;

static int initialized = 0;

void
init_infopath (void)
{
  initialized = 1;

  dirs = g_array_new (TRUE, TRUE, sizeof (char *));

  char **p;
  for (p = default_path; (*p); p++)
    {
      g_array_append_val (dirs, *p);
    }

  char *datadir = getenv ("INFO_HTML_DIR");
  if (datadir)
    {
      g_array_append_val (dirs, datadir);
    }
}

/* Return file name of the directory containing an HTML manual.*/
char *
locate_manual (const char *manual)
{
  if (!initialized)
    init_infopath ();

  int i;
  char *datadir;

  for (i = 0; (datadir = g_array_index (dirs, char *, i)); i++)
    {
      /* Check if datadir exists. */
      DIR *d = opendir (datadir);
      if (!d)
        continue;
      closedir (d);

      char *s = 0;
      asprintf(&s, "%s/%s", datadir, manual);
      debug (1, "CHECK %s\n", manual);

      struct stat dummy;
      if (stat (s, &dummy) != -1)
        return s;
      free (s);

      asprintf(&s, "%s/%s_html", datadir, manual);

      debug (1, "CHECK %s\n", s);

      if (stat (s, &dummy) != -1)
        return s;
      free (s);
    }
  return 0;
}

/* Extract the manual and node from a URL like "file:/.../MANUAL/NODE.html".  */
void
parse_external_url (const char *url, char **manual, char **node)
{
  char *m = 0, *n = 0;

  /* Find the second last / in the url. */
  char *p1 = 0, *p2 = 0;
  char *p, *q;

  p1 = strchr (url, '/');
  if (!p1)
    goto failure;
  p2 = strchr (p1 + 1, '/');
  if (!p2)
    goto failure;

  while (1)
    {
      /* p1 and p2 are two subsequent / in the string.  Try to move them
         both forward. */

      q = strchr (p2+1, '/');
      if (!q)
        break;

      p1 = p2;
      p2 = q;
    }

  p = p1 + 1;
  q = p2;

  m = malloc (q - p + 1);
  memcpy (m, p, q - p);
  m[q - p] = '\0';

  /* Strip a _html extension off the directory if there is one. */
  char *e;
  if ((e = strstr (m, "_html")))
    *e = '\0';

  *manual = m;

  q++; /* after '/' */

  /* remove .html file extension */
  p = strchr (q, '.');
  if (!p || memcmp (p, ".html", 5) != 0)
    goto failure;
  n = malloc (p - q + 1);
  memcpy (n, q, p - q);
  n[p - q] = '\0';

  *node = n;

  return;

failure:
  debug (1, "EXTRACT FAILED <%s>\n", url);
  free (m); free(n);
  *manual = 0;
  *node = 0;
  return;
}
