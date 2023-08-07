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

#include <libintl.h>

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <errno.h>
#include <gettext.h>

#include "api.h"
#include "utils.h"
#include "text.h"
#include "errors.h"
#include "translations.h"

#ifdef ENABLE_NLS
#endif

/*
my $DEFAULT_ENCODING = 'utf-8';
my $DEFAULT_PERL_ENCODING = 'utf-8';

my $messages_textdomain = 'texinfo';
*/

static char *working_locale = 0;
static char *locale_command = 0;

static char *strings_textdomain = "texinfo_document";

void
switch_messages_locale (void)
{
  char *locale;

  if (working_locale)
    locale = setlocale (LC_MESSAGES, working_locale);
  if (!locale)
    locale = setlocale (LC_MESSAGES, "en_US.UTF-8");
  if (!locale)
    locale = setlocale (LC_MESSAGES, "en_US");

  if (!locale && !locale_command)
    {
      FILE *p;
      locale_command = "locale -a";
      
      p = popen (locale_command, "r");
      if (p)
        {
          char *line = 0;
          size_t n = 0;
          ssize_t ret;

          while (1)
            {
              ret = getline (&line, &n, p);
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
              locale = setlocale (LC_MESSAGES, line);
              if (locale)
                {
                  free (line);
                  pclose (p);
                  break;
                }
            }
        }
    }
  if (locale)
    working_locale = strdup (locale);
}

char *
translate_string (char * string, const char *translation_context,
                  char *in_lang)
{
  char *lang = in_lang;
  char *saved_LANGUAGE;
  char *saved_LC_MESSAGES;
  char *encoding = 0;
  char *langs[2] = {0, 0};
  char *main_lang = 0;
  char *translated_string;
  char *p;
  static TEXT language_locales;
  int i;
/*
  $lang = $self->get_conf('documentlanguage') if ($self and !defined($lang));
 */
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

  /*  
  We need to set LC_MESSAGES to a valid locale other than "C" or "POSIX"
  for translation via LANGUAGE to work.  (The locale is "C" if the
  tests are being run.)
    LC_MESSAGES was reported not to exist for Perl on MS-Windows.  We
  could use LC_ALL instead, but (a) it's not clear if this would help,
  and (b) this could interfere with the LC_CTYPE setting in XSParagraph.
   */

  #ifndef _WIN32

  saved_LC_MESSAGES = setlocale(LC_MESSAGES, NULL);
  if (saved_LC_MESSAGES)
    saved_LC_MESSAGES = strdup (saved_LC_MESSAGES);
  switch_messages_locale ();

  #endif

  saved_LANGUAGE = getenv ("LANGUAGE");
  if (saved_LANGUAGE)
    saved_LANGUAGE = strdup (saved_LANGUAGE);

  textdomain (strings_textdomain);
  bind_textdomain_codeset (strings_textdomain, "utf-8");

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
  langs[0] = lang;
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
  text_append (&language_locales, "LANGUAGE=");
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
    }
  if (putenv (language_locales.text) != 0)
    {
      fprintf(stderr, "gdt: putenv `%s' error for string `%s': %s\n",
              language_locales.text, string, strerror(errno));
    }

  /* pgettext only works with string litterals, so use pgettext_expr */
  if (translation_context)
    translated_string = strdup (pgettext_expr (translation_context, string));
  else
    translated_string = strdup (gettext (string));

  /*
  fprintf (stderr, "TRANSLATED: '%s' '%s'\n", string, translated_string);
  */

  if (saved_LANGUAGE)
    {
      putenv (saved_LANGUAGE);
      free (saved_LANGUAGE);
    }
  else
    /* FIXME is this portable? */
    putenv ("LANGUAGE");

  free (language_locales.text);

  #ifndef _WIN32

  if (saved_LC_MESSAGES)
    {
      setlocale (LC_MESSAGES, saved_LC_MESSAGES);
      free (saved_LC_MESSAGES);
    }
  else
    setlocale (LC_MESSAGES, "");

  #endif

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
    return string;

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
replace_convert_substrings (char *translated_string,
                            NAMED_STRING_ELEMENT_LIST *replaced_substrings)
{
  int i;
  char *texinfo_line;

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

  if (replaced_substrings)
    texinfo_line = replace_substrings (translated_string,
                                             replaced_substrings);
  else
    texinfo_line = translated_string;

  /*
  fprintf(stderr, "INTERNAL V CMDS '%s' '%s'\n", translated_string,
                                                 texinfo_line);
   */ 
  

  for (i = 0; i < replaced_substrings->number; i++)
    {
      free (replaced_substrings->list[i].string);
    }
}

ELEMENT *
gdt (char *string, NAMED_STRING_ELEMENT_LIST *replaced_substrings,
     const char *translation_context, char *in_lang)
{
  char *translated_string = translate_string (string, translation_context,
                                              in_lang);

  ELEMENT *result
    = replace_convert_substrings (translated_string, replaced_substrings);
  free (translated_string);
  return result;
}

char *
gdt_string (char *string, NAMED_STRING_ELEMENT_LIST *replaced_substrings,
            const char *translation_context, char *in_lang)
{
  char *translated_string = translate_string (string, translation_context,
                                              in_lang);

  char *result = replace_substrings (translated_string, replaced_substrings);
  free (translated_string);
  return result;
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

/* arguments to be freed by the caller */
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

/* arguments to be freed by the caller */
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
