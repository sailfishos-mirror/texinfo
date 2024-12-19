/* teximakehtml.c -- simplistic conversion of Texinfo to HTML

   Copyright 2010-2024 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

#include <config.h>

#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <ctype.h>
#include <stdarg.h>
#include <sys/stat.h>
/* from Gnulib codeset.m4 */
#ifdef HAVE_LANGINFO_CODESET
#include <langinfo.h>
#endif
#include <locale.h>
#ifdef ENABLE_NLS
#include <libintl.h>
#endif
/* for pgettext and to have a definition of gettext in case ENABLE_NLS
   is not set */
#include "gettext.h"
#include <getopt.h>

#include "text.h"
#include "document_types.h"
#include "converter_types.h"
/* read_var_len */
#include "base_utils.h"
/* for xvasprintf */
#include "text.h"
/* parse_file_path whitespace_chars encode_string xasprintf */
#include "utils.h"
#include "customization_options.h"
/*
#include "convert_to_texinfo.h"
 */
#include "create_buttons.h"
/* destroy_converter_initialization_info */
#include "converter.h"
#include "texinfo.h"

#define LOCALEDIR DATADIR "/locale"

#define _(String) gettext (String)

static const char *expanded_formats[] = {"html", 0};
static VALUE values_array[] = {
  {"txicommandconditionals", "1"}
};
static const VALUE_LIST values = {1, 1, values_array};

static char *parser_EXPANDED_FORMATS_array[] = {"html"};
static STRING_LIST parser_EXPANDED_FORMATS
  = {parser_EXPANDED_FORMATS_array, 1, 1};

/* in demo mode, also expand @iftex for the sake of demonstration */
static char *demo_parser_EXPANDED_FORMATS_array[] = {"HTML", "tex"};
static STRING_LIST demo_parser_EXPANDED_FORMATS
  = {demo_parser_EXPANDED_FORMATS_array, 2, 2};

/* options common to parser and converter */
static OPTIONS_LIST program_options;
static OPTIONS_LIST cmdline_options;

static char *program_file;

/* Texinfo::Config */
static OPTION *
get_conf (size_t number)
{
  if (option_number_in_option_list (&cmdline_options, number))
    return cmdline_options.sorted_options[number -1];

  if (option_number_in_option_list (&program_options, number))
    return program_options.sorted_options[number -1];

  return 0;
}

static int
set_customization_default (const OPTION *option)
{
  if (option_number_in_option_list (&cmdline_options, option->number))
    return 0;

  options_list_add_option_number (&program_options, option->number);
  copy_option (program_options.sorted_options[option->number -1], option);
  return 1;
}

/* Texinfo::Config and texi2any */
static char *
decode_input (char *text)
{
  OPTION *option
    = get_conf (program_options.options->COMMAND_LINE_ENCODING.number);
  if (option && option->o.string)
    {
      int status;
      char *result = decode_string (text, option->o.string, &status, 0);
      return result;
    }
  else
    return strdup (text);
}

static char *
encode_message (char *text)
{
  OPTION *option
    = get_conf (program_options.options->MESSAGE_ENCODING.number);
  if (option && option->o.string)
    {
      int status;
      char *result = encode_string (text, option->o.string, &status, 0);
      return result;
    }
  else
    return strdup (text);
}

static void
document_warn (const char *format, ...)
{
  char *message;
  char *encoded_message;
  char *formatted_message;
  OPTION *option
    = get_conf (program_options.options->NO_WARN.number);

  if (option && option->o.integer > 0)
    return;

  va_list v;

  va_start (v, format);

#ifdef ENABLE_NLS
  xvasprintf (&message, gettext (format), v);
#else
  xvasprintf (&message, format, v);
#endif
  if (!message) fatal ("vasprintf failed");

  va_end (v);

#ifdef ENABLE_NLS
  xasprintf (&formatted_message,
          pgettext ("program name: warning: warning_message",
                    "%s: warning: %s"), program_file, message);
#else
  xasprintf (&formatted_message, "%s: warning: %s",
                              program_file, message);
#endif
  if (!formatted_message) fatal ("asprintf failed");

  encoded_message = encode_message (formatted_message);

  if (encoded_message)
    {
      fprintf (stderr, "%s\n", encoded_message);
      free (encoded_message);
    }
}

/* texi2any */
static void
add_config_paths (const char *env_string, const char *subdir,
                  /* unused in Perl
                  const STRING_LIST *default_base_dirs,
                   */
                  const char *installation_dir,
                  const DEPRECATED_DIRS_LIST *overriding_dirs,
                  STRING_LIST *result_dirs,
                  DEPRECATED_DIRS_LIST *deprecated_dirs)
{
  static STRING_LIST xdg_result_dirs;
  size_t i;
  /*
   read the env directories to avoid setting the overriding_dirs
   as deprecated if they are explicitely specified in the environnement
   variable.
   */
  const char *env_value = getenv (env_string);
  if (env_value && strlen (env_value))
    {
      char *text = strdup (env_value);
      char *dir = strtok (text, ":");

      while (dir)
        {
          if (strlen (dir))
            {
              add_include_directory (dir, &xdg_result_dirs);
            }
          dir = strtok (NULL, ":");
        }
      free (text);
    }

  if (installation_dir)
    {
      char *install_result_dir;
      xasprintf (&install_result_dir, "%s/%s", installation_dir, subdir);
      add_string (install_result_dir, result_dirs);
      if (overriding_dirs)
        {
          DEPRECATED_DIR_INFO *deprecated_dir_info
            = find_deprecated_dir_info (overriding_dirs, installation_dir);

          if (deprecated_dir_info)
            {
              char *deprecated_result_dir;
              xasprintf (&deprecated_result_dir, "%s/%s",
                         deprecated_dir_info->obsolete_dir, subdir);
              if (!find_string (&xdg_result_dirs,
                                deprecated_dir_info->obsolete_dir))
                {
                  add_new_deprecated_dir_info (deprecated_dirs,
                                   deprecated_dir_info->obsolete_dir,
                                   deprecated_dir_info->reference_dir);
                  add_string (deprecated_result_dir, result_dirs);
                }
              free (deprecated_result_dir);
            }
        }
      free (install_result_dir);
    }

  for (i = 0; i < xdg_result_dirs.number; i++)
    {
      char *dir = xdg_result_dirs.list[i];
      if (!find_string (result_dirs, dir))
        {
          char *result_dir;
          xasprintf (&result_dir, "%s/%s", dir, subdir);
          add_string (result_dir, result_dirs);
          free (result_dir);
        }
      free (dir);
    }

  xdg_result_dirs.number = 0;
}

#define XDG_SYSCONFDIR SYSCONFDIR "/xdg"

static DEPRECATED_DIR_INFO overriding_sysconfdir_info[1] = {
  {XDG_SYSCONFDIR, SYSCONFDIR} };
static const DEPRECATED_DIRS_LIST overriding_sysconfdir_list = {
  1, 1, overriding_sysconfdir_info };

static STRING_LIST *
set_subdir_directories (const char *subdir,
                        DEPRECATED_DIRS_LIST *deprecated_dirs)
{
  STRING_LIST *result = new_string_list ();
  STRING_LIST *config_dirs = new_string_list ();
  char *dir_string;
  char *xdg_config_home;

  xasprintf (&dir_string, ".%s", subdir);
  add_string (dir_string, result);
  free (dir_string);

  xdg_config_home = getenv ("XDG_CONFIG_HOME");
  if (xdg_config_home && strlen (xdg_config_home))
    {
      xasprintf (&dir_string, "%s/%s", xdg_config_home, subdir);
      add_string (dir_string, result);
      free (dir_string);
    }
  else
    {
      const char *home_dir = getenv ("HOME");
      if (home_dir)
        {
          char *deprecated_config_home;
          xasprintf (&dir_string, "%s/%s/%s", home_dir, ".config", subdir);
          xasprintf (&deprecated_config_home, "%s/.%s", home_dir, subdir);
          add_new_deprecated_dir_info (deprecated_dirs,
                                   deprecated_config_home, dir_string);
          add_string (dir_string, result);
          free (dir_string);
          add_string (deprecated_config_home, result);
          free (deprecated_config_home);
        }
    }

  add_config_paths ("XDG_CONFIG_DIRS", subdir, XDG_SYSCONFDIR,
                    &overriding_sysconfdir_list, config_dirs, deprecated_dirs);

  merge_strings (result, config_dirs);

  free (config_dirs->list);
  free (config_dirs);

  xasprintf (&dir_string, DATADIR "/%s", subdir);
  add_string (dir_string, result);
  free (dir_string);

  return result;
}

static void
set_from_cmdline (OPTIONS_LIST *options_list, OPTION *option,
                  const char *value)
{
  if (!strcmp (value, "undef"))
    clear_option (option);
  else if (option->type == GOT_integer)
    {
      char *endptr;
      long long_value = strtol (value, &endptr, 10);
      int int_value = (int) long_value;
      if (endptr != value && int_value >= 0)
        {
          option_set_conf (option, int_value, 0);
        }
      else
        {
          /* warn?  No such check in Perl */
        }
    }
  else if (option->type == GOT_char
           || option->type == GOT_bytes)
    {
      char *option_value;
      if (!value)
        option_value = strdup ("");
      else if (option->type == GOT_char)
        /* actually const, but constrained by protoypes */
        option_value = decode_input ((char *) value);
      else
        option_value = strdup (value);
      option_set_conf (option, 0, option_value);
      free (option_value);
    }
  options_list_add_option_number (options_list, option->number);
}

static void
get_cmdline_customization_option (OPTIONS_LIST *options_list,
                                  char *text)
{
  size_t identifier_len = read_var_len (text);
  if (identifier_len > 0)
    {
      char *option_name = strndup (text, identifier_len);
      OPTION *option = find_option_string (options_list->sorted_options,
                                           option_name);

      if (option)
        {
          char *p = text + identifier_len;
          p += strspn (p, whitespace_chars);
          if (*p == '=')
            {
              p++;
              p += strspn (p, whitespace_chars);
            }
          if (!strcasecmp (p, "undef"))
            {
              clear_option (option);
              options_list_add_option_number (options_list, option->number);
            }
          else
            {
              set_from_cmdline (options_list, option, p);
            }
        }
      else
        {
          document_warn("unknown variable from command line: %s",
                        option_name);
        }
      free (option_name);
    }
}

static void
push_include_directory (STRING_LIST *include_dirs_list, char *text)
{
  char *dir = strtok (text, PATH_SEP);

  while (dir)
    {
      if (strlen (dir))
        {
          add_include_directory (dir, include_dirs_list);
        }
      dir = strtok (NULL, PATH_SEP);
    }
}

/* Non-zero means demonstration mode */
static int demonstration_p;

/* Non-zero means mimick texi2any mode */
static int mimick_p;

/* If non-zero, show help and exit */
static int print_help_p;

#define DOCUMENT_LANGUAGE_OPT 2
#define NO_SPLIT_OPT 3
#define SPLIT_OPT 4
#define FOOTNOTE_STYLE_OPT 5

static struct option long_options[] = {
  /* next two not in texi2any */
  {"demonstration", 0, &demonstration_p, 1},
  {"mimick", 0, &mimick_p, 1},

  {"document-language", required_argument, 0, DOCUMENT_LANGUAGE_OPT},
  {"error-limit", required_argument, 0, 'e'},
  {"footnote-style", required_argument, 0, FOOTNOTE_STYLE_OPT},
  {"help", 0, &print_help_p, 'h'},
  {"out", required_argument, 0, 'o'},
  {"output", required_argument, 0, 'o'},
  {"no-split", 0, 0, NO_SPLIT_OPT},
  {"split", required_argument, 0, SPLIT_OPT},
  {"set-customization-variable", required_argument, 0, 'c'},
  {"version", 0, 0, 'V'},
  {NULL, 0, NULL, 0}
};

static const char *possible_split[] = {
  "chapter", "section", "node", NULL
};

int
main (int argc, char *argv[])
{
  int getopt_long_index;
  const char *locale_encoding = 0;
  const char *input_file_path;
  int status;
  char *program_file_name_and_directory[2];
  char *command_directory;
  BUTTON_SPECIFICATION_LIST *custom_node_footer_buttons;
  OPTIONS_LIST parser_options;
  OPTIONS_LIST convert_options;
  size_t errors_count = 0;
  size_t errors_nr;
  STRING_LIST *texinfo_language_config_dirs;
  STRING_LIST converter_texinfo_language_config_dirs;
  STRING_LIST include_dirs;
  CONVERTER_INITIALIZATION_INFO *format_defaults;
  DEPRECATED_DIRS_LIST deprecated_directories;
  const char *curdir = ".";
  char *top_srcdir;
  char *top_builddir;
  char *tp_builddir = 0;
  OPTION *test_option;
  OPTION *no_warn_option;
  int no_warn = 0;
  int test_mode_set = 0;
  size_t i;
  STRING_LIST input_files;

  /*
  const char *texinfo_text;
   */

  parse_file_path (argv[0], program_file_name_and_directory);
  program_file = program_file_name_and_directory[0];
  command_directory = program_file_name_and_directory[1];

  top_srcdir = getenv ("top_srcdir");
  if (top_srcdir)
    top_srcdir = strdup (top_srcdir);
  else
    /* equivalent to setting top_srcdir based on updirs in ModulePath.pm
       adapted to a program without any in-source version */
    top_srcdir = strdup ("../../..");

  top_builddir = getenv ("top_builddir");
  if (!top_builddir)
    /* this is correct for in-source builds only. */
    top_builddir = strdup (top_srcdir);
  else
    top_builddir = strdup (top_builddir);

  xasprintf (&tp_builddir, "%s/tp", top_builddir);

  free (top_builddir);

  txi_general_setup (1, 0, tp_builddir, top_srcdir);

  free (tp_builddir);
  free (top_srcdir);

  /* from Gnulib codeset.m4 */
#ifdef HAVE_LANGINFO_CODESET
  locale_encoding = nl_langinfo (CODESET);
#endif
  /*
  if (!defined($locale_encoding) and $^O eq 'MSWin32') {
    eval 'require Win32::API';
    if (!$@) {
      Win32::API::More->Import("kernel32", "int GetACP()");
      my $CP = GetACP();
      if (defined($CP)) {
        $locale_encoding = 'cp'.$CP;
      }
    }
  }
   */

  /* program_options corresponds to main_program_set_options in texi2any */
  txi_set_base_default_options (&program_options, locale_encoding,
                                program_file);

  /*
   if ($^O eq 'MSWin32') {
     $main_program_set_options->{'DOC_ENCODING_FOR_INPUT_FILE_NAME'} = 0;
   }
  */

  memset (&deprecated_directories, 0, sizeof (DEPRECATED_DIRS_LIST));

  texinfo_language_config_dirs
   = set_subdir_directories ("texinfo", &deprecated_directories);

  memset (&input_files, 0, sizeof (STRING_LIST));

  memset (&include_dirs, 0, sizeof (STRING_LIST));

  initialize_options_list (&cmdline_options);

  while (1)
    {
      int option_character;

      option_character = getopt_long (argc, argv, "Vhc:e:I:o:", long_options,
                                      &getopt_long_index);
      if (option_character == -1)
        break;

      switch (option_character)
        {
        case 'c':
          get_cmdline_customization_option (&cmdline_options, optarg);
          break;
        case 'e':
          set_from_cmdline(&cmdline_options,
                           &cmdline_options.options->ERROR_LIMIT,
                           optarg);
          break;
        case 'I':
          push_include_directory (&include_dirs, optarg);
          break;
        case 'h':
          print_help_p = 1;
          break;
        case 'V':
          {
            char *encoded_message;
            char *message
             = CONVERTER_CONFIG " (GNU texinfo) " PACKAGE_VERSION_CONFIG "\n\n";
            char *formatted_message;

            encoded_message = encode_message (message);
            printf ("%s", encoded_message);
            free (encoded_message);

            xasprintf (&formatted_message, _(
  "Copyright (C) %s Free Software Foundation, Inc.\nLicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>\nThis is free software: you are free to change and redistribute it.\nThere is NO WARRANTY, to the extent permitted by law."),
                       "2024");
            encoded_message = encode_message (formatted_message);
            free (formatted_message);
            printf ("%s\n", encoded_message);
            free (encoded_message);

            exit (EXIT_SUCCESS);
          }
          break;
        case DOCUMENT_LANGUAGE_OPT:
          set_from_cmdline(&cmdline_options,
                           &cmdline_options.options->documentlanguage,
                           optarg);
          break;
        case FOOTNOTE_STYLE_OPT:
          {
            /* actually const but constrained by prototypes */
            char *value = decode_input((char *) optarg);
            if (!strcmp (value, "end") || !strcmp (value, "separate"))
              {
                set_from_cmdline(&cmdline_options,
                                 &cmdline_options.options->footnotestyle,
                                 value);
              }
            else
              {
                char *formatted_message;
                char *encoded_message;

                xasprintf (&formatted_message,
        _("%s: --footnote-style arg must be `separate' or `end', not `%s'."),
                  program_file, value);
                encoded_message = encode_message (formatted_message);
                free (formatted_message);
                fprintf (stderr, "%s\n", encoded_message);
                free (encoded_message);
                exit (EXIT_FAILURE);
              }
            free (value);
          }
          break;
        case 'o':
          {
            OPTION *option = &cmdline_options.options->OUTFILE;
            /* actually const but constrained by prototypes */
            char *decoded_string = decode_input ((char *) optarg);
            if (strcmp (optarg, "-"))
              {
                size_t opt_len = strlen (optarg);
                struct stat finfo;

                if (optarg[opt_len -1] == '/'
                    || (stat (optarg, &finfo) == 0 && S_ISDIR (finfo.st_mode)))
                  {
                    set_from_cmdline (&cmdline_options, option, "undef");
                    option = &cmdline_options.options->SUBDIR;
                  }
              }
            set_from_cmdline (&cmdline_options, option, decoded_string);
            free (decoded_string);
          }
          break;
        case NO_SPLIT_OPT:
          set_from_cmdline (&cmdline_options,
                            &cmdline_options.options->SPLIT, "");
          set_from_cmdline (&cmdline_options,
                            &cmdline_options.options->SPLIT_SIZE, "undef");
          break;
        case SPLIT_OPT:
          {
            char *split = decode_input (optarg);
            size_t i;
            for (i = 0; possible_split[i]; i++)
              if (!strcmp (possible_split[i], optarg))
                break;
            if (!possible_split[i])
              {
                document_warn (_("%s is not a valid split possibility"),
                               split);
                free (split);
                split = strdup ("node");
              }
            set_from_cmdline (&cmdline_options,
                              &cmdline_options.options->SPLIT, split);
            free (split);
          }
          break;
          /*
        case '?':
          if (isprint (optopt))
            fprintf (stderr, "Unknown option `-%c'\n", optopt);
          else
            fprintf (stderr,
                     "Unknown option character `\\x%x'\n",
                     optopt);
          break;
           */
        default:
          exit (EXIT_FAILURE);
        }
    }

  if (print_help_p)
    {
      TEXT help_message;
      OPTION *error_limit_option
        = get_conf (program_options.options->ERROR_LIMIT.number);

      text_init (&help_message);
      text_printf (&help_message,
                   _("Usage: %s [OPTION]... TEXINFO-FILE..."), program_file);
      text_append_n (&help_message, "\n\n", 2);
      /* no added translations, reuse translations with they already exist */
      text_append (&help_message,
     "Translate Texinfo source documentation to various other formats.\n\n");
      text_append (&help_message, _("General options:"));
      text_append_n (&help_message, "\n", 1);
      text_append (&help_message,
   _("      --document-language=STR locale to use in translating Texinfo keywords\n                                for the output document (default C)."));
      text_append_n (&help_message, "\n", 1);
      text_printf (&help_message,
        _("      --error-limit=NUM       quit after NUM errors (default %d)."),
        error_limit_option->o.integer);
      text_append_n (&help_message, "\n", 1);
      text_append (&help_message,
        _("  -c, --set-customization-variable VAR=VAL  set customization variable VAR\n                                to value VAL."));
      text_append_n (&help_message, "\n\n", 2);

      text_append (&help_message, _("General output options:"));
      text_append_n (&help_message, "\n", 1);
      text_append (&help_message, _(
   "      --no-split              suppress any splitting of the output;\n                                generate only one output file."));
      text_append_n (&help_message, "\n", 1);
      text_append (&help_message, _(
   "  -o, --output=DEST           output to DEST.\n                                With split output, create DEST as a directory\n                                and put the output files there.\n                                With non-split output, if DEST is already\n                                a directory or ends with a /,\n                                put the output file there.\n                                Otherwise, DEST names the output file."));
      text_append_n (&help_message, "\n\n", 2);

      text_append (&help_message, _("Options for Info and plain text:"));
      text_append_n (&help_message, "\n", 1);
      text_append (&help_message,
   "      --footnote-style=STYLE  output footnotes in Info according to STYLE:\n                                `separate' to put them in their own node;\n                                `end' to put them at the end of the node, in\n                                which they are defined (this is the default).");
      text_append_n (&help_message, "\n\n", 2);

      text_append (&help_message, _("Options for HTML:"));
      text_append_n (&help_message, "\n", 1);
      text_append (&help_message,
   "      --split=SPLIT           split at SPLIT, where SPLIT may be `chapter',\n                                `section' or `node'.");
      text_append_n (&help_message, "\n\n", 2);

      text_append (&help_message, _("Input file options:"));
      text_append_n (&help_message, "\n", 1);
      text_append (&help_message,
        _(" -I DIR                       append DIR to the @include search path."));
      text_append_n (&help_message, "\n\n", 2);
      text_append (&help_message, _("Email bug reports to bug-texinfo@gnu.org,\ngeneral questions and discussion to help-texinfo@gnu.org.\nTexinfo home page: https://www.gnu.org/software/texinfo/"));
      text_append_n (&help_message, "\n", 1);

      fprintf (stderr, "%s", help_message.text);
      free (help_message.text);
      exit (EXIT_SUCCESS);
    }

  if (include_dirs.number > 0)
    {
      OPTION *option = &cmdline_options.options->INCLUDE_DIRECTORIES;
      options_list_add_option_number (&cmdline_options,
                                      option->number);
      merge_strings (option->o.strlist, &include_dirs);
      include_dirs.number = 0;
    }

  test_option = get_conf (program_options.options->TEST.number);
  if (test_option && test_option->o.integer > 0)
    test_mode_set = 1;

  no_warn_option = get_conf (program_options.options->NO_WARN.number);
  if (no_warn_option && no_warn_option->o.integer > 0)
    no_warn = 1;

  /* FIXME EXPANDED_FORMATS should probably be handled more like include_dirs */
  if (demonstration_p)
    {
      add_option_strlist_value (&program_options, "EXPANDED_FORMATS",
                                &demo_parser_EXPANDED_FORMATS);
    }
  else
    {
      add_option_strlist_value (&program_options, "EXPANDED_FORMATS",
                                &parser_EXPANDED_FORMATS);
    }

  if(test_mode_set)
    {
      add_option_value (&program_options, "PACKAGE_VERSION", 0, "");
      add_option_value (&program_options, "PACKAGE", 0, "texinfo");
      add_option_value (&program_options, "PACKAGE_NAME", 0, "GNU Texinfo");
      add_option_value (&program_options, "PACKAGE_AND_VERSION", 0,
                                          "texinfo");
      add_option_value (&program_options, "PACKAGE_URL", 0,
                                     "https://www.gnu.org/software/texinfo/");
      add_option_value (&program_options, "PROGRAM", 0, "texi2any");
    }

  txi_converter_output_format_setup ("html");

  /*
  For now, FORMAT_MENU is the only variable that can be set from converter
  defaults for the main program structuring and for the parser.
   */
  /*
   $cmdline_options is passed to have command line settings, here
   in practice TEXI2HTML set, for conversion to HTML to select
   possibly different customization variable values.
   */
  format_defaults = txi_converter_format_defaults ("html", &cmdline_options);

  if (format_defaults->conf.options->FORMAT_MENU.o.string != 0)
    {
      /*
      fprintf (stderr, "FORMAT_MENU %s\n",
           format_defaults->conf.options->FORMAT_MENU.o.string);
       */
      set_customization_default (
                           &format_defaults->conf.options->FORMAT_MENU);
    }

  destroy_converter_initialization_info (format_defaults);

  initialize_options_list (&parser_options);
  /* Copy relevant customization variables into the parser options. */
  for (i = 0; i < TXI_OPTIONS_NR; i++)
    {
      OPTION *parser_option = parser_options.sorted_options[i];
      if (parser_option->flags & OF_parser_option)
        {
          OPTION *option = get_conf (parser_option->number);
          if (option)
            {
              options_list_add_option_number (&parser_options,
                                              parser_option->number);
              copy_option (parser_option, option);
            }
        }
    }

  if (demonstration_p)
    {
      /* customize buttons.  It is a bit silly to use link buttons for
         footer, it is for the demonstration */
      custom_node_footer_buttons = new_base_links_buttons (0);
      add_new_button_option (&program_options,
                     "NODE_FOOTER_BUTTONS", custom_node_footer_buttons);
      add_option_value (&program_options, "PROGRAM_NAME_IN_FOOTER", 1, 0);
    }

  if (mimick_p)
    {
      /* mimick texi2any.pl, under the assumption that
         teximakehtml output will be compared to calls of in-source
         texi2any.pl */
      const char *configured_version = PACKAGE_VERSION_CONFIG "+dev";
      const char *configured_name_version
         = PACKAGE_NAME_CONFIG " " PACKAGE_VERSION_CONFIG "+dev";

      free (program_file);
      program_file = strdup ("texi2any");

      add_option_value (&program_options, "PROGRAM", 0, program_file);
      add_option_value (&program_options, "PACKAGE_VERSION", 0,
                        configured_version);
      add_option_value (&program_options, "PACKAGE_AND_VERSION", 0,
                        configured_name_version);
    }

  memset (&converter_texinfo_language_config_dirs, 0, sizeof (STRING_LIST));

  if (optind < argc)
    {
      int j;
      for (j = optind; j < argc; j++)
        add_string (argv[j], &input_files);
    }
  else if (!isatty (fileno (stdin)))
    {
      add_string ("-", &input_files);
    }
  else
    {
      char *formatted_message;
      char *encoded_message;

      xasprintf (&formatted_message, _("%s: missing file argument."),
                 program_file);
      encoded_message = encode_message (formatted_message);
      free (formatted_message);
      fprintf (stderr, "%s\n", encoded_message);
      free (encoded_message);

      xasprintf (&formatted_message,
                 _("Try `%s --help' for more information."),
                 program_file);
      encoded_message = encode_message (formatted_message);
      free (formatted_message);
      fprintf (stderr, "%s\n", encoded_message);
      free (encoded_message);
      exit (EXIT_FAILURE);
    }

  initialize_options_list (&convert_options);

  for (i = 0; i < input_files.number; i++)
    {
      DOCUMENT *document;
      CONVERTER *converter;
      char *result;
      char *input_file_name_and_directory[2];
      char *input_file_name;
      char *input_directory;

      input_file_path = input_files.list[i];

      parse_file_path (input_file_path, input_file_name_and_directory);
      input_file_name = input_file_name_and_directory[0];
      input_directory = input_file_name_and_directory[1];

      /* Texinfo file parsing */
      /* initialize parser */
      txi_parser (input_file_path, locale_encoding, expanded_formats,
                  &values, &parser_options);

      /* Texinfo document tree parsing */
      document = txi_parse_texi_file (input_file_path, &status);

      if (status)
        {
          txi_handle_parser_error_messages (document, no_warn, test_mode_set,
                                            locale_encoding);
          txi_document_remove (document);
          exit (EXIT_FAILURE);
        }

      errors_nr
        = txi_handle_parser_error_messages (document, no_warn, test_mode_set,
                                            locale_encoding);
      errors_count += errors_nr;

      /*
      texinfo_text = convert_to_texinfo (document->tree);
      fprintf (stderr, "%s", texinfo_text);
      free (texinfo_text);
       */


      /* structure and transformations */
      txi_complete_document (document,
                     STTF_relate_index_entries_to_table_items
                     | STTF_move_index_entries_after_items
                     | STTF_no_warn_non_empty_parts
                     | STTF_nodes_tree | STTF_floats
                     | STTF_setup_index_entries_sort_strings, 0);

      errors_nr
        = txi_handle_document_error_messages (document, no_warn,
                                              test_mode_set,
                                              locale_encoding);
      errors_count += errors_nr;


      /* conversion initialization */
      copy_options_list (&convert_options, &program_options);
      copy_options_list (&convert_options, &cmdline_options);

      add_string (curdir, &converter_texinfo_language_config_dirs);
      if (input_directory)
        {
          if (strcmp (curdir, input_directory))
            add_string (input_directory,
                        &converter_texinfo_language_config_dirs);
        free (input_directory);
      }

      copy_strings (&converter_texinfo_language_config_dirs,
                    texinfo_language_config_dirs);

      converter = txi_converter_setup ("html", "html",
                                   &converter_texinfo_language_config_dirs,
                                   &deprecated_directories,
                                   &convert_options);


      /* conversion */
      /* return value can be NULL in case of errors or an empty string, but
         not anything else as parse_file is used with a file */
      result = txi_converter_output (converter, document);
      free (result);

      errors_nr
        = txi_handle_converter_error_messages (converter, no_warn,
                                           test_mode_set, locale_encoding);
      errors_count += errors_nr;

      /* free after output */
      txi_converter_reset (converter);

      /* destroy converter */
      txi_converter_destroy (converter);
      /* destroy document */
      txi_document_remove (document);

      free (input_file_name);

      clear_strings_list (&converter_texinfo_language_config_dirs);
      clear_options_list (&convert_options);
    }

  free_strings_list (&converter_texinfo_language_config_dirs);
  free_options_list (&convert_options);

  free_strings_list (&input_files);

  free_options_list (&parser_options);
  free_strings_list (&include_dirs);
  free (program_file);

  free_options_list (&cmdline_options);
  free_options_list (&program_options);

  destroy_strings_list (texinfo_language_config_dirs);

  if (errors_count > 0)
    exit (EXIT_FAILURE);
}
