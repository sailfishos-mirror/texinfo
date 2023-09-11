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
#include <locale.h>
#include <gettext.h>
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

/* Current filename and line number.  Used for reporting. */
SOURCE_INFO current_source_info;

ERROR_MESSAGE_LIST error_messages_list;

static void
message_list_line_error_internal (ERROR_MESSAGE_LIST *error_messages,
                                  enum error_type type, int continuation,
                                  SOURCE_INFO *cmd_source_info,
                                  char *format, va_list v)
{
  char *message;
  TEXT error_line;
  ERROR_MESSAGE *error_message;

#ifdef ENABLE_NLS
  xvasprintf (&message, gettext(format), v);
#else
  xvasprintf (&message, format, v);
#endif
  if (!message) fatal ("vasprintf failed");

  if (error_messages->number == error_messages->space)
    {
      error_messages->list = realloc (error_messages->list,
         (error_messages->space += 10) * sizeof (ERROR_MESSAGE));
    }
  error_message = &error_messages->list[error_messages->number];
  error_message->message = message;
  error_message->type = type;
  error_message->continuation = continuation;

  if (cmd_source_info)
    {
      if (cmd_source_info->line_nr)
        error_message->source_info = *cmd_source_info;
      else
        error_message->source_info = current_source_info;
    }
  else
    error_message->source_info = current_source_info;

  text_init (&error_line);
  text_append (&error_line, "");
  if (error_message->source_info.macro)
    {
#ifdef ENABLE_NLS
      if (type == warning)
        {
          text_printf (&error_line,
                       pgettext ("Texinfo source file warning",
                                 "warning: %s (possibly involving @%s)"),
                       error_message->message, error_message->source_info.macro);
        }
      else
        {
          text_printf (&error_line,
                       pgettext ("Texinfo source file error in macro",
                                 "%s (possibly involving @%s)"),
                       error_message->message, error_message->source_info.macro);
        }
#else
      if (type == warning)
        text_printf (&error_line, "warning: %s (possibly involving @%s)",
                     error_message->message, error_message->source_info.macro);
      else
        text_printf (&error_line, "%s (possibly involving @%s)",
                     error_message->message, error_message->source_info.macro);
#endif
    }
  else
    {
      if (type == warning)
        {
#ifdef ENABLE_NLS
          text_printf (&error_line, pgettext ("Texinfo source file warning",
                                              "warning: %s"),
                       error_message->message);
#else
          text_printf (&error_line, "warning: %s",
                       error_message->message);
#endif
        }
      else
        text_printf (&error_line, "%s", error_message->message);
    }
  text_append (&error_line, "\n");

  error_message->error_line = error_line.text;

  if (debug_output)
    fprintf (stderr, error_message->error_line);

  error_messages->number++;
}

static void
line_error_internal (enum error_type type, int continuation,
                     SOURCE_INFO *cmd_source_info,
                     char *format, va_list v)
{
  message_list_line_error_internal (&error_messages_list,
                      type, continuation, cmd_source_info,
                      format, v);
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
message_list_command_warn (ERROR_MESSAGE_LIST *error_messages,
                           ELEMENT *e, char *format, ...)
{
  va_list v;

  va_start (v, format);
  message_list_line_error_internal (error_messages, warning, 0,
                                    &e->source_info, format, v);
}

void
command_error (ELEMENT *e, char *format, ...)
{
  va_list v;

  va_start (v, format);
  line_error_internal (error, 0, &e->source_info, format, v);
}

void
message_list_command_error (ERROR_MESSAGE_LIST *error_messages,
                            ELEMENT *e, char *format, ...)
{
  va_list v;

  va_start (v, format);
  message_list_line_error_internal (error_messages, error, 0, &e->source_info,
                                    format, v);
}

void
wipe_errors (void)
{
  wipe_error_message_list (&error_messages_list);
}

void
wipe_error_message_list (ERROR_MESSAGE_LIST *error_messages)
{
  int j;
  for (j = 0; j < error_messages->number; j++)
    {
      free (error_messages->list[j].message);
      free (error_messages->list[j].error_line);
    }
  free (error_messages->list);
  memset (error_messages, 0, sizeof (ERROR_MESSAGE_LIST));
}

void
forget_errors (void)
{
  memset (&error_messages_list, 0, sizeof (ERROR_MESSAGE_LIST));
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

