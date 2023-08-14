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

#include <config.h>

#ifdef ENABLE_NLS
#include <libintl.h>
#endif

#include <stdlib.h>
#include <stdarg.h>
#include <stdio.h>
#include <string.h>

#include "utils.h"
/* also for xvasprintf */
#include "text.h"
#include "debug.h"
#include "errors.h"

/* wrapper for asprintf */
int
xasprintf (char **ptr, const char *template, ...)
{
  va_list v;
  va_start (v, template);
  return xvasprintf (ptr, template, v);
}


/* these are not full line messages, but the part that are output along
   with debug messages, as is done in Texinfo::Register::line_warn/line_error
   called by the perl parser.  Here without using the gettext framework
   for the translations.
   FIXME could use prepare_error_line_message below, or be set earlier
*/
void
debug_error_warning_message (ERROR_MESSAGE *error_message)
{
  if (error_message->type == warning)
    fprintf (stderr, "warning: ");

  if (error_message->source_info.macro)
    fprintf (stderr, "%s (possibly involving @%s)\n",
             error_message->message, error_message->source_info.macro);
  else
    fprintf (stderr, "%s\n", error_message->message);
}

/* TODO
   in Perl, this is in the 'error_line' field of the structure somewhat
   equivalent with ERROR_MESSAGE.  Put it in ERROR_MESSAGE too?
   TODO
   first 3 translated in perl, see perl code
 */
char *
prepare_error_line_message (ERROR_MESSAGE *error_message)
{
  char *result;
  TEXT text;

  text_init (&text);
  text_append (&text, "");

  if (error_message->type == warning)
    {
      if (error_message->source_info.macro)
        text_printf (&text, "warning: %s (possibly involving @%s)\n",
          error_message->message, error_message->source_info.macro);
      else
        text_printf (&text, "warning: %s\n", error_message->message);
    }
  else
    {
      if (error_message->source_info.macro)
        text_printf (&text, "%s (possibly involving @%s)\n",
          error_message->message, error_message->source_info.macro);
      else
        text_printf (&text, "%s\n", error_message->message);
    }

  result = strdup (text.text);
  free (text.text);
  return result;
}

/* Current filename and line number.  Used for reporting. */
SOURCE_INFO current_source_info;

ERROR_MESSAGE *error_list = 0;
size_t error_number = 0;
static size_t error_space = 0;

static void
line_error_internal (enum error_type type, int continuation,
                     SOURCE_INFO *cmd_source_info,
                     char *format, va_list v)
{
  char *message;
#ifdef ENABLE_NLS
  xvasprintf (&message, gettext(format), v);
#else
  xvasprintf (&message, format, v);
#endif
  if (!message) fatal ("vasprintf failed");

  if (error_number == error_space)
    {
      error_list = realloc (error_list,
                            (error_space += 10) * sizeof (ERROR_MESSAGE));
    }
  error_list[error_number].message = message;
  error_list[error_number].type = type;
  error_list[error_number].continuation = continuation;

  if (cmd_source_info)
    {
      if (cmd_source_info->line_nr)
        error_list[error_number++].source_info = *cmd_source_info;
      else
        error_list[error_number++].source_info = current_source_info;
    }
  else
    error_list[error_number++].source_info = current_source_info;

  if (debug_output)
    debug_error_warning_message (&error_list[error_number -1]);
}

void
line_error_ext (enum error_type type, int continuation,
                SOURCE_INFO *cmd_source_info,
                char *format, ...)
{
  va_list v;

  va_start (v, format);
  line_error_internal (type, continuation, cmd_source_info, format, v);
}

void
line_error (char *format, ...)
{
  va_list v;

  va_start (v, format);
  line_error_internal (error, 0, 0, format, v);
}

void
line_warn (char *format, ...)
{
  va_list v;

  va_start (v, format);
  line_error_internal (warning, 0, 0, format, v);
}

void
command_warn (ELEMENT *e, char *format, ...)
{
  va_list v;

  va_start (v, format);
  line_error_internal (warning, 0, &e->source_info, format, v);
}

void
command_error (ELEMENT *e, char *format, ...)
{
  va_list v;

  va_start (v, format);
  line_error_internal (error, 0, &e->source_info, format, v);
}

void
wipe_errors (void)
{
  int i;
  for (i = 0; i < error_number; i++)
    free (error_list[i].message);
  error_number = 0;
}

void
forget_errors (void)
{
  error_number = 0;
  error_space = 0;
  error_list = 0;
}

static void
bug_message_internal (char *format, va_list v)
{
  fprintf (stderr, "You found a bug: ");
  vfprintf (stderr, format, v);
  fprintf (stderr, "\n");
  if (current_source_info.file_name)
    {
      fprintf (stderr,
               "last location %s:%d", current_source_info.file_name,
                                         current_source_info.line_nr);
      if (current_source_info.macro)
        fprintf (stderr, " (possibly involving @%s)", current_source_info.macro);
      fprintf (stderr, "\n");
    }
  exit (1);
}

void
bug_message (char *format, ...)
{
  va_list v;

  va_start (v, format);
  bug_message_internal (format, v);
}

