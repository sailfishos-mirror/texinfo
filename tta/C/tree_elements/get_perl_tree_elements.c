/* Copyright 2010-2025 Free Software Foundation, Inc.

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

#include <stdlib.h>

/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#undef context

#include "text.h"
#include "tree_types.h"
#include "document_types.h"
#include "converter_types.h"
/* fatal */
#include "base_utils.h"
#include "tree.h"
/* find_element_type */
#include "builtin_commands.h"
/* add_string */
#include "utils.h"
#include "reader_api.h"
#include "get_perl_info.h"

struct READER *
get_sv_reader_reader (SV *sv_in)
{
  size_t reader_descriptor;
  struct READER *reader = 0;

  dTHX;

  reader_descriptor = (size_t) SvIV (SvRV (sv_in));
  reader = retrieve_reader_descriptor (reader_descriptor);

  if (! reader)
    {
      fprintf (stderr, "ERROR: get_sv_reader_reader: no reader %zu\n",
                                                      reader_descriptor);
    }
  return reader;
}

#define FETCH(key) key##_sv = hv_fetch (hv_in, #key, strlen (#key), 0);
/* TODO extra/info information not incorporated.  Could use
   convert/swig_interface.c set_element_attribute_* functions for that.
 */
ELEMENT *
new_element_from_sv (DOCUMENT *document, const SV *element_hash,
                     CONVERTER *converter)
{
  HV *hv_in;
  ELEMENT *e;
  SV **text_sv;
  SV **type_sv;
  SV **cmdname_sv;
  SV **contents_sv;
  SV **source_info_sv;
  enum element_type e_type = ET_NONE;
  const char *cmdname = 0;
  const char *type_name = 0;

  dTHX;

  hv_in = (HV *)SvRV (element_hash);

  FETCH(type);

  if (type_sv)
    type_name = (const char *) SvPVutf8_nolen (*type_sv);

  FETCH(text);
  if (text_sv && SvOK (*text_sv))
    {
      const char *text = (const char *) SvPVutf8_nolen (*text_sv);
      if (type_name)
        e_type = find_element_type ((char *)type_name);
      if (e_type == ET_NONE)
        e_type = ET_normal_text;
      e = new_text_element (e_type);
      text_append (e->e.text, text);
      return e;
    }

  FETCH(cmdname)
  if (cmdname_sv)
    cmdname = (const char *) SvPVutf8_nolen (*cmdname_sv);

  e = new_element_from_names (type_name, cmdname, 0);

  if (!e)
    {
      fprintf (stderr, "unknown type %s command %s element\n",
                       type_name, cmdname);
      fatal ("error constructing element");
    }

  FETCH(contents)
  if (contents_sv)
    {
      SSize_t i;
      SSize_t contents_nr;
      AV *contents_av = (AV *) SvRV (*contents_sv);

      contents_nr = AvFILL (contents_av) +1;

      for (i = 0; i < contents_nr; i++)
        {
          SV **content_sv = av_fetch (contents_av, i, 0);
          if (content_sv)
            {
              ELEMENT *element = 0;
              DOCUMENT *document = get_sv_element_document (*content_sv, 0);
              if (document)
                element
                  = get_sv_element_element (*content_sv, document);
              else if (converter)
                /* TODO using find_element_from_sv may allow to
                   find the C elements in more situations, but it could
                   also hide bugs, as we would like not to need to
                   use find_element_from_sv and instead have a consistent
                   interface */
                /* discard const */
                element = (ELEMENT *)find_element_from_sv (converter, 0,
                                                           *content_sv, 0);
              if (element)
                add_element_to_element_contents (e, element);
              else
                fatal ("No C element");
            }
        }
    }

#define FETCHSOURCE(key) key##_sv = hv_fetch (source_info_hv, #key, strlen (#key), 0);
  FETCH(source_info);
  if (source_info_sv)
    {
      /* similar to get_source_info, but the memory is managed differently
         as here the information is directly added to the element */
      HV *source_info_hv = (HV *) SvRV (*source_info_sv);
      SV **macro_sv;
      SV **file_name_sv;
      SV **line_nr_sv;

      FETCHSOURCE(macro)

      if (macro_sv)
        {
          const char *macro = SvPVutf8_nolen (*macro_sv);
          e->e.c->source_info.macro
            = add_string (macro, document->small_strings);
        }

      FETCHSOURCE(file_name)

      if (file_name_sv && SvOK (*file_name_sv))
        {
          const char *file_name = SvPVbyte_nolen (*file_name_sv);
          e->e.c->source_info.file_name
            = add_string (file_name, document->small_strings);
        }

      FETCHSOURCE(line_nr)

      if (line_nr_sv)
        e->e.c->source_info.line_nr = SvIV (*line_nr_sv);
    }
#undef FETCHSOURCE

  return e;
}
#undef FETCH
