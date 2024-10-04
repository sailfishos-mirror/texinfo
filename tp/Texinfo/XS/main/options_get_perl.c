/* Automatically generated from regenerate_C_options_info.pl */


/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#undef context

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */

#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "options_types.h"
#include "converter_types.h"
#include "utils.h"
#include "get_perl_info.h"
#include "build_perl_info.h"

int
get_options_key_sv_option (OPTIONS *options, const char *key, SV *value, int force, const CONVERTER *converter)
{
  dTHX;

  if (0) {}

/* array_cmdline */

  else if (!strcmp (key, "CSS_FILES"))
    {
      if (force <= 0 && options->CSS_FILES.configured > 0)
        return -1;

      clear_strings_list (options->CSS_FILES.o.strlist);
      add_svav_to_string_list (value, options->CSS_FILES.o.strlist, svt_byte);
    }
  else if (!strcmp (key, "CSS_REFS"))
    {
      if (force <= 0 && options->CSS_REFS.configured > 0)
        return -1;

      clear_strings_list (options->CSS_REFS.o.strlist);
      add_svav_to_string_list (value, options->CSS_REFS.o.strlist, svt_char);
    }
  else if (!strcmp (key, "EXPANDED_FORMATS"))
    {
      if (force <= 0 && options->EXPANDED_FORMATS.configured > 0)
        return -1;

      clear_strings_list (options->EXPANDED_FORMATS.o.strlist);
      add_svav_to_string_list (value, options->EXPANDED_FORMATS.o.strlist, svt_byte);
    }
  else if (!strcmp (key, "INCLUDE_DIRECTORIES"))
    {
      if (force <= 0 && options->INCLUDE_DIRECTORIES.configured > 0)
        return -1;

      clear_strings_list (options->INCLUDE_DIRECTORIES.o.strlist);
      add_svav_to_string_list (value, options->INCLUDE_DIRECTORIES.o.strlist, svt_dir);
    }
  else if (!strcmp (key, "TEXINFO_LANGUAGE_DIRECTORIES"))
    {
      if (force <= 0 && options->TEXINFO_LANGUAGE_DIRECTORIES.configured > 0)
        return -1;

      clear_strings_list (options->TEXINFO_LANGUAGE_DIRECTORIES.o.strlist);
      add_svav_to_string_list (value, options->TEXINFO_LANGUAGE_DIRECTORIES.o.strlist, svt_dir);
    }

/* converter_cmdline */

  else if (!strcmp (key, "SPLIT_SIZE"))
    {
      if (force <= 0 && options->SPLIT_SIZE.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->SPLIT_SIZE.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "SPLIT_SIZE", SvPVutf8_nolen (value));
              options->SPLIT_SIZE.o.integer = -1;
              return -3;
            }
        }
      else
        options->SPLIT_SIZE.o.integer = -1;
    }
  else if (!strcmp (key, "FILLCOLUMN"))
    {
      if (force <= 0 && options->FILLCOLUMN.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->FILLCOLUMN.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "FILLCOLUMN", SvPVutf8_nolen (value));
              options->FILLCOLUMN.o.integer = -1;
              return -3;
            }
        }
      else
        options->FILLCOLUMN.o.integer = -1;
    }
  else if (!strcmp (key, "NUMBER_SECTIONS"))
    {
      if (force <= 0 && options->NUMBER_SECTIONS.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->NUMBER_SECTIONS.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "NUMBER_SECTIONS", SvPVutf8_nolen (value));
              options->NUMBER_SECTIONS.o.integer = -1;
              return -3;
            }
        }
      else
        options->NUMBER_SECTIONS.o.integer = -1;
    }
  else if (!strcmp (key, "NUMBER_FOOTNOTES"))
    {
      if (force <= 0 && options->NUMBER_FOOTNOTES.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->NUMBER_FOOTNOTES.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "NUMBER_FOOTNOTES", SvPVutf8_nolen (value));
              options->NUMBER_FOOTNOTES.o.integer = -1;
              return -3;
            }
        }
      else
        options->NUMBER_FOOTNOTES.o.integer = -1;
    }
  else if (!strcmp (key, "TRANSLITERATE_FILE_NAMES"))
    {
      if (force <= 0 && options->TRANSLITERATE_FILE_NAMES.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->TRANSLITERATE_FILE_NAMES.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "TRANSLITERATE_FILE_NAMES", SvPVutf8_nolen (value));
              options->TRANSLITERATE_FILE_NAMES.o.integer = -1;
              return -3;
            }
        }
      else
        options->TRANSLITERATE_FILE_NAMES.o.integer = -1;
    }
  else if (!strcmp (key, "SPLIT"))
    {
      if (force <= 0 && options->SPLIT.configured > 0)
        return -1;

      non_perl_free (options->SPLIT.o.string);
      if (SvOK (value))
        options->SPLIT.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->SPLIT.o.string = 0;
    }
  else if (!strcmp (key, "HEADERS"))
    {
      if (force <= 0 && options->HEADERS.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->HEADERS.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "HEADERS", SvPVutf8_nolen (value));
              options->HEADERS.o.integer = -1;
              return -3;
            }
        }
      else
        options->HEADERS.o.integer = -1;
    }
  else if (!strcmp (key, "NODE_FILES"))
    {
      if (force <= 0 && options->NODE_FILES.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->NODE_FILES.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "NODE_FILES", SvPVutf8_nolen (value));
              options->NODE_FILES.o.integer = -1;
              return -3;
            }
        }
      else
        options->NODE_FILES.o.integer = -1;
    }
  else if (!strcmp (key, "VERBOSE"))
    {
      if (force <= 0 && options->VERBOSE.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->VERBOSE.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "VERBOSE", SvPVutf8_nolen (value));
              options->VERBOSE.o.integer = -1;
              return -3;
            }
        }
      else
        options->VERBOSE.o.integer = -1;
    }
  else if (!strcmp (key, "OUTFILE"))
    {
      if (force <= 0 && options->OUTFILE.configured > 0)
        return -1;

      non_perl_free (options->OUTFILE.o.string);
      if (SvOK (value))
        options->OUTFILE.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->OUTFILE.o.string = 0;
    }
  else if (!strcmp (key, "SUBDIR"))
    {
      if (force <= 0 && options->SUBDIR.configured > 0)
        return -1;

      non_perl_free (options->SUBDIR.o.string);
      if (SvOK (value))
        options->SUBDIR.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->SUBDIR.o.string = 0;
    }
  else if (!strcmp (key, "ENABLE_ENCODING"))
    {
      if (force <= 0 && options->ENABLE_ENCODING.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->ENABLE_ENCODING.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "ENABLE_ENCODING", SvPVutf8_nolen (value));
              options->ENABLE_ENCODING.o.integer = -1;
              return -3;
            }
        }
      else
        options->ENABLE_ENCODING.o.integer = -1;
    }

/* converter_customization */

  else if (!strcmp (key, "TOP_NODE_UP"))
    {
      if (force <= 0 && options->TOP_NODE_UP.configured > 0)
        return -1;

      non_perl_free (options->TOP_NODE_UP.o.string);
      if (SvOK (value))
        options->TOP_NODE_UP.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->TOP_NODE_UP.o.string = 0;
    }
  else if (!strcmp (key, "BASEFILENAME_LENGTH"))
    {
      if (force <= 0 && options->BASEFILENAME_LENGTH.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->BASEFILENAME_LENGTH.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "BASEFILENAME_LENGTH", SvPVutf8_nolen (value));
              options->BASEFILENAME_LENGTH.o.integer = -1;
              return -3;
            }
        }
      else
        options->BASEFILENAME_LENGTH.o.integer = -1;
    }
  else if (!strcmp (key, "DOC_ENCODING_FOR_INPUT_FILE_NAME"))
    {
      if (force <= 0 && options->DOC_ENCODING_FOR_INPUT_FILE_NAME.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->DOC_ENCODING_FOR_INPUT_FILE_NAME.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "DOC_ENCODING_FOR_INPUT_FILE_NAME", SvPVutf8_nolen (value));
              options->DOC_ENCODING_FOR_INPUT_FILE_NAME.o.integer = -1;
              return -3;
            }
        }
      else
        options->DOC_ENCODING_FOR_INPUT_FILE_NAME.o.integer = -1;
    }
  else if (!strcmp (key, "DOC_ENCODING_FOR_OUTPUT_FILE_NAME"))
    {
      if (force <= 0 && options->DOC_ENCODING_FOR_OUTPUT_FILE_NAME.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->DOC_ENCODING_FOR_OUTPUT_FILE_NAME.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "DOC_ENCODING_FOR_OUTPUT_FILE_NAME", SvPVutf8_nolen (value));
              options->DOC_ENCODING_FOR_OUTPUT_FILE_NAME.o.integer = -1;
              return -3;
            }
        }
      else
        options->DOC_ENCODING_FOR_OUTPUT_FILE_NAME.o.integer = -1;
    }
  else if (!strcmp (key, "IMAGE_LINK_PREFIX"))
    {
      if (force <= 0 && options->IMAGE_LINK_PREFIX.configured > 0)
        return -1;

      non_perl_free (options->IMAGE_LINK_PREFIX.o.string);
      if (SvOK (value))
        options->IMAGE_LINK_PREFIX.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->IMAGE_LINK_PREFIX.o.string = 0;
    }
  else if (!strcmp (key, "CASE_INSENSITIVE_FILENAMES"))
    {
      if (force <= 0 && options->CASE_INSENSITIVE_FILENAMES.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->CASE_INSENSITIVE_FILENAMES.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "CASE_INSENSITIVE_FILENAMES", SvPVutf8_nolen (value));
              options->CASE_INSENSITIVE_FILENAMES.o.integer = -1;
              return -3;
            }
        }
      else
        options->CASE_INSENSITIVE_FILENAMES.o.integer = -1;
    }
  else if (!strcmp (key, "DEBUG"))
    {
      if (force <= 0 && options->DEBUG.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->DEBUG.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "DEBUG", SvPVutf8_nolen (value));
              options->DEBUG.o.integer = -1;
              return -3;
            }
        }
      else
        options->DEBUG.o.integer = -1;
    }
  else if (!strcmp (key, "HANDLER_FATAL_ERROR_LEVEL"))
    {
      if (force <= 0 && options->HANDLER_FATAL_ERROR_LEVEL.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->HANDLER_FATAL_ERROR_LEVEL.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "HANDLER_FATAL_ERROR_LEVEL", SvPVutf8_nolen (value));
              options->HANDLER_FATAL_ERROR_LEVEL.o.integer = -1;
              return -3;
            }
        }
      else
        options->HANDLER_FATAL_ERROR_LEVEL.o.integer = -1;
    }
  else if (!strcmp (key, "TEST"))
    {
      if (force <= 0 && options->TEST.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->TEST.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "TEST", SvPVutf8_nolen (value));
              options->TEST.o.integer = -1;
              return -3;
            }
        }
      else
        options->TEST.o.integer = -1;
    }
  else if (!strcmp (key, "TEXTCONTENT_COMMENT"))
    {
      if (force <= 0 && options->TEXTCONTENT_COMMENT.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->TEXTCONTENT_COMMENT.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "TEXTCONTENT_COMMENT", SvPVutf8_nolen (value));
              options->TEXTCONTENT_COMMENT.o.integer = -1;
              return -3;
            }
        }
      else
        options->TEXTCONTENT_COMMENT.o.integer = -1;
    }
  else if (!strcmp (key, "TEXINFO_DTD_VERSION"))
    {
      if (force <= 0 && options->TEXINFO_DTD_VERSION.configured > 0)
        return -1;

      non_perl_free (options->TEXINFO_DTD_VERSION.o.string);
      if (SvOK (value))
        options->TEXINFO_DTD_VERSION.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->TEXINFO_DTD_VERSION.o.string = 0;
    }
  else if (!strcmp (key, "USE_UNICODE_COLLATION"))
    {
      if (force <= 0 && options->USE_UNICODE_COLLATION.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->USE_UNICODE_COLLATION.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "USE_UNICODE_COLLATION", SvPVutf8_nolen (value));
              options->USE_UNICODE_COLLATION.o.integer = -1;
              return -3;
            }
        }
      else
        options->USE_UNICODE_COLLATION.o.integer = -1;
    }
  else if (!strcmp (key, "AFTER_BODY_OPEN"))
    {
      if (force <= 0 && options->AFTER_BODY_OPEN.configured > 0)
        return -1;

      non_perl_free (options->AFTER_BODY_OPEN.o.string);
      if (SvOK (value))
        options->AFTER_BODY_OPEN.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->AFTER_BODY_OPEN.o.string = 0;
    }
  else if (!strcmp (key, "AFTER_SHORT_TOC_LINES"))
    {
      if (force <= 0 && options->AFTER_SHORT_TOC_LINES.configured > 0)
        return -1;

      non_perl_free (options->AFTER_SHORT_TOC_LINES.o.string);
      if (SvOK (value))
        options->AFTER_SHORT_TOC_LINES.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->AFTER_SHORT_TOC_LINES.o.string = 0;
    }
  else if (!strcmp (key, "AFTER_TOC_LINES"))
    {
      if (force <= 0 && options->AFTER_TOC_LINES.configured > 0)
        return -1;

      non_perl_free (options->AFTER_TOC_LINES.o.string);
      if (SvOK (value))
        options->AFTER_TOC_LINES.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->AFTER_TOC_LINES.o.string = 0;
    }
  else if (!strcmp (key, "ASCII_DASHES_AND_QUOTES"))
    {
      if (force <= 0 && options->ASCII_DASHES_AND_QUOTES.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->ASCII_DASHES_AND_QUOTES.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "ASCII_DASHES_AND_QUOTES", SvPVutf8_nolen (value));
              options->ASCII_DASHES_AND_QUOTES.o.integer = -1;
              return -3;
            }
        }
      else
        options->ASCII_DASHES_AND_QUOTES.o.integer = -1;
    }
  else if (!strcmp (key, "ASCII_GLYPH"))
    {
      if (force <= 0 && options->ASCII_GLYPH.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->ASCII_GLYPH.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "ASCII_GLYPH", SvPVutf8_nolen (value));
              options->ASCII_GLYPH.o.integer = -1;
              return -3;
            }
        }
      else
        options->ASCII_GLYPH.o.integer = -1;
    }
  else if (!strcmp (key, "ASCII_PUNCTUATION"))
    {
      if (force <= 0 && options->ASCII_PUNCTUATION.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->ASCII_PUNCTUATION.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "ASCII_PUNCTUATION", SvPVutf8_nolen (value));
              options->ASCII_PUNCTUATION.o.integer = -1;
              return -3;
            }
        }
      else
        options->ASCII_PUNCTUATION.o.integer = -1;
    }
  else if (!strcmp (key, "AUTO_MENU_DESCRIPTION_ALIGN_COLUMN"))
    {
      if (force <= 0 && options->AUTO_MENU_DESCRIPTION_ALIGN_COLUMN.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->AUTO_MENU_DESCRIPTION_ALIGN_COLUMN.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "AUTO_MENU_DESCRIPTION_ALIGN_COLUMN", SvPVutf8_nolen (value));
              options->AUTO_MENU_DESCRIPTION_ALIGN_COLUMN.o.integer = -1;
              return -3;
            }
        }
      else
        options->AUTO_MENU_DESCRIPTION_ALIGN_COLUMN.o.integer = -1;
    }
  else if (!strcmp (key, "AUTO_MENU_MAX_WIDTH"))
    {
      if (force <= 0 && options->AUTO_MENU_MAX_WIDTH.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->AUTO_MENU_MAX_WIDTH.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "AUTO_MENU_MAX_WIDTH", SvPVutf8_nolen (value));
              options->AUTO_MENU_MAX_WIDTH.o.integer = -1;
              return -3;
            }
        }
      else
        options->AUTO_MENU_MAX_WIDTH.o.integer = -1;
    }
  else if (!strcmp (key, "BEFORE_SHORT_TOC_LINES"))
    {
      if (force <= 0 && options->BEFORE_SHORT_TOC_LINES.configured > 0)
        return -1;

      non_perl_free (options->BEFORE_SHORT_TOC_LINES.o.string);
      if (SvOK (value))
        options->BEFORE_SHORT_TOC_LINES.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->BEFORE_SHORT_TOC_LINES.o.string = 0;
    }
  else if (!strcmp (key, "BEFORE_TOC_LINES"))
    {
      if (force <= 0 && options->BEFORE_TOC_LINES.configured > 0)
        return -1;

      non_perl_free (options->BEFORE_TOC_LINES.o.string);
      if (SvOK (value))
        options->BEFORE_TOC_LINES.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->BEFORE_TOC_LINES.o.string = 0;
    }
  else if (!strcmp (key, "BIG_RULE"))
    {
      if (force <= 0 && options->BIG_RULE.configured > 0)
        return -1;

      non_perl_free (options->BIG_RULE.o.string);
      if (SvOK (value))
        options->BIG_RULE.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->BIG_RULE.o.string = 0;
    }
  else if (!strcmp (key, "BODY_ELEMENT_ATTRIBUTES"))
    {
      if (force <= 0 && options->BODY_ELEMENT_ATTRIBUTES.configured > 0)
        return -1;

      non_perl_free (options->BODY_ELEMENT_ATTRIBUTES.o.string);
      if (SvOK (value))
        options->BODY_ELEMENT_ATTRIBUTES.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->BODY_ELEMENT_ATTRIBUTES.o.string = 0;
    }
  else if (!strcmp (key, "CLASS_BEGIN_USEPACKAGE"))
    {
      if (force <= 0 && options->CLASS_BEGIN_USEPACKAGE.configured > 0)
        return -1;

      non_perl_free (options->CLASS_BEGIN_USEPACKAGE.o.string);
      if (SvOK (value))
        options->CLASS_BEGIN_USEPACKAGE.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->CLASS_BEGIN_USEPACKAGE.o.string = 0;
    }
  else if (!strcmp (key, "COPIABLE_LINKS"))
    {
      if (force <= 0 && options->COPIABLE_LINKS.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->COPIABLE_LINKS.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "COPIABLE_LINKS", SvPVutf8_nolen (value));
              options->COPIABLE_LINKS.o.integer = -1;
              return -3;
            }
        }
      else
        options->COPIABLE_LINKS.o.integer = -1;
    }
  else if (!strcmp (key, "CHAPTER_HEADER_LEVEL"))
    {
      if (force <= 0 && options->CHAPTER_HEADER_LEVEL.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->CHAPTER_HEADER_LEVEL.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "CHAPTER_HEADER_LEVEL", SvPVutf8_nolen (value));
              options->CHAPTER_HEADER_LEVEL.o.integer = -1;
              return -3;
            }
        }
      else
        options->CHAPTER_HEADER_LEVEL.o.integer = -1;
    }
  else if (!strcmp (key, "CHECK_HTMLXREF"))
    {
      if (force <= 0 && options->CHECK_HTMLXREF.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->CHECK_HTMLXREF.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "CHECK_HTMLXREF", SvPVutf8_nolen (value));
              options->CHECK_HTMLXREF.o.integer = -1;
              return -3;
            }
        }
      else
        options->CHECK_HTMLXREF.o.integer = -1;
    }
  else if (!strcmp (key, "CLOSE_DOUBLE_QUOTE_SYMBOL"))
    {
      if (force <= 0 && options->CLOSE_DOUBLE_QUOTE_SYMBOL.configured > 0)
        return -1;

      non_perl_free (options->CLOSE_DOUBLE_QUOTE_SYMBOL.o.string);
      if (SvOK (value))
        options->CLOSE_DOUBLE_QUOTE_SYMBOL.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->CLOSE_DOUBLE_QUOTE_SYMBOL.o.string = 0;
    }
  else if (!strcmp (key, "CLOSE_QUOTE_SYMBOL"))
    {
      if (force <= 0 && options->CLOSE_QUOTE_SYMBOL.configured > 0)
        return -1;

      non_perl_free (options->CLOSE_QUOTE_SYMBOL.o.string);
      if (SvOK (value))
        options->CLOSE_QUOTE_SYMBOL.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->CLOSE_QUOTE_SYMBOL.o.string = 0;
    }
  else if (!strcmp (key, "COLLATION_LANGUAGE"))
    {
      if (force <= 0 && options->COLLATION_LANGUAGE.configured > 0)
        return -1;

      non_perl_free (options->COLLATION_LANGUAGE.o.string);
      if (SvOK (value))
        options->COLLATION_LANGUAGE.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->COLLATION_LANGUAGE.o.string = 0;
    }
  else if (!strcmp (key, "COMMAND_LINE_ENCODING"))
    {
      if (force <= 0 && options->COMMAND_LINE_ENCODING.configured > 0)
        return -1;

      non_perl_free (options->COMMAND_LINE_ENCODING.o.string);
      if (SvOK (value))
        options->COMMAND_LINE_ENCODING.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->COMMAND_LINE_ENCODING.o.string = 0;
    }
  else if (!strcmp (key, "INDENTED_BLOCK_COMMANDS_IN_TABLE"))
    {
      if (force <= 0 && options->INDENTED_BLOCK_COMMANDS_IN_TABLE.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->INDENTED_BLOCK_COMMANDS_IN_TABLE.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "INDENTED_BLOCK_COMMANDS_IN_TABLE", SvPVutf8_nolen (value));
              options->INDENTED_BLOCK_COMMANDS_IN_TABLE.o.integer = -1;
              return -3;
            }
        }
      else
        options->INDENTED_BLOCK_COMMANDS_IN_TABLE.o.integer = -1;
    }
  else if (!strcmp (key, "CONTENTS_OUTPUT_LOCATION"))
    {
      if (force <= 0 && options->CONTENTS_OUTPUT_LOCATION.configured > 0)
        return -1;

      non_perl_free (options->CONTENTS_OUTPUT_LOCATION.o.string);
      if (SvOK (value))
        options->CONTENTS_OUTPUT_LOCATION.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->CONTENTS_OUTPUT_LOCATION.o.string = 0;
    }
  else if (!strcmp (key, "CONVERT_TO_LATEX_IN_MATH"))
    {
      if (force <= 0 && options->CONVERT_TO_LATEX_IN_MATH.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->CONVERT_TO_LATEX_IN_MATH.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "CONVERT_TO_LATEX_IN_MATH", SvPVutf8_nolen (value));
              options->CONVERT_TO_LATEX_IN_MATH.o.integer = -1;
              return -3;
            }
        }
      else
        options->CONVERT_TO_LATEX_IN_MATH.o.integer = -1;
    }
  else if (!strcmp (key, "DATE_IN_HEADER"))
    {
      if (force <= 0 && options->DATE_IN_HEADER.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->DATE_IN_HEADER.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "DATE_IN_HEADER", SvPVutf8_nolen (value));
              options->DATE_IN_HEADER.o.integer = -1;
              return -3;
            }
        }
      else
        options->DATE_IN_HEADER.o.integer = -1;
    }
  else if (!strcmp (key, "DEFAULT_RULE"))
    {
      if (force <= 0 && options->DEFAULT_RULE.configured > 0)
        return -1;

      non_perl_free (options->DEFAULT_RULE.o.string);
      if (SvOK (value))
        options->DEFAULT_RULE.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->DEFAULT_RULE.o.string = 0;
    }
  else if (!strcmp (key, "DEF_TABLE"))
    {
      if (force <= 0 && options->DEF_TABLE.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->DEF_TABLE.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "DEF_TABLE", SvPVutf8_nolen (value));
              options->DEF_TABLE.o.integer = -1;
              return -3;
            }
        }
      else
        options->DEF_TABLE.o.integer = -1;
    }
  else if (!strcmp (key, "DO_ABOUT"))
    {
      if (force <= 0 && options->DO_ABOUT.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->DO_ABOUT.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "DO_ABOUT", SvPVutf8_nolen (value));
              options->DO_ABOUT.o.integer = -1;
              return -3;
            }
        }
      else
        options->DO_ABOUT.o.integer = -1;
    }
  else if (!strcmp (key, "DOCTYPE"))
    {
      if (force <= 0 && options->DOCTYPE.configured > 0)
        return -1;

      non_perl_free (options->DOCTYPE.o.string);
      if (SvOK (value))
        options->DOCTYPE.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->DOCTYPE.o.string = 0;
    }
  else if (!strcmp (key, "DOCUMENTLANGUAGE_COLLATION"))
    {
      if (force <= 0 && options->DOCUMENTLANGUAGE_COLLATION.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->DOCUMENTLANGUAGE_COLLATION.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "DOCUMENTLANGUAGE_COLLATION", SvPVutf8_nolen (value));
              options->DOCUMENTLANGUAGE_COLLATION.o.integer = -1;
              return -3;
            }
        }
      else
        options->DOCUMENTLANGUAGE_COLLATION.o.integer = -1;
    }
  else if (!strcmp (key, "END_USEPACKAGE"))
    {
      if (force <= 0 && options->END_USEPACKAGE.configured > 0)
        return -1;

      non_perl_free (options->END_USEPACKAGE.o.string);
      if (SvOK (value))
        options->END_USEPACKAGE.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->END_USEPACKAGE.o.string = 0;
    }
  else if (!strcmp (key, "EPUB_CREATE_CONTAINER_FILE"))
    {
      if (force <= 0 && options->EPUB_CREATE_CONTAINER_FILE.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->EPUB_CREATE_CONTAINER_FILE.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "EPUB_CREATE_CONTAINER_FILE", SvPVutf8_nolen (value));
              options->EPUB_CREATE_CONTAINER_FILE.o.integer = -1;
              return -3;
            }
        }
      else
        options->EPUB_CREATE_CONTAINER_FILE.o.integer = -1;
    }
  else if (!strcmp (key, "EPUB_KEEP_CONTAINER_FOLDER"))
    {
      if (force <= 0 && options->EPUB_KEEP_CONTAINER_FOLDER.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->EPUB_KEEP_CONTAINER_FOLDER.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "EPUB_KEEP_CONTAINER_FOLDER", SvPVutf8_nolen (value));
              options->EPUB_KEEP_CONTAINER_FOLDER.o.integer = -1;
              return -3;
            }
        }
      else
        options->EPUB_KEEP_CONTAINER_FOLDER.o.integer = -1;
    }
  else if (!strcmp (key, "EXTENSION"))
    {
      if (force <= 0 && options->EXTENSION.configured > 0)
        return -1;

      non_perl_free (options->EXTENSION.o.string);
      if (SvOK (value))
        options->EXTENSION.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->EXTENSION.o.string = 0;
    }
  else if (!strcmp (key, "EXTERNAL_CROSSREF_EXTENSION"))
    {
      if (force <= 0 && options->EXTERNAL_CROSSREF_EXTENSION.configured > 0)
        return -1;

      non_perl_free (options->EXTERNAL_CROSSREF_EXTENSION.o.string);
      if (SvOK (value))
        options->EXTERNAL_CROSSREF_EXTENSION.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->EXTERNAL_CROSSREF_EXTENSION.o.string = 0;
    }
  else if (!strcmp (key, "EXTERNAL_CROSSREF_SPLIT"))
    {
      if (force <= 0 && options->EXTERNAL_CROSSREF_SPLIT.configured > 0)
        return -1;

      non_perl_free (options->EXTERNAL_CROSSREF_SPLIT.o.string);
      if (SvOK (value))
        options->EXTERNAL_CROSSREF_SPLIT.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->EXTERNAL_CROSSREF_SPLIT.o.string = 0;
    }
  else if (!strcmp (key, "EXTERNAL_DIR"))
    {
      if (force <= 0 && options->EXTERNAL_DIR.configured > 0)
        return -1;

      non_perl_free (options->EXTERNAL_DIR.o.string);
      if (SvOK (value))
        options->EXTERNAL_DIR.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->EXTERNAL_DIR.o.string = 0;
    }
  else if (!strcmp (key, "EXTRA_HEAD"))
    {
      if (force <= 0 && options->EXTRA_HEAD.configured > 0)
        return -1;

      non_perl_free (options->EXTRA_HEAD.o.string);
      if (SvOK (value))
        options->EXTRA_HEAD.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->EXTRA_HEAD.o.string = 0;
    }
  else if (!strcmp (key, "FOOTNOTE_END_HEADER_LEVEL"))
    {
      if (force <= 0 && options->FOOTNOTE_END_HEADER_LEVEL.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->FOOTNOTE_END_HEADER_LEVEL.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "FOOTNOTE_END_HEADER_LEVEL", SvPVutf8_nolen (value));
              options->FOOTNOTE_END_HEADER_LEVEL.o.integer = -1;
              return -3;
            }
        }
      else
        options->FOOTNOTE_END_HEADER_LEVEL.o.integer = -1;
    }
  else if (!strcmp (key, "FOOTNOTE_SEPARATE_HEADER_LEVEL"))
    {
      if (force <= 0 && options->FOOTNOTE_SEPARATE_HEADER_LEVEL.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->FOOTNOTE_SEPARATE_HEADER_LEVEL.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "FOOTNOTE_SEPARATE_HEADER_LEVEL", SvPVutf8_nolen (value));
              options->FOOTNOTE_SEPARATE_HEADER_LEVEL.o.integer = -1;
              return -3;
            }
        }
      else
        options->FOOTNOTE_SEPARATE_HEADER_LEVEL.o.integer = -1;
    }
  else if (!strcmp (key, "HEADER_IN_TABLE"))
    {
      if (force <= 0 && options->HEADER_IN_TABLE.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->HEADER_IN_TABLE.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "HEADER_IN_TABLE", SvPVutf8_nolen (value));
              options->HEADER_IN_TABLE.o.integer = -1;
              return -3;
            }
        }
      else
        options->HEADER_IN_TABLE.o.integer = -1;
    }
  else if (!strcmp (key, "HIGHLIGHT_SYNTAX"))
    {
      if (force <= 0 && options->HIGHLIGHT_SYNTAX.configured > 0)
        return -1;

      non_perl_free (options->HIGHLIGHT_SYNTAX.o.string);
      if (SvOK (value))
        options->HIGHLIGHT_SYNTAX.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->HIGHLIGHT_SYNTAX.o.string = 0;
    }
  else if (!strcmp (key, "HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE"))
    {
      if (force <= 0 && options->HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE.configured > 0)
        return -1;

      non_perl_free (options->HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE.o.string);
      if (SvOK (value))
        options->HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE.o.string = 0;
    }
  else if (!strcmp (key, "HTML_MATH"))
    {
      if (force <= 0 && options->HTML_MATH.configured > 0)
        return -1;

      non_perl_free (options->HTML_MATH.o.string);
      if (SvOK (value))
        options->HTML_MATH.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->HTML_MATH.o.string = 0;
    }
  else if (!strcmp (key, "HTML_ROOT_ELEMENT_ATTRIBUTES"))
    {
      if (force <= 0 && options->HTML_ROOT_ELEMENT_ATTRIBUTES.configured > 0)
        return -1;

      non_perl_free (options->HTML_ROOT_ELEMENT_ATTRIBUTES.o.string);
      if (SvOK (value))
        options->HTML_ROOT_ELEMENT_ATTRIBUTES.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->HTML_ROOT_ELEMENT_ATTRIBUTES.o.string = 0;
    }
  else if (!strcmp (key, "HTMLXREF_FILE"))
    {
      if (force <= 0 && options->HTMLXREF_FILE.configured > 0)
        return -1;

      non_perl_free (options->HTMLXREF_FILE.o.string);
      if (SvOK (value))
        options->HTMLXREF_FILE.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->HTMLXREF_FILE.o.string = 0;
    }
  else if (!strcmp (key, "HTMLXREF_MODE"))
    {
      if (force <= 0 && options->HTMLXREF_MODE.configured > 0)
        return -1;

      non_perl_free (options->HTMLXREF_MODE.o.string);
      if (SvOK (value))
        options->HTMLXREF_MODE.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->HTMLXREF_MODE.o.string = 0;
    }
  else if (!strcmp (key, "ICONS"))
    {
      if (force <= 0 && options->ICONS.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->ICONS.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "ICONS", SvPVutf8_nolen (value));
              options->ICONS.o.integer = -1;
              return -3;
            }
        }
      else
        options->ICONS.o.integer = -1;
    }
  else if (!strcmp (key, "INDEX_ENTRY_COLON"))
    {
      if (force <= 0 && options->INDEX_ENTRY_COLON.configured > 0)
        return -1;

      non_perl_free (options->INDEX_ENTRY_COLON.o.string);
      if (SvOK (value))
        options->INDEX_ENTRY_COLON.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->INDEX_ENTRY_COLON.o.string = 0;
    }
  else if (!strcmp (key, "INDEX_SPECIAL_CHARS_WARNING"))
    {
      if (force <= 0 && options->INDEX_SPECIAL_CHARS_WARNING.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->INDEX_SPECIAL_CHARS_WARNING.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "INDEX_SPECIAL_CHARS_WARNING", SvPVutf8_nolen (value));
              options->INDEX_SPECIAL_CHARS_WARNING.o.integer = -1;
              return -3;
            }
        }
      else
        options->INDEX_SPECIAL_CHARS_WARNING.o.integer = -1;
    }
  else if (!strcmp (key, "INFO_JS_DIR"))
    {
      if (force <= 0 && options->INFO_JS_DIR.configured > 0)
        return -1;

      non_perl_free (options->INFO_JS_DIR.o.string);
      if (SvOK (value))
        options->INFO_JS_DIR.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->INFO_JS_DIR.o.string = 0;
    }
  else if (!strcmp (key, "INFO_SPECIAL_CHARS_QUOTE"))
    {
      if (force <= 0 && options->INFO_SPECIAL_CHARS_QUOTE.configured > 0)
        return -1;

      non_perl_free (options->INFO_SPECIAL_CHARS_QUOTE.o.string);
      if (SvOK (value))
        options->INFO_SPECIAL_CHARS_QUOTE.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->INFO_SPECIAL_CHARS_QUOTE.o.string = 0;
    }
  else if (!strcmp (key, "INFO_SPECIAL_CHARS_WARNING"))
    {
      if (force <= 0 && options->INFO_SPECIAL_CHARS_WARNING.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->INFO_SPECIAL_CHARS_WARNING.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "INFO_SPECIAL_CHARS_WARNING", SvPVutf8_nolen (value));
              options->INFO_SPECIAL_CHARS_WARNING.o.integer = -1;
              return -3;
            }
        }
      else
        options->INFO_SPECIAL_CHARS_WARNING.o.integer = -1;
    }
  else if (!strcmp (key, "IGNORE_REF_TO_TOP_NODE_UP"))
    {
      if (force <= 0 && options->IGNORE_REF_TO_TOP_NODE_UP.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->IGNORE_REF_TO_TOP_NODE_UP.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "IGNORE_REF_TO_TOP_NODE_UP", SvPVutf8_nolen (value));
              options->IGNORE_REF_TO_TOP_NODE_UP.o.integer = -1;
              return -3;
            }
        }
      else
        options->IGNORE_REF_TO_TOP_NODE_UP.o.integer = -1;
    }
  else if (!strcmp (key, "INLINE_CSS_STYLE"))
    {
      if (force <= 0 && options->INLINE_CSS_STYLE.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->INLINE_CSS_STYLE.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "INLINE_CSS_STYLE", SvPVutf8_nolen (value));
              options->INLINE_CSS_STYLE.o.integer = -1;
              return -3;
            }
        }
      else
        options->INLINE_CSS_STYLE.o.integer = -1;
    }
  else if (!strcmp (key, "INPUT_FILE_NAME_ENCODING"))
    {
      if (force <= 0 && options->INPUT_FILE_NAME_ENCODING.configured > 0)
        return -1;

      non_perl_free (options->INPUT_FILE_NAME_ENCODING.o.string);
      if (SvOK (value))
        options->INPUT_FILE_NAME_ENCODING.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->INPUT_FILE_NAME_ENCODING.o.string = 0;
    }
  else if (!strcmp (key, "JS_WEBLABELS"))
    {
      if (force <= 0 && options->JS_WEBLABELS.configured > 0)
        return -1;

      non_perl_free (options->JS_WEBLABELS.o.string);
      if (SvOK (value))
        options->JS_WEBLABELS.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->JS_WEBLABELS.o.string = 0;
    }
  else if (!strcmp (key, "JS_WEBLABELS_FILE"))
    {
      if (force <= 0 && options->JS_WEBLABELS_FILE.configured > 0)
        return -1;

      non_perl_free (options->JS_WEBLABELS_FILE.o.string);
      if (SvOK (value))
        options->JS_WEBLABELS_FILE.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->JS_WEBLABELS_FILE.o.string = 0;
    }
  else if (!strcmp (key, "LATEX_FLOATS_FILE_EXTENSION"))
    {
      if (force <= 0 && options->LATEX_FLOATS_FILE_EXTENSION.configured > 0)
        return -1;

      non_perl_free (options->LATEX_FLOATS_FILE_EXTENSION.o.string);
      if (SvOK (value))
        options->LATEX_FLOATS_FILE_EXTENSION.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->LATEX_FLOATS_FILE_EXTENSION.o.string = 0;
    }
  else if (!strcmp (key, "LOCALE_ENCODING"))
    {
      if (force <= 0 && options->LOCALE_ENCODING.configured > 0)
        return -1;

      non_perl_free (options->LOCALE_ENCODING.o.string);
      if (SvOK (value))
        options->LOCALE_ENCODING.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->LOCALE_ENCODING.o.string = 0;
    }
  else if (!strcmp (key, "L2H_CLEAN"))
    {
      if (force <= 0 && options->L2H_CLEAN.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->L2H_CLEAN.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "L2H_CLEAN", SvPVutf8_nolen (value));
              options->L2H_CLEAN.o.integer = -1;
              return -3;
            }
        }
      else
        options->L2H_CLEAN.o.integer = -1;
    }
  else if (!strcmp (key, "L2H_FILE"))
    {
      if (force <= 0 && options->L2H_FILE.configured > 0)
        return -1;

      non_perl_free (options->L2H_FILE.o.string);
      if (SvOK (value))
        options->L2H_FILE.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->L2H_FILE.o.string = 0;
    }
  else if (!strcmp (key, "L2H_HTML_VERSION"))
    {
      if (force <= 0 && options->L2H_HTML_VERSION.configured > 0)
        return -1;

      non_perl_free (options->L2H_HTML_VERSION.o.string);
      if (SvOK (value))
        options->L2H_HTML_VERSION.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->L2H_HTML_VERSION.o.string = 0;
    }
  else if (!strcmp (key, "L2H_L2H"))
    {
      if (force <= 0 && options->L2H_L2H.configured > 0)
        return -1;

      non_perl_free (options->L2H_L2H.o.string);
      if (SvOK (value))
        options->L2H_L2H.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->L2H_L2H.o.string = 0;
    }
  else if (!strcmp (key, "L2H_SKIP"))
    {
      if (force <= 0 && options->L2H_SKIP.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->L2H_SKIP.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "L2H_SKIP", SvPVutf8_nolen (value));
              options->L2H_SKIP.o.integer = -1;
              return -3;
            }
        }
      else
        options->L2H_SKIP.o.integer = -1;
    }
  else if (!strcmp (key, "L2H_TMP"))
    {
      if (force <= 0 && options->L2H_TMP.configured > 0)
        return -1;

      non_perl_free (options->L2H_TMP.o.string);
      if (SvOK (value))
        options->L2H_TMP.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->L2H_TMP.o.string = 0;
    }
  else if (!strcmp (key, "MATHJAX_CONFIGURATION"))
    {
      if (force <= 0 && options->MATHJAX_CONFIGURATION.configured > 0)
        return -1;

      non_perl_free (options->MATHJAX_CONFIGURATION.o.string);
      if (SvOK (value))
        options->MATHJAX_CONFIGURATION.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->MATHJAX_CONFIGURATION.o.string = 0;
    }
  else if (!strcmp (key, "MATHJAX_SCRIPT"))
    {
      if (force <= 0 && options->MATHJAX_SCRIPT.configured > 0)
        return -1;

      non_perl_free (options->MATHJAX_SCRIPT.o.string);
      if (SvOK (value))
        options->MATHJAX_SCRIPT.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->MATHJAX_SCRIPT.o.string = 0;
    }
  else if (!strcmp (key, "MATHJAX_SOURCE"))
    {
      if (force <= 0 && options->MATHJAX_SOURCE.configured > 0)
        return -1;

      non_perl_free (options->MATHJAX_SOURCE.o.string);
      if (SvOK (value))
        options->MATHJAX_SOURCE.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->MATHJAX_SOURCE.o.string = 0;
    }
  else if (!strcmp (key, "MAX_HEADER_LEVEL"))
    {
      if (force <= 0 && options->MAX_HEADER_LEVEL.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->MAX_HEADER_LEVEL.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "MAX_HEADER_LEVEL", SvPVutf8_nolen (value));
              options->MAX_HEADER_LEVEL.o.integer = -1;
              return -3;
            }
        }
      else
        options->MAX_HEADER_LEVEL.o.integer = -1;
    }
  else if (!strcmp (key, "MENU_ENTRY_COLON"))
    {
      if (force <= 0 && options->MENU_ENTRY_COLON.configured > 0)
        return -1;

      non_perl_free (options->MENU_ENTRY_COLON.o.string);
      if (SvOK (value))
        options->MENU_ENTRY_COLON.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->MENU_ENTRY_COLON.o.string = 0;
    }
  else if (!strcmp (key, "MENU_SYMBOL"))
    {
      if (force <= 0 && options->MENU_SYMBOL.configured > 0)
        return -1;

      non_perl_free (options->MENU_SYMBOL.o.string);
      if (SvOK (value))
        options->MENU_SYMBOL.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->MENU_SYMBOL.o.string = 0;
    }
  else if (!strcmp (key, "MESSAGE_ENCODING"))
    {
      if (force <= 0 && options->MESSAGE_ENCODING.configured > 0)
        return -1;

      non_perl_free (options->MESSAGE_ENCODING.o.string);
      if (SvOK (value))
        options->MESSAGE_ENCODING.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->MESSAGE_ENCODING.o.string = 0;
    }
  else if (!strcmp (key, "MONOLITHIC"))
    {
      if (force <= 0 && options->MONOLITHIC.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->MONOLITHIC.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "MONOLITHIC", SvPVutf8_nolen (value));
              options->MONOLITHIC.o.integer = -1;
              return -3;
            }
        }
      else
        options->MONOLITHIC.o.integer = -1;
    }
  else if (!strcmp (key, "NO_CSS"))
    {
      if (force <= 0 && options->NO_CSS.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->NO_CSS.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "NO_CSS", SvPVutf8_nolen (value));
              options->NO_CSS.o.integer = -1;
              return -3;
            }
        }
      else
        options->NO_CSS.o.integer = -1;
    }
  else if (!strcmp (key, "NO_NUMBER_FOOTNOTE_SYMBOL"))
    {
      if (force <= 0 && options->NO_NUMBER_FOOTNOTE_SYMBOL.configured > 0)
        return -1;

      non_perl_free (options->NO_NUMBER_FOOTNOTE_SYMBOL.o.string);
      if (SvOK (value))
        options->NO_NUMBER_FOOTNOTE_SYMBOL.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->NO_NUMBER_FOOTNOTE_SYMBOL.o.string = 0;
    }
  else if (!strcmp (key, "NO_CUSTOM_HTML_ATTRIBUTE"))
    {
      if (force <= 0 && options->NO_CUSTOM_HTML_ATTRIBUTE.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->NO_CUSTOM_HTML_ATTRIBUTE.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "NO_CUSTOM_HTML_ATTRIBUTE", SvPVutf8_nolen (value));
              options->NO_CUSTOM_HTML_ATTRIBUTE.o.integer = -1;
              return -3;
            }
        }
      else
        options->NO_CUSTOM_HTML_ATTRIBUTE.o.integer = -1;
    }
  else if (!strcmp (key, "NODE_NAME_IN_INDEX"))
    {
      if (force <= 0 && options->NODE_NAME_IN_INDEX.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->NODE_NAME_IN_INDEX.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "NODE_NAME_IN_INDEX", SvPVutf8_nolen (value));
              options->NODE_NAME_IN_INDEX.o.integer = -1;
              return -3;
            }
        }
      else
        options->NODE_NAME_IN_INDEX.o.integer = -1;
    }
  else if (!strcmp (key, "NODE_NAME_IN_MENU"))
    {
      if (force <= 0 && options->NODE_NAME_IN_MENU.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->NODE_NAME_IN_MENU.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "NODE_NAME_IN_MENU", SvPVutf8_nolen (value));
              options->NODE_NAME_IN_MENU.o.integer = -1;
              return -3;
            }
        }
      else
        options->NODE_NAME_IN_MENU.o.integer = -1;
    }
  else if (!strcmp (key, "NO_TOP_NODE_OUTPUT"))
    {
      if (force <= 0 && options->NO_TOP_NODE_OUTPUT.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->NO_TOP_NODE_OUTPUT.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "NO_TOP_NODE_OUTPUT", SvPVutf8_nolen (value));
              options->NO_TOP_NODE_OUTPUT.o.integer = -1;
              return -3;
            }
        }
      else
        options->NO_TOP_NODE_OUTPUT.o.integer = -1;
    }
  else if (!strcmp (key, "OPEN_DOUBLE_QUOTE_SYMBOL"))
    {
      if (force <= 0 && options->OPEN_DOUBLE_QUOTE_SYMBOL.configured > 0)
        return -1;

      non_perl_free (options->OPEN_DOUBLE_QUOTE_SYMBOL.o.string);
      if (SvOK (value))
        options->OPEN_DOUBLE_QUOTE_SYMBOL.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->OPEN_DOUBLE_QUOTE_SYMBOL.o.string = 0;
    }
  else if (!strcmp (key, "OPEN_QUOTE_SYMBOL"))
    {
      if (force <= 0 && options->OPEN_QUOTE_SYMBOL.configured > 0)
        return -1;

      non_perl_free (options->OPEN_QUOTE_SYMBOL.o.string);
      if (SvOK (value))
        options->OPEN_QUOTE_SYMBOL.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->OPEN_QUOTE_SYMBOL.o.string = 0;
    }
  else if (!strcmp (key, "OUTPUT_CHARACTERS"))
    {
      if (force <= 0 && options->OUTPUT_CHARACTERS.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->OUTPUT_CHARACTERS.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "OUTPUT_CHARACTERS", SvPVutf8_nolen (value));
              options->OUTPUT_CHARACTERS.o.integer = -1;
              return -3;
            }
        }
      else
        options->OUTPUT_CHARACTERS.o.integer = -1;
    }
  else if (!strcmp (key, "OUTPUT_ENCODING_NAME"))
    {
      if (force <= 0 && options->OUTPUT_ENCODING_NAME.configured > 0)
        return -1;

      non_perl_free (options->OUTPUT_ENCODING_NAME.o.string);
      if (SvOK (value))
        options->OUTPUT_ENCODING_NAME.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->OUTPUT_ENCODING_NAME.o.string = 0;
    }
  else if (!strcmp (key, "OUTPUT_FILE_NAME_ENCODING"))
    {
      if (force <= 0 && options->OUTPUT_FILE_NAME_ENCODING.configured > 0)
        return -1;

      non_perl_free (options->OUTPUT_FILE_NAME_ENCODING.o.string);
      if (SvOK (value))
        options->OUTPUT_FILE_NAME_ENCODING.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->OUTPUT_FILE_NAME_ENCODING.o.string = 0;
    }
  else if (!strcmp (key, "OUTPUT_PERL_ENCODING"))
    {
      if (force <= 0 && options->OUTPUT_PERL_ENCODING.configured > 0)
        return -1;

      non_perl_free (options->OUTPUT_PERL_ENCODING.o.string);
      if (SvOK (value))
        options->OUTPUT_PERL_ENCODING.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->OUTPUT_PERL_ENCODING.o.string = 0;
    }
  else if (!strcmp (key, "PACKAGE"))
    {
      if (force <= 0 && options->PACKAGE.configured > 0)
        return -1;

      non_perl_free (options->PACKAGE.o.string);
      if (SvOK (value))
        options->PACKAGE.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->PACKAGE.o.string = 0;
    }
  else if (!strcmp (key, "PACKAGE_AND_VERSION"))
    {
      if (force <= 0 && options->PACKAGE_AND_VERSION.configured > 0)
        return -1;

      non_perl_free (options->PACKAGE_AND_VERSION.o.string);
      if (SvOK (value))
        options->PACKAGE_AND_VERSION.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->PACKAGE_AND_VERSION.o.string = 0;
    }
  else if (!strcmp (key, "PACKAGE_NAME"))
    {
      if (force <= 0 && options->PACKAGE_NAME.configured > 0)
        return -1;

      non_perl_free (options->PACKAGE_NAME.o.string);
      if (SvOK (value))
        options->PACKAGE_NAME.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->PACKAGE_NAME.o.string = 0;
    }
  else if (!strcmp (key, "PACKAGE_URL"))
    {
      if (force <= 0 && options->PACKAGE_URL.configured > 0)
        return -1;

      non_perl_free (options->PACKAGE_URL.o.string);
      if (SvOK (value))
        options->PACKAGE_URL.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->PACKAGE_URL.o.string = 0;
    }
  else if (!strcmp (key, "PACKAGE_VERSION"))
    {
      if (force <= 0 && options->PACKAGE_VERSION.configured > 0)
        return -1;

      non_perl_free (options->PACKAGE_VERSION.o.string);
      if (SvOK (value))
        options->PACKAGE_VERSION.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->PACKAGE_VERSION.o.string = 0;
    }
  else if (!strcmp (key, "PRE_BODY_CLOSE"))
    {
      if (force <= 0 && options->PRE_BODY_CLOSE.configured > 0)
        return -1;

      non_perl_free (options->PRE_BODY_CLOSE.o.string);
      if (SvOK (value))
        options->PRE_BODY_CLOSE.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->PRE_BODY_CLOSE.o.string = 0;
    }
  else if (!strcmp (key, "PREFIX"))
    {
      if (force <= 0 && options->PREFIX.configured > 0)
        return -1;

      non_perl_free (options->PREFIX.o.string);
      if (SvOK (value))
        options->PREFIX.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->PREFIX.o.string = 0;
    }
  else if (!strcmp (key, "PROGRAM"))
    {
      if (force <= 0 && options->PROGRAM.configured > 0)
        return -1;

      non_perl_free (options->PROGRAM.o.string);
      if (SvOK (value))
        options->PROGRAM.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->PROGRAM.o.string = 0;
    }
  else if (!strcmp (key, "PROGRAM_NAME_IN_ABOUT"))
    {
      if (force <= 0 && options->PROGRAM_NAME_IN_ABOUT.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->PROGRAM_NAME_IN_ABOUT.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "PROGRAM_NAME_IN_ABOUT", SvPVutf8_nolen (value));
              options->PROGRAM_NAME_IN_ABOUT.o.integer = -1;
              return -3;
            }
        }
      else
        options->PROGRAM_NAME_IN_ABOUT.o.integer = -1;
    }
  else if (!strcmp (key, "PROGRAM_NAME_IN_FOOTER"))
    {
      if (force <= 0 && options->PROGRAM_NAME_IN_FOOTER.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->PROGRAM_NAME_IN_FOOTER.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "PROGRAM_NAME_IN_FOOTER", SvPVutf8_nolen (value));
              options->PROGRAM_NAME_IN_FOOTER.o.integer = -1;
              return -3;
            }
        }
      else
        options->PROGRAM_NAME_IN_FOOTER.o.integer = -1;
    }
  else if (!strcmp (key, "SECTION_NAME_IN_TITLE"))
    {
      if (force <= 0 && options->SECTION_NAME_IN_TITLE.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->SECTION_NAME_IN_TITLE.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "SECTION_NAME_IN_TITLE", SvPVutf8_nolen (value));
              options->SECTION_NAME_IN_TITLE.o.integer = -1;
              return -3;
            }
        }
      else
        options->SECTION_NAME_IN_TITLE.o.integer = -1;
    }
  else if (!strcmp (key, "SHORT_TOC_LINK_TO_TOC"))
    {
      if (force <= 0 && options->SHORT_TOC_LINK_TO_TOC.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->SHORT_TOC_LINK_TO_TOC.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "SHORT_TOC_LINK_TO_TOC", SvPVutf8_nolen (value));
              options->SHORT_TOC_LINK_TO_TOC.o.integer = -1;
              return -3;
            }
        }
      else
        options->SHORT_TOC_LINK_TO_TOC.o.integer = -1;
    }
  else if (!strcmp (key, "SHOW_TITLE"))
    {
      if (force <= 0 && options->SHOW_TITLE.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->SHOW_TITLE.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "SHOW_TITLE", SvPVutf8_nolen (value));
              options->SHOW_TITLE.o.integer = -1;
              return -3;
            }
        }
      else
        options->SHOW_TITLE.o.integer = -1;
    }
  else if (!strcmp (key, "T4H_LATEX_CONVERSION"))
    {
      if (force <= 0 && options->T4H_LATEX_CONVERSION.configured > 0)
        return -1;

      non_perl_free (options->T4H_LATEX_CONVERSION.o.string);
      if (SvOK (value))
        options->T4H_LATEX_CONVERSION.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->T4H_LATEX_CONVERSION.o.string = 0;
    }
  else if (!strcmp (key, "T4H_MATH_CONVERSION"))
    {
      if (force <= 0 && options->T4H_MATH_CONVERSION.configured > 0)
        return -1;

      non_perl_free (options->T4H_MATH_CONVERSION.o.string);
      if (SvOK (value))
        options->T4H_MATH_CONVERSION.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->T4H_MATH_CONVERSION.o.string = 0;
    }
  else if (!strcmp (key, "T4H_TEX_CONVERSION"))
    {
      if (force <= 0 && options->T4H_TEX_CONVERSION.configured > 0)
        return -1;

      non_perl_free (options->T4H_TEX_CONVERSION.o.string);
      if (SvOK (value))
        options->T4H_TEX_CONVERSION.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->T4H_TEX_CONVERSION.o.string = 0;
    }
  else if (!strcmp (key, "TEXI2HTML"))
    {
      if (force <= 0 && options->TEXI2HTML.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->TEXI2HTML.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "TEXI2HTML", SvPVutf8_nolen (value));
              options->TEXI2HTML.o.integer = -1;
              return -3;
            }
        }
      else
        options->TEXI2HTML.o.integer = -1;
    }
  else if (!strcmp (key, "TEXINFO_OUTPUT_FORMAT"))
    {
      if (force <= 0 && options->TEXINFO_OUTPUT_FORMAT.configured > 0)
        return -1;

      non_perl_free (options->TEXINFO_OUTPUT_FORMAT.o.string);
      if (SvOK (value))
        options->TEXINFO_OUTPUT_FORMAT.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->TEXINFO_OUTPUT_FORMAT.o.string = 0;
    }
  else if (!strcmp (key, "TXI_MARKUP_NO_SECTION_EXTENT"))
    {
      if (force <= 0 && options->TXI_MARKUP_NO_SECTION_EXTENT.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->TXI_MARKUP_NO_SECTION_EXTENT.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "TXI_MARKUP_NO_SECTION_EXTENT", SvPVutf8_nolen (value));
              options->TXI_MARKUP_NO_SECTION_EXTENT.o.integer = -1;
              return -3;
            }
        }
      else
        options->TXI_MARKUP_NO_SECTION_EXTENT.o.integer = -1;
    }
  else if (!strcmp (key, "TOC_LINKS"))
    {
      if (force <= 0 && options->TOC_LINKS.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->TOC_LINKS.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "TOC_LINKS", SvPVutf8_nolen (value));
              options->TOC_LINKS.o.integer = -1;
              return -3;
            }
        }
      else
        options->TOC_LINKS.o.integer = -1;
    }
  else if (!strcmp (key, "TOP_FILE"))
    {
      if (force <= 0 && options->TOP_FILE.configured > 0)
        return -1;

      non_perl_free (options->TOP_FILE.o.string);
      if (SvOK (value))
        options->TOP_FILE.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->TOP_FILE.o.string = 0;
    }
  else if (!strcmp (key, "TOP_NODE_FILE_TARGET"))
    {
      if (force <= 0 && options->TOP_NODE_FILE_TARGET.configured > 0)
        return -1;

      non_perl_free (options->TOP_NODE_FILE_TARGET.o.string);
      if (SvOK (value))
        options->TOP_NODE_FILE_TARGET.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->TOP_NODE_FILE_TARGET.o.string = 0;
    }
  else if (!strcmp (key, "TOP_NODE_UP_URL"))
    {
      if (force <= 0 && options->TOP_NODE_UP_URL.configured > 0)
        return -1;

      non_perl_free (options->TOP_NODE_UP_URL.o.string);
      if (SvOK (value))
        options->TOP_NODE_UP_URL.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->TOP_NODE_UP_URL.o.string = 0;
    }
  else if (!strcmp (key, "USE_ACCESSKEY"))
    {
      if (force <= 0 && options->USE_ACCESSKEY.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->USE_ACCESSKEY.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "USE_ACCESSKEY", SvPVutf8_nolen (value));
              options->USE_ACCESSKEY.o.integer = -1;
              return -3;
            }
        }
      else
        options->USE_ACCESSKEY.o.integer = -1;
    }
  else if (!strcmp (key, "USE_ISO"))
    {
      if (force <= 0 && options->USE_ISO.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->USE_ISO.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "USE_ISO", SvPVutf8_nolen (value));
              options->USE_ISO.o.integer = -1;
              return -3;
            }
        }
      else
        options->USE_ISO.o.integer = -1;
    }
  else if (!strcmp (key, "USE_LINKS"))
    {
      if (force <= 0 && options->USE_LINKS.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->USE_LINKS.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "USE_LINKS", SvPVutf8_nolen (value));
              options->USE_LINKS.o.integer = -1;
              return -3;
            }
        }
      else
        options->USE_LINKS.o.integer = -1;
    }
  else if (!strcmp (key, "USE_NEXT_HEADING_FOR_LONE_NODE"))
    {
      if (force <= 0 && options->USE_NEXT_HEADING_FOR_LONE_NODE.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->USE_NEXT_HEADING_FOR_LONE_NODE.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "USE_NEXT_HEADING_FOR_LONE_NODE", SvPVutf8_nolen (value));
              options->USE_NEXT_HEADING_FOR_LONE_NODE.o.integer = -1;
              return -3;
            }
        }
      else
        options->USE_NEXT_HEADING_FOR_LONE_NODE.o.integer = -1;
    }
  else if (!strcmp (key, "USE_NODES"))
    {
      if (force <= 0 && options->USE_NODES.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->USE_NODES.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "USE_NODES", SvPVutf8_nolen (value));
              options->USE_NODES.o.integer = -1;
              return -3;
            }
        }
      else
        options->USE_NODES.o.integer = -1;
    }
  else if (!strcmp (key, "USE_NODE_DIRECTIONS"))
    {
      if (force <= 0 && options->USE_NODE_DIRECTIONS.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->USE_NODE_DIRECTIONS.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "USE_NODE_DIRECTIONS", SvPVutf8_nolen (value));
              options->USE_NODE_DIRECTIONS.o.integer = -1;
              return -3;
            }
        }
      else
        options->USE_NODE_DIRECTIONS.o.integer = -1;
    }
  else if (!strcmp (key, "USE_NUMERIC_ENTITY"))
    {
      if (force <= 0 && options->USE_NUMERIC_ENTITY.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->USE_NUMERIC_ENTITY.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "USE_NUMERIC_ENTITY", SvPVutf8_nolen (value));
              options->USE_NUMERIC_ENTITY.o.integer = -1;
              return -3;
            }
        }
      else
        options->USE_NUMERIC_ENTITY.o.integer = -1;
    }
  else if (!strcmp (key, "USE_REL_REV"))
    {
      if (force <= 0 && options->USE_REL_REV.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->USE_REL_REV.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "USE_REL_REV", SvPVutf8_nolen (value));
              options->USE_REL_REV.o.integer = -1;
              return -3;
            }
        }
      else
        options->USE_REL_REV.o.integer = -1;
    }
  else if (!strcmp (key, "USE_SETFILENAME_EXTENSION"))
    {
      if (force <= 0 && options->USE_SETFILENAME_EXTENSION.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->USE_SETFILENAME_EXTENSION.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "USE_SETFILENAME_EXTENSION", SvPVutf8_nolen (value));
              options->USE_SETFILENAME_EXTENSION.o.integer = -1;
              return -3;
            }
        }
      else
        options->USE_SETFILENAME_EXTENSION.o.integer = -1;
    }
  else if (!strcmp (key, "USE_TITLEPAGE_FOR_TITLE"))
    {
      if (force <= 0 && options->USE_TITLEPAGE_FOR_TITLE.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->USE_TITLEPAGE_FOR_TITLE.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "USE_TITLEPAGE_FOR_TITLE", SvPVutf8_nolen (value));
              options->USE_TITLEPAGE_FOR_TITLE.o.integer = -1;
              return -3;
            }
        }
      else
        options->USE_TITLEPAGE_FOR_TITLE.o.integer = -1;
    }
  else if (!strcmp (key, "USE_UNIDECODE"))
    {
      if (force <= 0 && options->USE_UNIDECODE.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->USE_UNIDECODE.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "USE_UNIDECODE", SvPVutf8_nolen (value));
              options->USE_UNIDECODE.o.integer = -1;
              return -3;
            }
        }
      else
        options->USE_UNIDECODE.o.integer = -1;
    }
  else if (!strcmp (key, "USE_XML_SYNTAX"))
    {
      if (force <= 0 && options->USE_XML_SYNTAX.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->USE_XML_SYNTAX.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "USE_XML_SYNTAX", SvPVutf8_nolen (value));
              options->USE_XML_SYNTAX.o.integer = -1;
              return -3;
            }
        }
      else
        options->USE_XML_SYNTAX.o.integer = -1;
    }
  else if (!strcmp (key, "VERTICAL_HEAD_NAVIGATION"))
    {
      if (force <= 0 && options->VERTICAL_HEAD_NAVIGATION.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->VERTICAL_HEAD_NAVIGATION.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "VERTICAL_HEAD_NAVIGATION", SvPVutf8_nolen (value));
              options->VERTICAL_HEAD_NAVIGATION.o.integer = -1;
              return -3;
            }
        }
      else
        options->VERTICAL_HEAD_NAVIGATION.o.integer = -1;
    }
  else if (!strcmp (key, "WORDS_IN_PAGE"))
    {
      if (force <= 0 && options->WORDS_IN_PAGE.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->WORDS_IN_PAGE.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "WORDS_IN_PAGE", SvPVutf8_nolen (value));
              options->WORDS_IN_PAGE.o.integer = -1;
              return -3;
            }
        }
      else
        options->WORDS_IN_PAGE.o.integer = -1;
    }
  else if (!strcmp (key, "XREF_USE_FLOAT_LABEL"))
    {
      if (force <= 0 && options->XREF_USE_FLOAT_LABEL.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->XREF_USE_FLOAT_LABEL.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "XREF_USE_FLOAT_LABEL", SvPVutf8_nolen (value));
              options->XREF_USE_FLOAT_LABEL.o.integer = -1;
              return -3;
            }
        }
      else
        options->XREF_USE_FLOAT_LABEL.o.integer = -1;
    }
  else if (!strcmp (key, "XREF_USE_NODE_NAME_ARG"))
    {
      if (force <= 0 && options->XREF_USE_NODE_NAME_ARG.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->XREF_USE_NODE_NAME_ARG.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "XREF_USE_NODE_NAME_ARG", SvPVutf8_nolen (value));
              options->XREF_USE_NODE_NAME_ARG.o.integer = -1;
              return -3;
            }
        }
      else
        options->XREF_USE_NODE_NAME_ARG.o.integer = -1;
    }
  else if (!strcmp (key, "XS_EXTERNAL_CONVERSION"))
    {
      if (force <= 0 && options->XS_EXTERNAL_CONVERSION.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->XS_EXTERNAL_CONVERSION.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "XS_EXTERNAL_CONVERSION", SvPVutf8_nolen (value));
              options->XS_EXTERNAL_CONVERSION.o.integer = -1;
              return -3;
            }
        }
      else
        options->XS_EXTERNAL_CONVERSION.o.integer = -1;
    }
  else if (!strcmp (key, "XS_EXTERNAL_FORMATTING"))
    {
      if (force <= 0 && options->XS_EXTERNAL_FORMATTING.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->XS_EXTERNAL_FORMATTING.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "XS_EXTERNAL_FORMATTING", SvPVutf8_nolen (value));
              options->XS_EXTERNAL_FORMATTING.o.integer = -1;
              return -3;
            }
        }
      else
        options->XS_EXTERNAL_FORMATTING.o.integer = -1;
    }
  else if (!strcmp (key, "XS_STRXFRM_COLLATION_LOCALE"))
    {
      if (force <= 0 && options->XS_STRXFRM_COLLATION_LOCALE.configured > 0)
        return -1;

      non_perl_free (options->XS_STRXFRM_COLLATION_LOCALE.o.string);
      if (SvOK (value))
        options->XS_STRXFRM_COLLATION_LOCALE.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->XS_STRXFRM_COLLATION_LOCALE.o.string = 0;
    }
  else if (!strcmp (key, "_INLINE_STYLE_WIDTH"))
    {
      if (force <= 0 && options->_INLINE_STYLE_WIDTH.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->_INLINE_STYLE_WIDTH.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "_INLINE_STYLE_WIDTH", SvPVutf8_nolen (value));
              options->_INLINE_STYLE_WIDTH.o.integer = -1;
              return -3;
            }
        }
      else
        options->_INLINE_STYLE_WIDTH.o.integer = -1;
    }

/* converter_other */

  else if (!strcmp (key, "LINKS_BUTTONS"))
    {
      if (force <= 0 && options->LINKS_BUTTONS.configured > 0)
        return -1;

      if (options->LINKS_BUTTONS.o.buttons)
        {
          options->BIT_user_function_number -= options->LINKS_BUTTONS.o.buttons->BIT_user_function_number;
          html_free_button_specification_list (options->LINKS_BUTTONS.o.buttons);
        }

      options->LINKS_BUTTONS.o.buttons = html_get_button_specification_list (converter, value);
      if (options->LINKS_BUTTONS.o.buttons)
        options->BIT_user_function_number += options->LINKS_BUTTONS.o.buttons->BIT_user_function_number;
    }
  else if (!strcmp (key, "TOP_BUTTONS"))
    {
      if (force <= 0 && options->TOP_BUTTONS.configured > 0)
        return -1;

      if (options->TOP_BUTTONS.o.buttons)
        {
          options->BIT_user_function_number -= options->TOP_BUTTONS.o.buttons->BIT_user_function_number;
          html_free_button_specification_list (options->TOP_BUTTONS.o.buttons);
        }

      options->TOP_BUTTONS.o.buttons = html_get_button_specification_list (converter, value);
      if (options->TOP_BUTTONS.o.buttons)
        options->BIT_user_function_number += options->TOP_BUTTONS.o.buttons->BIT_user_function_number;
    }
  else if (!strcmp (key, "TOP_FOOTER_BUTTONS"))
    {
      if (force <= 0 && options->TOP_FOOTER_BUTTONS.configured > 0)
        return -1;

      if (options->TOP_FOOTER_BUTTONS.o.buttons)
        {
          options->BIT_user_function_number -= options->TOP_FOOTER_BUTTONS.o.buttons->BIT_user_function_number;
          html_free_button_specification_list (options->TOP_FOOTER_BUTTONS.o.buttons);
        }

      options->TOP_FOOTER_BUTTONS.o.buttons = html_get_button_specification_list (converter, value);
      if (options->TOP_FOOTER_BUTTONS.o.buttons)
        options->BIT_user_function_number += options->TOP_FOOTER_BUTTONS.o.buttons->BIT_user_function_number;
    }
  else if (!strcmp (key, "SECTION_BUTTONS"))
    {
      if (force <= 0 && options->SECTION_BUTTONS.configured > 0)
        return -1;

      if (options->SECTION_BUTTONS.o.buttons)
        {
          options->BIT_user_function_number -= options->SECTION_BUTTONS.o.buttons->BIT_user_function_number;
          html_free_button_specification_list (options->SECTION_BUTTONS.o.buttons);
        }

      options->SECTION_BUTTONS.o.buttons = html_get_button_specification_list (converter, value);
      if (options->SECTION_BUTTONS.o.buttons)
        options->BIT_user_function_number += options->SECTION_BUTTONS.o.buttons->BIT_user_function_number;
    }
  else if (!strcmp (key, "CHAPTER_FOOTER_BUTTONS"))
    {
      if (force <= 0 && options->CHAPTER_FOOTER_BUTTONS.configured > 0)
        return -1;

      if (options->CHAPTER_FOOTER_BUTTONS.o.buttons)
        {
          options->BIT_user_function_number -= options->CHAPTER_FOOTER_BUTTONS.o.buttons->BIT_user_function_number;
          html_free_button_specification_list (options->CHAPTER_FOOTER_BUTTONS.o.buttons);
        }

      options->CHAPTER_FOOTER_BUTTONS.o.buttons = html_get_button_specification_list (converter, value);
      if (options->CHAPTER_FOOTER_BUTTONS.o.buttons)
        options->BIT_user_function_number += options->CHAPTER_FOOTER_BUTTONS.o.buttons->BIT_user_function_number;
    }
  else if (!strcmp (key, "SECTION_FOOTER_BUTTONS"))
    {
      if (force <= 0 && options->SECTION_FOOTER_BUTTONS.configured > 0)
        return -1;

      if (options->SECTION_FOOTER_BUTTONS.o.buttons)
        {
          options->BIT_user_function_number -= options->SECTION_FOOTER_BUTTONS.o.buttons->BIT_user_function_number;
          html_free_button_specification_list (options->SECTION_FOOTER_BUTTONS.o.buttons);
        }

      options->SECTION_FOOTER_BUTTONS.o.buttons = html_get_button_specification_list (converter, value);
      if (options->SECTION_FOOTER_BUTTONS.o.buttons)
        options->BIT_user_function_number += options->SECTION_FOOTER_BUTTONS.o.buttons->BIT_user_function_number;
    }
  else if (!strcmp (key, "NODE_FOOTER_BUTTONS"))
    {
      if (force <= 0 && options->NODE_FOOTER_BUTTONS.configured > 0)
        return -1;

      if (options->NODE_FOOTER_BUTTONS.o.buttons)
        {
          options->BIT_user_function_number -= options->NODE_FOOTER_BUTTONS.o.buttons->BIT_user_function_number;
          html_free_button_specification_list (options->NODE_FOOTER_BUTTONS.o.buttons);
        }

      options->NODE_FOOTER_BUTTONS.o.buttons = html_get_button_specification_list (converter, value);
      if (options->NODE_FOOTER_BUTTONS.o.buttons)
        options->BIT_user_function_number += options->NODE_FOOTER_BUTTONS.o.buttons->BIT_user_function_number;
    }
  else if (!strcmp (key, "MISC_BUTTONS"))
    {
      if (force <= 0 && options->MISC_BUTTONS.configured > 0)
        return -1;

      if (options->MISC_BUTTONS.o.buttons)
        {
          options->BIT_user_function_number -= options->MISC_BUTTONS.o.buttons->BIT_user_function_number;
          html_free_button_specification_list (options->MISC_BUTTONS.o.buttons);
        }

      options->MISC_BUTTONS.o.buttons = html_get_button_specification_list (converter, value);
      if (options->MISC_BUTTONS.o.buttons)
        options->BIT_user_function_number += options->MISC_BUTTONS.o.buttons->BIT_user_function_number;
    }
  else if (!strcmp (key, "CHAPTER_BUTTONS"))
    {
      if (force <= 0 && options->CHAPTER_BUTTONS.configured > 0)
        return -1;

      if (options->CHAPTER_BUTTONS.o.buttons)
        {
          options->BIT_user_function_number -= options->CHAPTER_BUTTONS.o.buttons->BIT_user_function_number;
          html_free_button_specification_list (options->CHAPTER_BUTTONS.o.buttons);
        }

      options->CHAPTER_BUTTONS.o.buttons = html_get_button_specification_list (converter, value);
      if (options->CHAPTER_BUTTONS.o.buttons)
        options->BIT_user_function_number += options->CHAPTER_BUTTONS.o.buttons->BIT_user_function_number;
    }
  else if (!strcmp (key, "ACTIVE_ICONS"))
    {
      if (force <= 0 && options->ACTIVE_ICONS.configured > 0)
        return -1;

      html_free_direction_icons (options->ACTIVE_ICONS.o.icons);
      html_get_direction_icons_sv (converter, options->ACTIVE_ICONS.o.icons, value);
    }
  else if (!strcmp (key, "PASSIVE_ICONS"))
    {
      if (force <= 0 && options->PASSIVE_ICONS.configured > 0)
        return -1;

      html_free_direction_icons (options->PASSIVE_ICONS.o.icons);
      html_get_direction_icons_sv (converter, options->PASSIVE_ICONS.o.icons, value);
    }

/* multiple_at_command */

  else if (!strcmp (key, "allowcodebreaks"))
    {
      if (force <= 0 && options->allowcodebreaks.configured > 0)
        return -1;

      non_perl_free (options->allowcodebreaks.o.string);
      if (SvOK (value))
        options->allowcodebreaks.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->allowcodebreaks.o.string = 0;
    }
  else if (!strcmp (key, "clickstyle"))
    {
      if (force <= 0 && options->clickstyle.configured > 0)
        return -1;

      non_perl_free (options->clickstyle.o.string);
      if (SvOK (value))
        options->clickstyle.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->clickstyle.o.string = 0;
    }
  else if (!strcmp (key, "codequotebacktick"))
    {
      if (force <= 0 && options->codequotebacktick.configured > 0)
        return -1;

      non_perl_free (options->codequotebacktick.o.string);
      if (SvOK (value))
        options->codequotebacktick.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->codequotebacktick.o.string = 0;
    }
  else if (!strcmp (key, "codequoteundirected"))
    {
      if (force <= 0 && options->codequoteundirected.configured > 0)
        return -1;

      non_perl_free (options->codequoteundirected.o.string);
      if (SvOK (value))
        options->codequoteundirected.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->codequoteundirected.o.string = 0;
    }
  else if (!strcmp (key, "contents"))
    {
      if (force <= 0 && options->contents.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->contents.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "contents", SvPVutf8_nolen (value));
              options->contents.o.integer = -1;
              return -3;
            }
        }
      else
        options->contents.o.integer = -1;
    }
  else if (!strcmp (key, "deftypefnnewline"))
    {
      if (force <= 0 && options->deftypefnnewline.configured > 0)
        return -1;

      non_perl_free (options->deftypefnnewline.o.string);
      if (SvOK (value))
        options->deftypefnnewline.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->deftypefnnewline.o.string = 0;
    }
  else if (!strcmp (key, "documentencoding"))
    {
      if (force <= 0 && options->documentencoding.configured > 0)
        return -1;

      non_perl_free (options->documentencoding.o.string);
      if (SvOK (value))
        options->documentencoding.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->documentencoding.o.string = 0;
    }
  else if (!strcmp (key, "documentlanguage"))
    {
      if (force <= 0 && options->documentlanguage.configured > 0)
        return -1;

      non_perl_free (options->documentlanguage.o.string);
      if (SvOK (value))
        options->documentlanguage.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->documentlanguage.o.string = 0;
    }
  else if (!strcmp (key, "evenfooting"))
    {
      if (force <= 0 && options->evenfooting.configured > 0)
        return -1;

      non_perl_free (options->evenfooting.o.string);
      if (SvOK (value))
        options->evenfooting.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->evenfooting.o.string = 0;
    }
  else if (!strcmp (key, "evenheading"))
    {
      if (force <= 0 && options->evenheading.configured > 0)
        return -1;

      non_perl_free (options->evenheading.o.string);
      if (SvOK (value))
        options->evenheading.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->evenheading.o.string = 0;
    }
  else if (!strcmp (key, "everyfooting"))
    {
      if (force <= 0 && options->everyfooting.configured > 0)
        return -1;

      non_perl_free (options->everyfooting.o.string);
      if (SvOK (value))
        options->everyfooting.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->everyfooting.o.string = 0;
    }
  else if (!strcmp (key, "everyheading"))
    {
      if (force <= 0 && options->everyheading.configured > 0)
        return -1;

      non_perl_free (options->everyheading.o.string);
      if (SvOK (value))
        options->everyheading.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->everyheading.o.string = 0;
    }
  else if (!strcmp (key, "exampleindent"))
    {
      if (force <= 0 && options->exampleindent.configured > 0)
        return -1;

      non_perl_free (options->exampleindent.o.string);
      if (SvOK (value))
        options->exampleindent.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->exampleindent.o.string = 0;
    }
  else if (!strcmp (key, "firstparagraphindent"))
    {
      if (force <= 0 && options->firstparagraphindent.configured > 0)
        return -1;

      non_perl_free (options->firstparagraphindent.o.string);
      if (SvOK (value))
        options->firstparagraphindent.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->firstparagraphindent.o.string = 0;
    }
  else if (!strcmp (key, "frenchspacing"))
    {
      if (force <= 0 && options->frenchspacing.configured > 0)
        return -1;

      non_perl_free (options->frenchspacing.o.string);
      if (SvOK (value))
        options->frenchspacing.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->frenchspacing.o.string = 0;
    }
  else if (!strcmp (key, "headings"))
    {
      if (force <= 0 && options->headings.configured > 0)
        return -1;

      non_perl_free (options->headings.o.string);
      if (SvOK (value))
        options->headings.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->headings.o.string = 0;
    }
  else if (!strcmp (key, "kbdinputstyle"))
    {
      if (force <= 0 && options->kbdinputstyle.configured > 0)
        return -1;

      non_perl_free (options->kbdinputstyle.o.string);
      if (SvOK (value))
        options->kbdinputstyle.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->kbdinputstyle.o.string = 0;
    }
  else if (!strcmp (key, "microtype"))
    {
      if (force <= 0 && options->microtype.configured > 0)
        return -1;

      non_perl_free (options->microtype.o.string);
      if (SvOK (value))
        options->microtype.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->microtype.o.string = 0;
    }
  else if (!strcmp (key, "oddheading"))
    {
      if (force <= 0 && options->oddheading.configured > 0)
        return -1;

      non_perl_free (options->oddheading.o.string);
      if (SvOK (value))
        options->oddheading.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->oddheading.o.string = 0;
    }
  else if (!strcmp (key, "oddfooting"))
    {
      if (force <= 0 && options->oddfooting.configured > 0)
        return -1;

      non_perl_free (options->oddfooting.o.string);
      if (SvOK (value))
        options->oddfooting.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->oddfooting.o.string = 0;
    }
  else if (!strcmp (key, "paragraphindent"))
    {
      if (force <= 0 && options->paragraphindent.configured > 0)
        return -1;

      non_perl_free (options->paragraphindent.o.string);
      if (SvOK (value))
        options->paragraphindent.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->paragraphindent.o.string = 0;
    }
  else if (!strcmp (key, "shortcontents"))
    {
      if (force <= 0 && options->shortcontents.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->shortcontents.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "shortcontents", SvPVutf8_nolen (value));
              options->shortcontents.o.integer = -1;
              return -3;
            }
        }
      else
        options->shortcontents.o.integer = -1;
    }
  else if (!strcmp (key, "summarycontents"))
    {
      if (force <= 0 && options->summarycontents.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->summarycontents.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "summarycontents", SvPVutf8_nolen (value));
              options->summarycontents.o.integer = -1;
              return -3;
            }
        }
      else
        options->summarycontents.o.integer = -1;
    }
  else if (!strcmp (key, "urefbreakstyle"))
    {
      if (force <= 0 && options->urefbreakstyle.configured > 0)
        return -1;

      non_perl_free (options->urefbreakstyle.o.string);
      if (SvOK (value))
        options->urefbreakstyle.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->urefbreakstyle.o.string = 0;
    }
  else if (!strcmp (key, "xrefautomaticsectiontitle"))
    {
      if (force <= 0 && options->xrefautomaticsectiontitle.configured > 0)
        return -1;

      non_perl_free (options->xrefautomaticsectiontitle.o.string);
      if (SvOK (value))
        options->xrefautomaticsectiontitle.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->xrefautomaticsectiontitle.o.string = 0;
    }

/* program_cmdline */

  else if (!strcmp (key, "MACRO_EXPAND"))
    {
      if (force <= 0 && options->MACRO_EXPAND.configured > 0)
        return -1;

      non_perl_free (options->MACRO_EXPAND.o.string);
      if (SvOK (value))
        options->MACRO_EXPAND.o.string = non_perl_strdup (SvPVbyte_nolen (value));
      else
        options->MACRO_EXPAND.o.string = 0;
    }
  else if (!strcmp (key, "INTERNAL_LINKS"))
    {
      if (force <= 0 && options->INTERNAL_LINKS.configured > 0)
        return -1;

      non_perl_free (options->INTERNAL_LINKS.o.string);
      if (SvOK (value))
        options->INTERNAL_LINKS.o.string = non_perl_strdup (SvPVbyte_nolen (value));
      else
        options->INTERNAL_LINKS.o.string = 0;
    }
  else if (!strcmp (key, "ERROR_LIMIT"))
    {
      if (force <= 0 && options->ERROR_LIMIT.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->ERROR_LIMIT.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "ERROR_LIMIT", SvPVutf8_nolen (value));
              options->ERROR_LIMIT.o.integer = -1;
              return -3;
            }
        }
      else
        options->ERROR_LIMIT.o.integer = -1;
    }
  else if (!strcmp (key, "FORCE"))
    {
      if (force <= 0 && options->FORCE.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->FORCE.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "FORCE", SvPVutf8_nolen (value));
              options->FORCE.o.integer = -1;
              return -3;
            }
        }
      else
        options->FORCE.o.integer = -1;
    }
  else if (!strcmp (key, "NO_WARN"))
    {
      if (force <= 0 && options->NO_WARN.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->NO_WARN.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "NO_WARN", SvPVutf8_nolen (value));
              options->NO_WARN.o.integer = -1;
              return -3;
            }
        }
      else
        options->NO_WARN.o.integer = -1;
    }
  else if (!strcmp (key, "SILENT"))
    {
      if (force <= 0 && options->SILENT.configured > 0)
        return -1;

      non_perl_free (options->SILENT.o.string);
      if (SvOK (value))
        options->SILENT.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->SILENT.o.string = 0;
    }
  else if (!strcmp (key, "TRACE_INCLUDES"))
    {
      if (force <= 0 && options->TRACE_INCLUDES.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->TRACE_INCLUDES.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "TRACE_INCLUDES", SvPVutf8_nolen (value));
              options->TRACE_INCLUDES.o.integer = -1;
              return -3;
            }
        }
      else
        options->TRACE_INCLUDES.o.integer = -1;
    }
  else if (!strcmp (key, "FORMAT_MENU"))
    {
      if (force <= 0 && options->FORMAT_MENU.configured > 0)
        return -1;

      non_perl_free (options->FORMAT_MENU.o.string);
      if (SvOK (value))
        options->FORMAT_MENU.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->FORMAT_MENU.o.string = 0;
    }

/* program_customization */

  else if (!strcmp (key, "CHECK_NORMAL_MENU_STRUCTURE"))
    {
      if (force <= 0 && options->CHECK_NORMAL_MENU_STRUCTURE.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->CHECK_NORMAL_MENU_STRUCTURE.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "CHECK_NORMAL_MENU_STRUCTURE", SvPVutf8_nolen (value));
              options->CHECK_NORMAL_MENU_STRUCTURE.o.integer = -1;
              return -3;
            }
        }
      else
        options->CHECK_NORMAL_MENU_STRUCTURE.o.integer = -1;
    }
  else if (!strcmp (key, "CHECK_MISSING_MENU_ENTRY"))
    {
      if (force <= 0 && options->CHECK_MISSING_MENU_ENTRY.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->CHECK_MISSING_MENU_ENTRY.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "CHECK_MISSING_MENU_ENTRY", SvPVutf8_nolen (value));
              options->CHECK_MISSING_MENU_ENTRY.o.integer = -1;
              return -3;
            }
        }
      else
        options->CHECK_MISSING_MENU_ENTRY.o.integer = -1;
    }
  else if (!strcmp (key, "DUMP_TREE"))
    {
      if (force <= 0 && options->DUMP_TREE.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->DUMP_TREE.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "DUMP_TREE", SvPVutf8_nolen (value));
              options->DUMP_TREE.o.integer = -1;
              return -3;
            }
        }
      else
        options->DUMP_TREE.o.integer = -1;
    }
  else if (!strcmp (key, "DUMP_TEXI"))
    {
      if (force <= 0 && options->DUMP_TEXI.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->DUMP_TEXI.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "DUMP_TEXI", SvPVutf8_nolen (value));
              options->DUMP_TEXI.o.integer = -1;
              return -3;
            }
        }
      else
        options->DUMP_TEXI.o.integer = -1;
    }
  else if (!strcmp (key, "SHOW_BUILTIN_CSS_RULES"))
    {
      if (force <= 0 && options->SHOW_BUILTIN_CSS_RULES.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->SHOW_BUILTIN_CSS_RULES.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "SHOW_BUILTIN_CSS_RULES", SvPVutf8_nolen (value));
              options->SHOW_BUILTIN_CSS_RULES.o.integer = -1;
              return -3;
            }
        }
      else
        options->SHOW_BUILTIN_CSS_RULES.o.integer = -1;
    }
  else if (!strcmp (key, "SORT_ELEMENT_COUNT"))
    {
      if (force <= 0 && options->SORT_ELEMENT_COUNT.configured > 0)
        return -1;

      non_perl_free (options->SORT_ELEMENT_COUNT.o.string);
      if (SvOK (value))
        options->SORT_ELEMENT_COUNT.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->SORT_ELEMENT_COUNT.o.string = 0;
    }
  else if (!strcmp (key, "SORT_ELEMENT_COUNT_WORDS"))
    {
      if (force <= 0 && options->SORT_ELEMENT_COUNT_WORDS.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->SORT_ELEMENT_COUNT_WORDS.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "SORT_ELEMENT_COUNT_WORDS", SvPVutf8_nolen (value));
              options->SORT_ELEMENT_COUNT_WORDS.o.integer = -1;
              return -3;
            }
        }
      else
        options->SORT_ELEMENT_COUNT_WORDS.o.integer = -1;
    }
  else if (!strcmp (key, "TEXI2DVI"))
    {
      if (force <= 0 && options->TEXI2DVI.configured > 0)
        return -1;

      non_perl_free (options->TEXI2DVI.o.string);
      if (SvOK (value))
        options->TEXI2DVI.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->TEXI2DVI.o.string = 0;
    }
  else if (!strcmp (key, "TREE_TRANSFORMATIONS"))
    {
      if (force <= 0 && options->TREE_TRANSFORMATIONS.configured > 0)
        return -1;

      non_perl_free (options->TREE_TRANSFORMATIONS.o.string);
      if (SvOK (value))
        options->TREE_TRANSFORMATIONS.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->TREE_TRANSFORMATIONS.o.string = 0;
    }

/* unique_at_command */

  else if (!strcmp (key, "afivepaper"))
    {
      if (force <= 0 && options->afivepaper.configured > 0)
        return -1;

      non_perl_free (options->afivepaper.o.string);
      if (SvOK (value))
        options->afivepaper.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->afivepaper.o.string = 0;
    }
  else if (!strcmp (key, "afourpaper"))
    {
      if (force <= 0 && options->afourpaper.configured > 0)
        return -1;

      non_perl_free (options->afourpaper.o.string);
      if (SvOK (value))
        options->afourpaper.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->afourpaper.o.string = 0;
    }
  else if (!strcmp (key, "afourlatex"))
    {
      if (force <= 0 && options->afourlatex.configured > 0)
        return -1;

      non_perl_free (options->afourlatex.o.string);
      if (SvOK (value))
        options->afourlatex.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->afourlatex.o.string = 0;
    }
  else if (!strcmp (key, "afourwide"))
    {
      if (force <= 0 && options->afourwide.configured > 0)
        return -1;

      non_perl_free (options->afourwide.o.string);
      if (SvOK (value))
        options->afourwide.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->afourwide.o.string = 0;
    }
  else if (!strcmp (key, "bsixpaper"))
    {
      if (force <= 0 && options->bsixpaper.configured > 0)
        return -1;

      non_perl_free (options->bsixpaper.o.string);
      if (SvOK (value))
        options->bsixpaper.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->bsixpaper.o.string = 0;
    }
  else if (!strcmp (key, "documentdescription"))
    {
      if (force <= 0 && options->documentdescription.configured > 0)
        return -1;

      non_perl_free (options->documentdescription.o.string);
      if (SvOK (value))
        options->documentdescription.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->documentdescription.o.string = 0;
    }
  else if (!strcmp (key, "evenfootingmarks"))
    {
      if (force <= 0 && options->evenfootingmarks.configured > 0)
        return -1;

      non_perl_free (options->evenfootingmarks.o.string);
      if (SvOK (value))
        options->evenfootingmarks.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->evenfootingmarks.o.string = 0;
    }
  else if (!strcmp (key, "evenheadingmarks"))
    {
      if (force <= 0 && options->evenheadingmarks.configured > 0)
        return -1;

      non_perl_free (options->evenheadingmarks.o.string);
      if (SvOK (value))
        options->evenheadingmarks.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->evenheadingmarks.o.string = 0;
    }
  else if (!strcmp (key, "everyfootingmarks"))
    {
      if (force <= 0 && options->everyfootingmarks.configured > 0)
        return -1;

      non_perl_free (options->everyfootingmarks.o.string);
      if (SvOK (value))
        options->everyfootingmarks.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->everyfootingmarks.o.string = 0;
    }
  else if (!strcmp (key, "everyheadingmarks"))
    {
      if (force <= 0 && options->everyheadingmarks.configured > 0)
        return -1;

      non_perl_free (options->everyheadingmarks.o.string);
      if (SvOK (value))
        options->everyheadingmarks.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->everyheadingmarks.o.string = 0;
    }
  else if (!strcmp (key, "fonttextsize"))
    {
      if (force <= 0 && options->fonttextsize.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->fonttextsize.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "fonttextsize", SvPVutf8_nolen (value));
              options->fonttextsize.o.integer = -1;
              return -3;
            }
        }
      else
        options->fonttextsize.o.integer = -1;
    }
  else if (!strcmp (key, "footnotestyle"))
    {
      if (force <= 0 && options->footnotestyle.configured > 0)
        return -1;

      non_perl_free (options->footnotestyle.o.string);
      if (SvOK (value))
        options->footnotestyle.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->footnotestyle.o.string = 0;
    }
  else if (!strcmp (key, "novalidate"))
    {
      if (force <= 0 && options->novalidate.configured > 0)
        return -1;

      if (SvOK (value))
        {
          if (looks_like_number (value))
            options->novalidate.o.integer = SvIV (value);
          else
            {
              fprintf (stderr, "BUG: %s: not an integer: %s\n",
                       "novalidate", SvPVutf8_nolen (value));
              options->novalidate.o.integer = -1;
              return -3;
            }
        }
      else
        options->novalidate.o.integer = -1;
    }
  else if (!strcmp (key, "oddfootingmarks"))
    {
      if (force <= 0 && options->oddfootingmarks.configured > 0)
        return -1;

      non_perl_free (options->oddfootingmarks.o.string);
      if (SvOK (value))
        options->oddfootingmarks.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->oddfootingmarks.o.string = 0;
    }
  else if (!strcmp (key, "oddheadingmarks"))
    {
      if (force <= 0 && options->oddheadingmarks.configured > 0)
        return -1;

      non_perl_free (options->oddheadingmarks.o.string);
      if (SvOK (value))
        options->oddheadingmarks.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->oddheadingmarks.o.string = 0;
    }
  else if (!strcmp (key, "pagesizes"))
    {
      if (force <= 0 && options->pagesizes.configured > 0)
        return -1;

      non_perl_free (options->pagesizes.o.string);
      if (SvOK (value))
        options->pagesizes.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->pagesizes.o.string = 0;
    }
  else if (!strcmp (key, "setchapternewpage"))
    {
      if (force <= 0 && options->setchapternewpage.configured > 0)
        return -1;

      non_perl_free (options->setchapternewpage.o.string);
      if (SvOK (value))
        options->setchapternewpage.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->setchapternewpage.o.string = 0;
    }
  else if (!strcmp (key, "setfilename"))
    {
      if (force <= 0 && options->setfilename.configured > 0)
        return -1;

      non_perl_free (options->setfilename.o.string);
      if (SvOK (value))
        options->setfilename.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->setfilename.o.string = 0;
    }
  else if (!strcmp (key, "smallbook"))
    {
      if (force <= 0 && options->smallbook.configured > 0)
        return -1;

      non_perl_free (options->smallbook.o.string);
      if (SvOK (value))
        options->smallbook.o.string = non_perl_strdup (SvPVutf8_nolen (value));
      else
        options->smallbook.o.string = 0;
    }
  else
    return -2; /* unknown */

  return 0;
}

void
html_fill_sv_options (OPTIONS *options, const CONVERTER *converter)
{
  if (options->LINKS_BUTTONS.o.buttons)
    html_fill_button_sv_specification_list (converter, options->LINKS_BUTTONS.o.buttons);

  if (options->TOP_BUTTONS.o.buttons)
    html_fill_button_sv_specification_list (converter, options->TOP_BUTTONS.o.buttons);

  if (options->TOP_FOOTER_BUTTONS.o.buttons)
    html_fill_button_sv_specification_list (converter, options->TOP_FOOTER_BUTTONS.o.buttons);

  if (options->SECTION_BUTTONS.o.buttons)
    html_fill_button_sv_specification_list (converter, options->SECTION_BUTTONS.o.buttons);

  if (options->CHAPTER_FOOTER_BUTTONS.o.buttons)
    html_fill_button_sv_specification_list (converter, options->CHAPTER_FOOTER_BUTTONS.o.buttons);

  if (options->SECTION_FOOTER_BUTTONS.o.buttons)
    html_fill_button_sv_specification_list (converter, options->SECTION_FOOTER_BUTTONS.o.buttons);

  if (options->NODE_FOOTER_BUTTONS.o.buttons)
    html_fill_button_sv_specification_list (converter, options->NODE_FOOTER_BUTTONS.o.buttons);

  if (options->MISC_BUTTONS.o.buttons)
    html_fill_button_sv_specification_list (converter, options->MISC_BUTTONS.o.buttons);

  if (options->CHAPTER_BUTTONS.o.buttons)
    html_fill_button_sv_specification_list (converter, options->CHAPTER_BUTTONS.o.buttons);

  if (options->ACTIVE_ICONS.o.icons)
    html_fill_direction_icons (converter, options->ACTIVE_ICONS.o.icons);

  if (options->PASSIVE_ICONS.o.icons)
    html_fill_direction_icons (converter, options->PASSIVE_ICONS.o.icons);

}

SV *
build_sv_option_key (const OPTIONS *options, const char *key,
                     const CONVERTER *converter)
{
  dTHX;

  if (0) {return newSV (0);}

/* array_cmdline */

  else if (!strcmp (key, "CSS_FILES"))
    {
      return newRV_noinc ((SV *) build_string_list(options->CSS_FILES.o.strlist, svt_byte));
    }
  else if (!strcmp (key, "CSS_REFS"))
    {
      return newRV_noinc ((SV *) build_string_list(options->CSS_REFS.o.strlist, svt_char));
    }
  else if (!strcmp (key, "EXPANDED_FORMATS"))
    {
      return newRV_noinc ((SV *) build_string_list(options->EXPANDED_FORMATS.o.strlist, svt_byte));
    }
  else if (!strcmp (key, "INCLUDE_DIRECTORIES"))
    {
      return newRV_noinc ((SV *) build_string_list(options->INCLUDE_DIRECTORIES.o.strlist, svt_dir));
    }
  else if (!strcmp (key, "TEXINFO_LANGUAGE_DIRECTORIES"))
    {
      return newRV_noinc ((SV *) build_string_list(options->TEXINFO_LANGUAGE_DIRECTORIES.o.strlist, svt_dir));
    }

/* converter_cmdline */

  else if (!strcmp (key, "SPLIT_SIZE"))
    {
      if (options->SPLIT_SIZE.o.integer == -1)
        return newSV (0);
      return newSViv (options->SPLIT_SIZE.o.integer);
    }
  else if (!strcmp (key, "FILLCOLUMN"))
    {
      if (options->FILLCOLUMN.o.integer == -1)
        return newSV (0);
      return newSViv (options->FILLCOLUMN.o.integer);
    }
  else if (!strcmp (key, "NUMBER_SECTIONS"))
    {
      if (options->NUMBER_SECTIONS.o.integer == -1)
        return newSV (0);
      return newSViv (options->NUMBER_SECTIONS.o.integer);
    }
  else if (!strcmp (key, "NUMBER_FOOTNOTES"))
    {
      if (options->NUMBER_FOOTNOTES.o.integer == -1)
        return newSV (0);
      return newSViv (options->NUMBER_FOOTNOTES.o.integer);
    }
  else if (!strcmp (key, "TRANSLITERATE_FILE_NAMES"))
    {
      if (options->TRANSLITERATE_FILE_NAMES.o.integer == -1)
        return newSV (0);
      return newSViv (options->TRANSLITERATE_FILE_NAMES.o.integer);
    }
  else if (!strcmp (key, "SPLIT"))
    {
      if (!options->SPLIT.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->SPLIT.o.string, 0);
    }
  else if (!strcmp (key, "HEADERS"))
    {
      if (options->HEADERS.o.integer == -1)
        return newSV (0);
      return newSViv (options->HEADERS.o.integer);
    }
  else if (!strcmp (key, "NODE_FILES"))
    {
      if (options->NODE_FILES.o.integer == -1)
        return newSV (0);
      return newSViv (options->NODE_FILES.o.integer);
    }
  else if (!strcmp (key, "VERBOSE"))
    {
      if (options->VERBOSE.o.integer == -1)
        return newSV (0);
      return newSViv (options->VERBOSE.o.integer);
    }
  else if (!strcmp (key, "OUTFILE"))
    {
      if (!options->OUTFILE.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->OUTFILE.o.string, 0);
    }
  else if (!strcmp (key, "SUBDIR"))
    {
      if (!options->SUBDIR.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->SUBDIR.o.string, 0);
    }
  else if (!strcmp (key, "ENABLE_ENCODING"))
    {
      if (options->ENABLE_ENCODING.o.integer == -1)
        return newSV (0);
      return newSViv (options->ENABLE_ENCODING.o.integer);
    }

/* converter_customization */

  else if (!strcmp (key, "TOP_NODE_UP"))
    {
      if (!options->TOP_NODE_UP.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->TOP_NODE_UP.o.string, 0);
    }
  else if (!strcmp (key, "BASEFILENAME_LENGTH"))
    {
      if (options->BASEFILENAME_LENGTH.o.integer == -1)
        return newSV (0);
      return newSViv (options->BASEFILENAME_LENGTH.o.integer);
    }
  else if (!strcmp (key, "DOC_ENCODING_FOR_INPUT_FILE_NAME"))
    {
      if (options->DOC_ENCODING_FOR_INPUT_FILE_NAME.o.integer == -1)
        return newSV (0);
      return newSViv (options->DOC_ENCODING_FOR_INPUT_FILE_NAME.o.integer);
    }
  else if (!strcmp (key, "DOC_ENCODING_FOR_OUTPUT_FILE_NAME"))
    {
      if (options->DOC_ENCODING_FOR_OUTPUT_FILE_NAME.o.integer == -1)
        return newSV (0);
      return newSViv (options->DOC_ENCODING_FOR_OUTPUT_FILE_NAME.o.integer);
    }
  else if (!strcmp (key, "IMAGE_LINK_PREFIX"))
    {
      if (!options->IMAGE_LINK_PREFIX.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->IMAGE_LINK_PREFIX.o.string, 0);
    }
  else if (!strcmp (key, "CASE_INSENSITIVE_FILENAMES"))
    {
      if (options->CASE_INSENSITIVE_FILENAMES.o.integer == -1)
        return newSV (0);
      return newSViv (options->CASE_INSENSITIVE_FILENAMES.o.integer);
    }
  else if (!strcmp (key, "DEBUG"))
    {
      if (options->DEBUG.o.integer == -1)
        return newSV (0);
      return newSViv (options->DEBUG.o.integer);
    }
  else if (!strcmp (key, "HANDLER_FATAL_ERROR_LEVEL"))
    {
      if (options->HANDLER_FATAL_ERROR_LEVEL.o.integer == -1)
        return newSV (0);
      return newSViv (options->HANDLER_FATAL_ERROR_LEVEL.o.integer);
    }
  else if (!strcmp (key, "TEST"))
    {
      if (options->TEST.o.integer == -1)
        return newSV (0);
      return newSViv (options->TEST.o.integer);
    }
  else if (!strcmp (key, "TEXTCONTENT_COMMENT"))
    {
      if (options->TEXTCONTENT_COMMENT.o.integer == -1)
        return newSV (0);
      return newSViv (options->TEXTCONTENT_COMMENT.o.integer);
    }
  else if (!strcmp (key, "TEXINFO_DTD_VERSION"))
    {
      if (!options->TEXINFO_DTD_VERSION.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->TEXINFO_DTD_VERSION.o.string, 0);
    }
  else if (!strcmp (key, "USE_UNICODE_COLLATION"))
    {
      if (options->USE_UNICODE_COLLATION.o.integer == -1)
        return newSV (0);
      return newSViv (options->USE_UNICODE_COLLATION.o.integer);
    }
  else if (!strcmp (key, "AFTER_BODY_OPEN"))
    {
      if (!options->AFTER_BODY_OPEN.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->AFTER_BODY_OPEN.o.string, 0);
    }
  else if (!strcmp (key, "AFTER_SHORT_TOC_LINES"))
    {
      if (!options->AFTER_SHORT_TOC_LINES.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->AFTER_SHORT_TOC_LINES.o.string, 0);
    }
  else if (!strcmp (key, "AFTER_TOC_LINES"))
    {
      if (!options->AFTER_TOC_LINES.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->AFTER_TOC_LINES.o.string, 0);
    }
  else if (!strcmp (key, "ASCII_DASHES_AND_QUOTES"))
    {
      if (options->ASCII_DASHES_AND_QUOTES.o.integer == -1)
        return newSV (0);
      return newSViv (options->ASCII_DASHES_AND_QUOTES.o.integer);
    }
  else if (!strcmp (key, "ASCII_GLYPH"))
    {
      if (options->ASCII_GLYPH.o.integer == -1)
        return newSV (0);
      return newSViv (options->ASCII_GLYPH.o.integer);
    }
  else if (!strcmp (key, "ASCII_PUNCTUATION"))
    {
      if (options->ASCII_PUNCTUATION.o.integer == -1)
        return newSV (0);
      return newSViv (options->ASCII_PUNCTUATION.o.integer);
    }
  else if (!strcmp (key, "AUTO_MENU_DESCRIPTION_ALIGN_COLUMN"))
    {
      if (options->AUTO_MENU_DESCRIPTION_ALIGN_COLUMN.o.integer == -1)
        return newSV (0);
      return newSViv (options->AUTO_MENU_DESCRIPTION_ALIGN_COLUMN.o.integer);
    }
  else if (!strcmp (key, "AUTO_MENU_MAX_WIDTH"))
    {
      if (options->AUTO_MENU_MAX_WIDTH.o.integer == -1)
        return newSV (0);
      return newSViv (options->AUTO_MENU_MAX_WIDTH.o.integer);
    }
  else if (!strcmp (key, "BEFORE_SHORT_TOC_LINES"))
    {
      if (!options->BEFORE_SHORT_TOC_LINES.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->BEFORE_SHORT_TOC_LINES.o.string, 0);
    }
  else if (!strcmp (key, "BEFORE_TOC_LINES"))
    {
      if (!options->BEFORE_TOC_LINES.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->BEFORE_TOC_LINES.o.string, 0);
    }
  else if (!strcmp (key, "BIG_RULE"))
    {
      if (!options->BIG_RULE.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->BIG_RULE.o.string, 0);
    }
  else if (!strcmp (key, "BODY_ELEMENT_ATTRIBUTES"))
    {
      if (!options->BODY_ELEMENT_ATTRIBUTES.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->BODY_ELEMENT_ATTRIBUTES.o.string, 0);
    }
  else if (!strcmp (key, "CLASS_BEGIN_USEPACKAGE"))
    {
      if (!options->CLASS_BEGIN_USEPACKAGE.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->CLASS_BEGIN_USEPACKAGE.o.string, 0);
    }
  else if (!strcmp (key, "COPIABLE_LINKS"))
    {
      if (options->COPIABLE_LINKS.o.integer == -1)
        return newSV (0);
      return newSViv (options->COPIABLE_LINKS.o.integer);
    }
  else if (!strcmp (key, "CHAPTER_HEADER_LEVEL"))
    {
      if (options->CHAPTER_HEADER_LEVEL.o.integer == -1)
        return newSV (0);
      return newSViv (options->CHAPTER_HEADER_LEVEL.o.integer);
    }
  else if (!strcmp (key, "CHECK_HTMLXREF"))
    {
      if (options->CHECK_HTMLXREF.o.integer == -1)
        return newSV (0);
      return newSViv (options->CHECK_HTMLXREF.o.integer);
    }
  else if (!strcmp (key, "CLOSE_DOUBLE_QUOTE_SYMBOL"))
    {
      if (!options->CLOSE_DOUBLE_QUOTE_SYMBOL.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->CLOSE_DOUBLE_QUOTE_SYMBOL.o.string, 0);
    }
  else if (!strcmp (key, "CLOSE_QUOTE_SYMBOL"))
    {
      if (!options->CLOSE_QUOTE_SYMBOL.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->CLOSE_QUOTE_SYMBOL.o.string, 0);
    }
  else if (!strcmp (key, "COLLATION_LANGUAGE"))
    {
      if (!options->COLLATION_LANGUAGE.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->COLLATION_LANGUAGE.o.string, 0);
    }
  else if (!strcmp (key, "COMMAND_LINE_ENCODING"))
    {
      if (!options->COMMAND_LINE_ENCODING.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->COMMAND_LINE_ENCODING.o.string, 0);
    }
  else if (!strcmp (key, "INDENTED_BLOCK_COMMANDS_IN_TABLE"))
    {
      if (options->INDENTED_BLOCK_COMMANDS_IN_TABLE.o.integer == -1)
        return newSV (0);
      return newSViv (options->INDENTED_BLOCK_COMMANDS_IN_TABLE.o.integer);
    }
  else if (!strcmp (key, "CONTENTS_OUTPUT_LOCATION"))
    {
      if (!options->CONTENTS_OUTPUT_LOCATION.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->CONTENTS_OUTPUT_LOCATION.o.string, 0);
    }
  else if (!strcmp (key, "CONVERT_TO_LATEX_IN_MATH"))
    {
      if (options->CONVERT_TO_LATEX_IN_MATH.o.integer == -1)
        return newSV (0);
      return newSViv (options->CONVERT_TO_LATEX_IN_MATH.o.integer);
    }
  else if (!strcmp (key, "DATE_IN_HEADER"))
    {
      if (options->DATE_IN_HEADER.o.integer == -1)
        return newSV (0);
      return newSViv (options->DATE_IN_HEADER.o.integer);
    }
  else if (!strcmp (key, "DEFAULT_RULE"))
    {
      if (!options->DEFAULT_RULE.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->DEFAULT_RULE.o.string, 0);
    }
  else if (!strcmp (key, "DEF_TABLE"))
    {
      if (options->DEF_TABLE.o.integer == -1)
        return newSV (0);
      return newSViv (options->DEF_TABLE.o.integer);
    }
  else if (!strcmp (key, "DO_ABOUT"))
    {
      if (options->DO_ABOUT.o.integer == -1)
        return newSV (0);
      return newSViv (options->DO_ABOUT.o.integer);
    }
  else if (!strcmp (key, "DOCTYPE"))
    {
      if (!options->DOCTYPE.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->DOCTYPE.o.string, 0);
    }
  else if (!strcmp (key, "DOCUMENTLANGUAGE_COLLATION"))
    {
      if (options->DOCUMENTLANGUAGE_COLLATION.o.integer == -1)
        return newSV (0);
      return newSViv (options->DOCUMENTLANGUAGE_COLLATION.o.integer);
    }
  else if (!strcmp (key, "END_USEPACKAGE"))
    {
      if (!options->END_USEPACKAGE.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->END_USEPACKAGE.o.string, 0);
    }
  else if (!strcmp (key, "EPUB_CREATE_CONTAINER_FILE"))
    {
      if (options->EPUB_CREATE_CONTAINER_FILE.o.integer == -1)
        return newSV (0);
      return newSViv (options->EPUB_CREATE_CONTAINER_FILE.o.integer);
    }
  else if (!strcmp (key, "EPUB_KEEP_CONTAINER_FOLDER"))
    {
      if (options->EPUB_KEEP_CONTAINER_FOLDER.o.integer == -1)
        return newSV (0);
      return newSViv (options->EPUB_KEEP_CONTAINER_FOLDER.o.integer);
    }
  else if (!strcmp (key, "EXTENSION"))
    {
      if (!options->EXTENSION.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->EXTENSION.o.string, 0);
    }
  else if (!strcmp (key, "EXTERNAL_CROSSREF_EXTENSION"))
    {
      if (!options->EXTERNAL_CROSSREF_EXTENSION.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->EXTERNAL_CROSSREF_EXTENSION.o.string, 0);
    }
  else if (!strcmp (key, "EXTERNAL_CROSSREF_SPLIT"))
    {
      if (!options->EXTERNAL_CROSSREF_SPLIT.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->EXTERNAL_CROSSREF_SPLIT.o.string, 0);
    }
  else if (!strcmp (key, "EXTERNAL_DIR"))
    {
      if (!options->EXTERNAL_DIR.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->EXTERNAL_DIR.o.string, 0);
    }
  else if (!strcmp (key, "EXTRA_HEAD"))
    {
      if (!options->EXTRA_HEAD.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->EXTRA_HEAD.o.string, 0);
    }
  else if (!strcmp (key, "FOOTNOTE_END_HEADER_LEVEL"))
    {
      if (options->FOOTNOTE_END_HEADER_LEVEL.o.integer == -1)
        return newSV (0);
      return newSViv (options->FOOTNOTE_END_HEADER_LEVEL.o.integer);
    }
  else if (!strcmp (key, "FOOTNOTE_SEPARATE_HEADER_LEVEL"))
    {
      if (options->FOOTNOTE_SEPARATE_HEADER_LEVEL.o.integer == -1)
        return newSV (0);
      return newSViv (options->FOOTNOTE_SEPARATE_HEADER_LEVEL.o.integer);
    }
  else if (!strcmp (key, "HEADER_IN_TABLE"))
    {
      if (options->HEADER_IN_TABLE.o.integer == -1)
        return newSV (0);
      return newSViv (options->HEADER_IN_TABLE.o.integer);
    }
  else if (!strcmp (key, "HIGHLIGHT_SYNTAX"))
    {
      if (!options->HIGHLIGHT_SYNTAX.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->HIGHLIGHT_SYNTAX.o.string, 0);
    }
  else if (!strcmp (key, "HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE"))
    {
      if (!options->HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE.o.string, 0);
    }
  else if (!strcmp (key, "HTML_MATH"))
    {
      if (!options->HTML_MATH.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->HTML_MATH.o.string, 0);
    }
  else if (!strcmp (key, "HTML_ROOT_ELEMENT_ATTRIBUTES"))
    {
      if (!options->HTML_ROOT_ELEMENT_ATTRIBUTES.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->HTML_ROOT_ELEMENT_ATTRIBUTES.o.string, 0);
    }
  else if (!strcmp (key, "HTMLXREF_FILE"))
    {
      if (!options->HTMLXREF_FILE.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->HTMLXREF_FILE.o.string, 0);
    }
  else if (!strcmp (key, "HTMLXREF_MODE"))
    {
      if (!options->HTMLXREF_MODE.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->HTMLXREF_MODE.o.string, 0);
    }
  else if (!strcmp (key, "ICONS"))
    {
      if (options->ICONS.o.integer == -1)
        return newSV (0);
      return newSViv (options->ICONS.o.integer);
    }
  else if (!strcmp (key, "INDEX_ENTRY_COLON"))
    {
      if (!options->INDEX_ENTRY_COLON.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->INDEX_ENTRY_COLON.o.string, 0);
    }
  else if (!strcmp (key, "INDEX_SPECIAL_CHARS_WARNING"))
    {
      if (options->INDEX_SPECIAL_CHARS_WARNING.o.integer == -1)
        return newSV (0);
      return newSViv (options->INDEX_SPECIAL_CHARS_WARNING.o.integer);
    }
  else if (!strcmp (key, "INFO_JS_DIR"))
    {
      if (!options->INFO_JS_DIR.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->INFO_JS_DIR.o.string, 0);
    }
  else if (!strcmp (key, "INFO_SPECIAL_CHARS_QUOTE"))
    {
      if (!options->INFO_SPECIAL_CHARS_QUOTE.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->INFO_SPECIAL_CHARS_QUOTE.o.string, 0);
    }
  else if (!strcmp (key, "INFO_SPECIAL_CHARS_WARNING"))
    {
      if (options->INFO_SPECIAL_CHARS_WARNING.o.integer == -1)
        return newSV (0);
      return newSViv (options->INFO_SPECIAL_CHARS_WARNING.o.integer);
    }
  else if (!strcmp (key, "IGNORE_REF_TO_TOP_NODE_UP"))
    {
      if (options->IGNORE_REF_TO_TOP_NODE_UP.o.integer == -1)
        return newSV (0);
      return newSViv (options->IGNORE_REF_TO_TOP_NODE_UP.o.integer);
    }
  else if (!strcmp (key, "INLINE_CSS_STYLE"))
    {
      if (options->INLINE_CSS_STYLE.o.integer == -1)
        return newSV (0);
      return newSViv (options->INLINE_CSS_STYLE.o.integer);
    }
  else if (!strcmp (key, "INPUT_FILE_NAME_ENCODING"))
    {
      if (!options->INPUT_FILE_NAME_ENCODING.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->INPUT_FILE_NAME_ENCODING.o.string, 0);
    }
  else if (!strcmp (key, "JS_WEBLABELS"))
    {
      if (!options->JS_WEBLABELS.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->JS_WEBLABELS.o.string, 0);
    }
  else if (!strcmp (key, "JS_WEBLABELS_FILE"))
    {
      if (!options->JS_WEBLABELS_FILE.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->JS_WEBLABELS_FILE.o.string, 0);
    }
  else if (!strcmp (key, "LATEX_FLOATS_FILE_EXTENSION"))
    {
      if (!options->LATEX_FLOATS_FILE_EXTENSION.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->LATEX_FLOATS_FILE_EXTENSION.o.string, 0);
    }
  else if (!strcmp (key, "LOCALE_ENCODING"))
    {
      if (!options->LOCALE_ENCODING.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->LOCALE_ENCODING.o.string, 0);
    }
  else if (!strcmp (key, "L2H_CLEAN"))
    {
      if (options->L2H_CLEAN.o.integer == -1)
        return newSV (0);
      return newSViv (options->L2H_CLEAN.o.integer);
    }
  else if (!strcmp (key, "L2H_FILE"))
    {
      if (!options->L2H_FILE.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->L2H_FILE.o.string, 0);
    }
  else if (!strcmp (key, "L2H_HTML_VERSION"))
    {
      if (!options->L2H_HTML_VERSION.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->L2H_HTML_VERSION.o.string, 0);
    }
  else if (!strcmp (key, "L2H_L2H"))
    {
      if (!options->L2H_L2H.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->L2H_L2H.o.string, 0);
    }
  else if (!strcmp (key, "L2H_SKIP"))
    {
      if (options->L2H_SKIP.o.integer == -1)
        return newSV (0);
      return newSViv (options->L2H_SKIP.o.integer);
    }
  else if (!strcmp (key, "L2H_TMP"))
    {
      if (!options->L2H_TMP.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->L2H_TMP.o.string, 0);
    }
  else if (!strcmp (key, "MATHJAX_CONFIGURATION"))
    {
      if (!options->MATHJAX_CONFIGURATION.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->MATHJAX_CONFIGURATION.o.string, 0);
    }
  else if (!strcmp (key, "MATHJAX_SCRIPT"))
    {
      if (!options->MATHJAX_SCRIPT.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->MATHJAX_SCRIPT.o.string, 0);
    }
  else if (!strcmp (key, "MATHJAX_SOURCE"))
    {
      if (!options->MATHJAX_SOURCE.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->MATHJAX_SOURCE.o.string, 0);
    }
  else if (!strcmp (key, "MAX_HEADER_LEVEL"))
    {
      if (options->MAX_HEADER_LEVEL.o.integer == -1)
        return newSV (0);
      return newSViv (options->MAX_HEADER_LEVEL.o.integer);
    }
  else if (!strcmp (key, "MENU_ENTRY_COLON"))
    {
      if (!options->MENU_ENTRY_COLON.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->MENU_ENTRY_COLON.o.string, 0);
    }
  else if (!strcmp (key, "MENU_SYMBOL"))
    {
      if (!options->MENU_SYMBOL.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->MENU_SYMBOL.o.string, 0);
    }
  else if (!strcmp (key, "MESSAGE_ENCODING"))
    {
      if (!options->MESSAGE_ENCODING.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->MESSAGE_ENCODING.o.string, 0);
    }
  else if (!strcmp (key, "MONOLITHIC"))
    {
      if (options->MONOLITHIC.o.integer == -1)
        return newSV (0);
      return newSViv (options->MONOLITHIC.o.integer);
    }
  else if (!strcmp (key, "NO_CSS"))
    {
      if (options->NO_CSS.o.integer == -1)
        return newSV (0);
      return newSViv (options->NO_CSS.o.integer);
    }
  else if (!strcmp (key, "NO_NUMBER_FOOTNOTE_SYMBOL"))
    {
      if (!options->NO_NUMBER_FOOTNOTE_SYMBOL.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->NO_NUMBER_FOOTNOTE_SYMBOL.o.string, 0);
    }
  else if (!strcmp (key, "NO_CUSTOM_HTML_ATTRIBUTE"))
    {
      if (options->NO_CUSTOM_HTML_ATTRIBUTE.o.integer == -1)
        return newSV (0);
      return newSViv (options->NO_CUSTOM_HTML_ATTRIBUTE.o.integer);
    }
  else if (!strcmp (key, "NODE_NAME_IN_INDEX"))
    {
      if (options->NODE_NAME_IN_INDEX.o.integer == -1)
        return newSV (0);
      return newSViv (options->NODE_NAME_IN_INDEX.o.integer);
    }
  else if (!strcmp (key, "NODE_NAME_IN_MENU"))
    {
      if (options->NODE_NAME_IN_MENU.o.integer == -1)
        return newSV (0);
      return newSViv (options->NODE_NAME_IN_MENU.o.integer);
    }
  else if (!strcmp (key, "NO_TOP_NODE_OUTPUT"))
    {
      if (options->NO_TOP_NODE_OUTPUT.o.integer == -1)
        return newSV (0);
      return newSViv (options->NO_TOP_NODE_OUTPUT.o.integer);
    }
  else if (!strcmp (key, "OPEN_DOUBLE_QUOTE_SYMBOL"))
    {
      if (!options->OPEN_DOUBLE_QUOTE_SYMBOL.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->OPEN_DOUBLE_QUOTE_SYMBOL.o.string, 0);
    }
  else if (!strcmp (key, "OPEN_QUOTE_SYMBOL"))
    {
      if (!options->OPEN_QUOTE_SYMBOL.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->OPEN_QUOTE_SYMBOL.o.string, 0);
    }
  else if (!strcmp (key, "OUTPUT_CHARACTERS"))
    {
      if (options->OUTPUT_CHARACTERS.o.integer == -1)
        return newSV (0);
      return newSViv (options->OUTPUT_CHARACTERS.o.integer);
    }
  else if (!strcmp (key, "OUTPUT_ENCODING_NAME"))
    {
      if (!options->OUTPUT_ENCODING_NAME.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->OUTPUT_ENCODING_NAME.o.string, 0);
    }
  else if (!strcmp (key, "OUTPUT_FILE_NAME_ENCODING"))
    {
      if (!options->OUTPUT_FILE_NAME_ENCODING.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->OUTPUT_FILE_NAME_ENCODING.o.string, 0);
    }
  else if (!strcmp (key, "OUTPUT_PERL_ENCODING"))
    {
      if (!options->OUTPUT_PERL_ENCODING.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->OUTPUT_PERL_ENCODING.o.string, 0);
    }
  else if (!strcmp (key, "PACKAGE"))
    {
      if (!options->PACKAGE.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->PACKAGE.o.string, 0);
    }
  else if (!strcmp (key, "PACKAGE_AND_VERSION"))
    {
      if (!options->PACKAGE_AND_VERSION.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->PACKAGE_AND_VERSION.o.string, 0);
    }
  else if (!strcmp (key, "PACKAGE_NAME"))
    {
      if (!options->PACKAGE_NAME.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->PACKAGE_NAME.o.string, 0);
    }
  else if (!strcmp (key, "PACKAGE_URL"))
    {
      if (!options->PACKAGE_URL.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->PACKAGE_URL.o.string, 0);
    }
  else if (!strcmp (key, "PACKAGE_VERSION"))
    {
      if (!options->PACKAGE_VERSION.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->PACKAGE_VERSION.o.string, 0);
    }
  else if (!strcmp (key, "PRE_BODY_CLOSE"))
    {
      if (!options->PRE_BODY_CLOSE.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->PRE_BODY_CLOSE.o.string, 0);
    }
  else if (!strcmp (key, "PREFIX"))
    {
      if (!options->PREFIX.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->PREFIX.o.string, 0);
    }
  else if (!strcmp (key, "PROGRAM"))
    {
      if (!options->PROGRAM.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->PROGRAM.o.string, 0);
    }
  else if (!strcmp (key, "PROGRAM_NAME_IN_ABOUT"))
    {
      if (options->PROGRAM_NAME_IN_ABOUT.o.integer == -1)
        return newSV (0);
      return newSViv (options->PROGRAM_NAME_IN_ABOUT.o.integer);
    }
  else if (!strcmp (key, "PROGRAM_NAME_IN_FOOTER"))
    {
      if (options->PROGRAM_NAME_IN_FOOTER.o.integer == -1)
        return newSV (0);
      return newSViv (options->PROGRAM_NAME_IN_FOOTER.o.integer);
    }
  else if (!strcmp (key, "SECTION_NAME_IN_TITLE"))
    {
      if (options->SECTION_NAME_IN_TITLE.o.integer == -1)
        return newSV (0);
      return newSViv (options->SECTION_NAME_IN_TITLE.o.integer);
    }
  else if (!strcmp (key, "SHORT_TOC_LINK_TO_TOC"))
    {
      if (options->SHORT_TOC_LINK_TO_TOC.o.integer == -1)
        return newSV (0);
      return newSViv (options->SHORT_TOC_LINK_TO_TOC.o.integer);
    }
  else if (!strcmp (key, "SHOW_TITLE"))
    {
      if (options->SHOW_TITLE.o.integer == -1)
        return newSV (0);
      return newSViv (options->SHOW_TITLE.o.integer);
    }
  else if (!strcmp (key, "T4H_LATEX_CONVERSION"))
    {
      if (!options->T4H_LATEX_CONVERSION.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->T4H_LATEX_CONVERSION.o.string, 0);
    }
  else if (!strcmp (key, "T4H_MATH_CONVERSION"))
    {
      if (!options->T4H_MATH_CONVERSION.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->T4H_MATH_CONVERSION.o.string, 0);
    }
  else if (!strcmp (key, "T4H_TEX_CONVERSION"))
    {
      if (!options->T4H_TEX_CONVERSION.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->T4H_TEX_CONVERSION.o.string, 0);
    }
  else if (!strcmp (key, "TEXI2HTML"))
    {
      if (options->TEXI2HTML.o.integer == -1)
        return newSV (0);
      return newSViv (options->TEXI2HTML.o.integer);
    }
  else if (!strcmp (key, "TEXINFO_OUTPUT_FORMAT"))
    {
      if (!options->TEXINFO_OUTPUT_FORMAT.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->TEXINFO_OUTPUT_FORMAT.o.string, 0);
    }
  else if (!strcmp (key, "TXI_MARKUP_NO_SECTION_EXTENT"))
    {
      if (options->TXI_MARKUP_NO_SECTION_EXTENT.o.integer == -1)
        return newSV (0);
      return newSViv (options->TXI_MARKUP_NO_SECTION_EXTENT.o.integer);
    }
  else if (!strcmp (key, "TOC_LINKS"))
    {
      if (options->TOC_LINKS.o.integer == -1)
        return newSV (0);
      return newSViv (options->TOC_LINKS.o.integer);
    }
  else if (!strcmp (key, "TOP_FILE"))
    {
      if (!options->TOP_FILE.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->TOP_FILE.o.string, 0);
    }
  else if (!strcmp (key, "TOP_NODE_FILE_TARGET"))
    {
      if (!options->TOP_NODE_FILE_TARGET.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->TOP_NODE_FILE_TARGET.o.string, 0);
    }
  else if (!strcmp (key, "TOP_NODE_UP_URL"))
    {
      if (!options->TOP_NODE_UP_URL.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->TOP_NODE_UP_URL.o.string, 0);
    }
  else if (!strcmp (key, "USE_ACCESSKEY"))
    {
      if (options->USE_ACCESSKEY.o.integer == -1)
        return newSV (0);
      return newSViv (options->USE_ACCESSKEY.o.integer);
    }
  else if (!strcmp (key, "USE_ISO"))
    {
      if (options->USE_ISO.o.integer == -1)
        return newSV (0);
      return newSViv (options->USE_ISO.o.integer);
    }
  else if (!strcmp (key, "USE_LINKS"))
    {
      if (options->USE_LINKS.o.integer == -1)
        return newSV (0);
      return newSViv (options->USE_LINKS.o.integer);
    }
  else if (!strcmp (key, "USE_NEXT_HEADING_FOR_LONE_NODE"))
    {
      if (options->USE_NEXT_HEADING_FOR_LONE_NODE.o.integer == -1)
        return newSV (0);
      return newSViv (options->USE_NEXT_HEADING_FOR_LONE_NODE.o.integer);
    }
  else if (!strcmp (key, "USE_NODES"))
    {
      if (options->USE_NODES.o.integer == -1)
        return newSV (0);
      return newSViv (options->USE_NODES.o.integer);
    }
  else if (!strcmp (key, "USE_NODE_DIRECTIONS"))
    {
      if (options->USE_NODE_DIRECTIONS.o.integer == -1)
        return newSV (0);
      return newSViv (options->USE_NODE_DIRECTIONS.o.integer);
    }
  else if (!strcmp (key, "USE_NUMERIC_ENTITY"))
    {
      if (options->USE_NUMERIC_ENTITY.o.integer == -1)
        return newSV (0);
      return newSViv (options->USE_NUMERIC_ENTITY.o.integer);
    }
  else if (!strcmp (key, "USE_REL_REV"))
    {
      if (options->USE_REL_REV.o.integer == -1)
        return newSV (0);
      return newSViv (options->USE_REL_REV.o.integer);
    }
  else if (!strcmp (key, "USE_SETFILENAME_EXTENSION"))
    {
      if (options->USE_SETFILENAME_EXTENSION.o.integer == -1)
        return newSV (0);
      return newSViv (options->USE_SETFILENAME_EXTENSION.o.integer);
    }
  else if (!strcmp (key, "USE_TITLEPAGE_FOR_TITLE"))
    {
      if (options->USE_TITLEPAGE_FOR_TITLE.o.integer == -1)
        return newSV (0);
      return newSViv (options->USE_TITLEPAGE_FOR_TITLE.o.integer);
    }
  else if (!strcmp (key, "USE_UNIDECODE"))
    {
      if (options->USE_UNIDECODE.o.integer == -1)
        return newSV (0);
      return newSViv (options->USE_UNIDECODE.o.integer);
    }
  else if (!strcmp (key, "USE_XML_SYNTAX"))
    {
      if (options->USE_XML_SYNTAX.o.integer == -1)
        return newSV (0);
      return newSViv (options->USE_XML_SYNTAX.o.integer);
    }
  else if (!strcmp (key, "VERTICAL_HEAD_NAVIGATION"))
    {
      if (options->VERTICAL_HEAD_NAVIGATION.o.integer == -1)
        return newSV (0);
      return newSViv (options->VERTICAL_HEAD_NAVIGATION.o.integer);
    }
  else if (!strcmp (key, "WORDS_IN_PAGE"))
    {
      if (options->WORDS_IN_PAGE.o.integer == -1)
        return newSV (0);
      return newSViv (options->WORDS_IN_PAGE.o.integer);
    }
  else if (!strcmp (key, "XREF_USE_FLOAT_LABEL"))
    {
      if (options->XREF_USE_FLOAT_LABEL.o.integer == -1)
        return newSV (0);
      return newSViv (options->XREF_USE_FLOAT_LABEL.o.integer);
    }
  else if (!strcmp (key, "XREF_USE_NODE_NAME_ARG"))
    {
      if (options->XREF_USE_NODE_NAME_ARG.o.integer == -1)
        return newSV (0);
      return newSViv (options->XREF_USE_NODE_NAME_ARG.o.integer);
    }
  else if (!strcmp (key, "XS_EXTERNAL_CONVERSION"))
    {
      if (options->XS_EXTERNAL_CONVERSION.o.integer == -1)
        return newSV (0);
      return newSViv (options->XS_EXTERNAL_CONVERSION.o.integer);
    }
  else if (!strcmp (key, "XS_EXTERNAL_FORMATTING"))
    {
      if (options->XS_EXTERNAL_FORMATTING.o.integer == -1)
        return newSV (0);
      return newSViv (options->XS_EXTERNAL_FORMATTING.o.integer);
    }
  else if (!strcmp (key, "XS_STRXFRM_COLLATION_LOCALE"))
    {
      if (!options->XS_STRXFRM_COLLATION_LOCALE.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->XS_STRXFRM_COLLATION_LOCALE.o.string, 0);
    }
  else if (!strcmp (key, "_INLINE_STYLE_WIDTH"))
    {
      if (options->_INLINE_STYLE_WIDTH.o.integer == -1)
        return newSV (0);
      return newSViv (options->_INLINE_STYLE_WIDTH.o.integer);
    }

/* converter_other */

  else if (!strcmp (key, "LINKS_BUTTONS"))
    {
      if (!options->LINKS_BUTTONS.o.buttons) return newSV (0);
      return newRV_inc ((SV *) options->LINKS_BUTTONS.o.buttons->av);
    }
  else if (!strcmp (key, "TOP_BUTTONS"))
    {
      if (!options->TOP_BUTTONS.o.buttons) return newSV (0);
      return newRV_inc ((SV *) options->TOP_BUTTONS.o.buttons->av);
    }
  else if (!strcmp (key, "TOP_FOOTER_BUTTONS"))
    {
      if (!options->TOP_FOOTER_BUTTONS.o.buttons) return newSV (0);
      return newRV_inc ((SV *) options->TOP_FOOTER_BUTTONS.o.buttons->av);
    }
  else if (!strcmp (key, "SECTION_BUTTONS"))
    {
      if (!options->SECTION_BUTTONS.o.buttons) return newSV (0);
      return newRV_inc ((SV *) options->SECTION_BUTTONS.o.buttons->av);
    }
  else if (!strcmp (key, "CHAPTER_FOOTER_BUTTONS"))
    {
      if (!options->CHAPTER_FOOTER_BUTTONS.o.buttons) return newSV (0);
      return newRV_inc ((SV *) options->CHAPTER_FOOTER_BUTTONS.o.buttons->av);
    }
  else if (!strcmp (key, "SECTION_FOOTER_BUTTONS"))
    {
      if (!options->SECTION_FOOTER_BUTTONS.o.buttons) return newSV (0);
      return newRV_inc ((SV *) options->SECTION_FOOTER_BUTTONS.o.buttons->av);
    }
  else if (!strcmp (key, "NODE_FOOTER_BUTTONS"))
    {
      if (!options->NODE_FOOTER_BUTTONS.o.buttons) return newSV (0);
      return newRV_inc ((SV *) options->NODE_FOOTER_BUTTONS.o.buttons->av);
    }
  else if (!strcmp (key, "MISC_BUTTONS"))
    {
      if (!options->MISC_BUTTONS.o.buttons) return newSV (0);
      return newRV_inc ((SV *) options->MISC_BUTTONS.o.buttons->av);
    }
  else if (!strcmp (key, "CHAPTER_BUTTONS"))
    {
      if (!options->CHAPTER_BUTTONS.o.buttons) return newSV (0);
      return newRV_inc ((SV *) options->CHAPTER_BUTTONS.o.buttons->av);
    }
  else if (!strcmp (key, "ACTIVE_ICONS"))
    {
      return html_build_direction_icons (converter, options->ACTIVE_ICONS.o.icons);
    }
  else if (!strcmp (key, "PASSIVE_ICONS"))
    {
      return html_build_direction_icons (converter, options->PASSIVE_ICONS.o.icons);
    }

/* multiple_at_command */

  else if (!strcmp (key, "allowcodebreaks"))
    {
      if (!options->allowcodebreaks.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->allowcodebreaks.o.string, 0);
    }
  else if (!strcmp (key, "clickstyle"))
    {
      if (!options->clickstyle.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->clickstyle.o.string, 0);
    }
  else if (!strcmp (key, "codequotebacktick"))
    {
      if (!options->codequotebacktick.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->codequotebacktick.o.string, 0);
    }
  else if (!strcmp (key, "codequoteundirected"))
    {
      if (!options->codequoteundirected.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->codequoteundirected.o.string, 0);
    }
  else if (!strcmp (key, "contents"))
    {
      if (options->contents.o.integer == -1)
        return newSV (0);
      return newSViv (options->contents.o.integer);
    }
  else if (!strcmp (key, "deftypefnnewline"))
    {
      if (!options->deftypefnnewline.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->deftypefnnewline.o.string, 0);
    }
  else if (!strcmp (key, "documentencoding"))
    {
      if (!options->documentencoding.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->documentencoding.o.string, 0);
    }
  else if (!strcmp (key, "documentlanguage"))
    {
      if (!options->documentlanguage.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->documentlanguage.o.string, 0);
    }
  else if (!strcmp (key, "evenfooting"))
    {
      if (!options->evenfooting.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->evenfooting.o.string, 0);
    }
  else if (!strcmp (key, "evenheading"))
    {
      if (!options->evenheading.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->evenheading.o.string, 0);
    }
  else if (!strcmp (key, "everyfooting"))
    {
      if (!options->everyfooting.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->everyfooting.o.string, 0);
    }
  else if (!strcmp (key, "everyheading"))
    {
      if (!options->everyheading.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->everyheading.o.string, 0);
    }
  else if (!strcmp (key, "exampleindent"))
    {
      if (!options->exampleindent.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->exampleindent.o.string, 0);
    }
  else if (!strcmp (key, "firstparagraphindent"))
    {
      if (!options->firstparagraphindent.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->firstparagraphindent.o.string, 0);
    }
  else if (!strcmp (key, "frenchspacing"))
    {
      if (!options->frenchspacing.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->frenchspacing.o.string, 0);
    }
  else if (!strcmp (key, "headings"))
    {
      if (!options->headings.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->headings.o.string, 0);
    }
  else if (!strcmp (key, "kbdinputstyle"))
    {
      if (!options->kbdinputstyle.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->kbdinputstyle.o.string, 0);
    }
  else if (!strcmp (key, "microtype"))
    {
      if (!options->microtype.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->microtype.o.string, 0);
    }
  else if (!strcmp (key, "oddheading"))
    {
      if (!options->oddheading.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->oddheading.o.string, 0);
    }
  else if (!strcmp (key, "oddfooting"))
    {
      if (!options->oddfooting.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->oddfooting.o.string, 0);
    }
  else if (!strcmp (key, "paragraphindent"))
    {
      if (!options->paragraphindent.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->paragraphindent.o.string, 0);
    }
  else if (!strcmp (key, "shortcontents"))
    {
      if (options->shortcontents.o.integer == -1)
        return newSV (0);
      return newSViv (options->shortcontents.o.integer);
    }
  else if (!strcmp (key, "summarycontents"))
    {
      if (options->summarycontents.o.integer == -1)
        return newSV (0);
      return newSViv (options->summarycontents.o.integer);
    }
  else if (!strcmp (key, "urefbreakstyle"))
    {
      if (!options->urefbreakstyle.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->urefbreakstyle.o.string, 0);
    }
  else if (!strcmp (key, "xrefautomaticsectiontitle"))
    {
      if (!options->xrefautomaticsectiontitle.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->xrefautomaticsectiontitle.o.string, 0);
    }

/* program_cmdline */

  else if (!strcmp (key, "MACRO_EXPAND"))
    {
      if (!options->MACRO_EXPAND.o.string)
        return newSV (0);
      return newSVpv_byte (options->MACRO_EXPAND.o.string, 0);
    }
  else if (!strcmp (key, "INTERNAL_LINKS"))
    {
      if (!options->INTERNAL_LINKS.o.string)
        return newSV (0);
      return newSVpv_byte (options->INTERNAL_LINKS.o.string, 0);
    }
  else if (!strcmp (key, "ERROR_LIMIT"))
    {
      if (options->ERROR_LIMIT.o.integer == -1)
        return newSV (0);
      return newSViv (options->ERROR_LIMIT.o.integer);
    }
  else if (!strcmp (key, "FORCE"))
    {
      if (options->FORCE.o.integer == -1)
        return newSV (0);
      return newSViv (options->FORCE.o.integer);
    }
  else if (!strcmp (key, "NO_WARN"))
    {
      if (options->NO_WARN.o.integer == -1)
        return newSV (0);
      return newSViv (options->NO_WARN.o.integer);
    }
  else if (!strcmp (key, "SILENT"))
    {
      if (!options->SILENT.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->SILENT.o.string, 0);
    }
  else if (!strcmp (key, "TRACE_INCLUDES"))
    {
      if (options->TRACE_INCLUDES.o.integer == -1)
        return newSV (0);
      return newSViv (options->TRACE_INCLUDES.o.integer);
    }
  else if (!strcmp (key, "FORMAT_MENU"))
    {
      if (!options->FORMAT_MENU.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->FORMAT_MENU.o.string, 0);
    }

/* program_customization */

  else if (!strcmp (key, "CHECK_NORMAL_MENU_STRUCTURE"))
    {
      if (options->CHECK_NORMAL_MENU_STRUCTURE.o.integer == -1)
        return newSV (0);
      return newSViv (options->CHECK_NORMAL_MENU_STRUCTURE.o.integer);
    }
  else if (!strcmp (key, "CHECK_MISSING_MENU_ENTRY"))
    {
      if (options->CHECK_MISSING_MENU_ENTRY.o.integer == -1)
        return newSV (0);
      return newSViv (options->CHECK_MISSING_MENU_ENTRY.o.integer);
    }
  else if (!strcmp (key, "DUMP_TREE"))
    {
      if (options->DUMP_TREE.o.integer == -1)
        return newSV (0);
      return newSViv (options->DUMP_TREE.o.integer);
    }
  else if (!strcmp (key, "DUMP_TEXI"))
    {
      if (options->DUMP_TEXI.o.integer == -1)
        return newSV (0);
      return newSViv (options->DUMP_TEXI.o.integer);
    }
  else if (!strcmp (key, "SHOW_BUILTIN_CSS_RULES"))
    {
      if (options->SHOW_BUILTIN_CSS_RULES.o.integer == -1)
        return newSV (0);
      return newSViv (options->SHOW_BUILTIN_CSS_RULES.o.integer);
    }
  else if (!strcmp (key, "SORT_ELEMENT_COUNT"))
    {
      if (!options->SORT_ELEMENT_COUNT.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->SORT_ELEMENT_COUNT.o.string, 0);
    }
  else if (!strcmp (key, "SORT_ELEMENT_COUNT_WORDS"))
    {
      if (options->SORT_ELEMENT_COUNT_WORDS.o.integer == -1)
        return newSV (0);
      return newSViv (options->SORT_ELEMENT_COUNT_WORDS.o.integer);
    }
  else if (!strcmp (key, "TEXI2DVI"))
    {
      if (!options->TEXI2DVI.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->TEXI2DVI.o.string, 0);
    }
  else if (!strcmp (key, "TREE_TRANSFORMATIONS"))
    {
      if (!options->TREE_TRANSFORMATIONS.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->TREE_TRANSFORMATIONS.o.string, 0);
    }

/* unique_at_command */

  else if (!strcmp (key, "afivepaper"))
    {
      if (!options->afivepaper.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->afivepaper.o.string, 0);
    }
  else if (!strcmp (key, "afourpaper"))
    {
      if (!options->afourpaper.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->afourpaper.o.string, 0);
    }
  else if (!strcmp (key, "afourlatex"))
    {
      if (!options->afourlatex.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->afourlatex.o.string, 0);
    }
  else if (!strcmp (key, "afourwide"))
    {
      if (!options->afourwide.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->afourwide.o.string, 0);
    }
  else if (!strcmp (key, "bsixpaper"))
    {
      if (!options->bsixpaper.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->bsixpaper.o.string, 0);
    }
  else if (!strcmp (key, "documentdescription"))
    {
      if (!options->documentdescription.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->documentdescription.o.string, 0);
    }
  else if (!strcmp (key, "evenfootingmarks"))
    {
      if (!options->evenfootingmarks.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->evenfootingmarks.o.string, 0);
    }
  else if (!strcmp (key, "evenheadingmarks"))
    {
      if (!options->evenheadingmarks.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->evenheadingmarks.o.string, 0);
    }
  else if (!strcmp (key, "everyfootingmarks"))
    {
      if (!options->everyfootingmarks.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->everyfootingmarks.o.string, 0);
    }
  else if (!strcmp (key, "everyheadingmarks"))
    {
      if (!options->everyheadingmarks.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->everyheadingmarks.o.string, 0);
    }
  else if (!strcmp (key, "fonttextsize"))
    {
      if (options->fonttextsize.o.integer == -1)
        return newSV (0);
      return newSViv (options->fonttextsize.o.integer);
    }
  else if (!strcmp (key, "footnotestyle"))
    {
      if (!options->footnotestyle.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->footnotestyle.o.string, 0);
    }
  else if (!strcmp (key, "novalidate"))
    {
      if (options->novalidate.o.integer == -1)
        return newSV (0);
      return newSViv (options->novalidate.o.integer);
    }
  else if (!strcmp (key, "oddfootingmarks"))
    {
      if (!options->oddfootingmarks.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->oddfootingmarks.o.string, 0);
    }
  else if (!strcmp (key, "oddheadingmarks"))
    {
      if (!options->oddheadingmarks.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->oddheadingmarks.o.string, 0);
    }
  else if (!strcmp (key, "pagesizes"))
    {
      if (!options->pagesizes.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->pagesizes.o.string, 0);
    }
  else if (!strcmp (key, "setchapternewpage"))
    {
      if (!options->setchapternewpage.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->setchapternewpage.o.string, 0);
    }
  else if (!strcmp (key, "setfilename"))
    {
      if (!options->setfilename.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->setfilename.o.string, 0);
    }
  else if (!strcmp (key, "smallbook"))
    {
      if (!options->smallbook.o.string)
        return newSV (0);
      return newSVpv_utf8 (options->smallbook.o.string, 0);
    }

  return newSV (0);
}

