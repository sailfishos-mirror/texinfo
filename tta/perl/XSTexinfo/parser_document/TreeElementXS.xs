/* Copyright 2023-2025 Free Software Foundation, Inc.

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

#include <stdio.h>

/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#undef context

#include "types_data.h"
#include "tree_types.h"
#include "document_types.h"
#include "converter_types.h"
#include "builtin_commands.h"
/* get_cmd_global_uniq_command */
#include "utils.h"
#include "build_perl_info.h"
#include "get_perl_info.h"
/* get_sv_converter */
#include "get_converter_perl_info.h"

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */


MODULE = Texinfo::TreeElement		PACKAGE = Texinfo::TreeElement

PROTOTYPES: ENABLE

# not in Texinfo::TreeElement but in Texinfo::Convert::Converter in order
# to be able to find the document.
SV *
new_tree_element (SV *converter_in, SV *element_hash)
    PREINIT:
        CONVERTER *self;
     CODE:
        self = get_sv_converter (converter_in, 0);
        if (self && self->document)
          {
            ELEMENT *e = new_element_from_sv (self, element_hash);
            register_element_handle_in_sv (e, self->document);
            RETVAL = newSVsv ((SV *)e->sv);
          }
        else
          {
            HV *hv_stash = gv_stashpv ("Texinfo::TreeElement", GV_ADD);
            RETVAL = sv_bless (SvREFHVCNT_inc (element_hash), hv_stash);
          }
    OUTPUT:
         RETVAL

SV *
get_global_unique_tree_element (SV *converter_in, cmdname)
        const char *cmdname = (char *)SvPV_nolen($arg);
      PREINIT:
        CONVERTER *self;
        SV *result_sv = 0;
     CODE:
        self = get_sv_converter (converter_in, 0);
        if (self && self->document)
          {
            enum command_id cmd = lookup_builtin_command (cmdname);
            if (cmd)
              {
                ELEMENT *element = (ELEMENT *)get_cmd_global_uniq_command (
                              &self->document->global_commands, cmd);
                if (element)
                  {
                    register_element_handle_in_sv (element, self->document);
                    result_sv = newSVsv ((SV *)element->sv);
                 }
              }
          }
        if (result_sv)
          RETVAL = result_sv;
        else
          RETVAL = newSV (0);
    OUTPUT:
        RETVAL


SV *
new (SV *element_hash)
    PREINIT:
        HV *hv_stash;
    CODE:
        /*
        fprintf (stderr, "Unexpected call of TreeElement new through XS\n");
        debug_print_element_sv (element_hash);
         */
        hv_stash = gv_stashpv ("Texinfo::TreeElement", GV_ADD);
        /* the refcount needs to be increased probably because the
           argument is "mortal" and has its counters decreased upon
           leaving the function */
        RETVAL = sv_bless (SvREFHVCNT_inc (element_hash), hv_stash);
    OUTPUT:
         RETVAL

SV *
parent (SV *element_sv)
      PREINIT:
        DOCUMENT *document;
      CODE:
        document = get_sv_element_document (element_sv, 0);
        if (document)
          {
            const ELEMENT *element
              = get_sv_element_element (element_sv, document);

            if (element->parent)
              {
                register_element_handle_in_sv (element->parent, document);
                RETVAL = newSVsv ((SV *)element->parent->sv);
              }
            else
              RETVAL = newSV (0);
          }
        else
          {
            const char *key = "parent";
            HV *element_hv = (HV *) SvRV (element_sv);
            SV **sv = hv_fetch (element_hv, key, strlen(key), 0);
            if (sv && SvOK (*sv))
              RETVAL = newSVsv (*sv);
            else
              RETVAL = newSV (0);
          }
    OUTPUT:
        RETVAL

SV *
type (SV *element_sv)
      PREINIT:
        DOCUMENT *document;
      CODE:
        document = get_sv_element_document (element_sv, 0);
        if (document)
          {
            const ELEMENT *element
              = get_sv_element_element (element_sv, document);
            if (element->type && element->type != ET_normal_text
                && !(type_data[element->type].flags & TF_c_only))
              RETVAL = newSVpv (type_data[element->type].name, 0);
            else
              RETVAL = newSV (0);
          }
        else
          {
            const char *key = "type";
            HV *element_hv = (HV *) SvRV (element_sv);
            SV **sv = hv_fetch (element_hv, key, strlen(key), 0);
            if (sv && SvOK (*sv))
              RETVAL = newSVsv (*sv);
            else
              RETVAL = newSV (0);
          }
    OUTPUT:
        RETVAL

SV *
cmdname (SV *element_sv)
      PREINIT:
        DOCUMENT *document;
      CODE:
        document = get_sv_element_document (element_sv, 0);
        if (document)
          {
            const ELEMENT *element
              = get_sv_element_element (element_sv, document);

            if (!(type_data[element->type].flags & TF_text)
                && element->e.c->cmd)
              RETVAL = newSVpv (element_command_name (element), 0);
            else
              RETVAL = newSV (0);
          }
        else
          {
            const char *key = "cmdname";
            HV *element_hv = (HV *) SvRV (element_sv);
            SV **sv = hv_fetch (element_hv, key, strlen(key), 0);
            if (sv && SvOK (*sv))
              RETVAL = newSVsv (*sv);
            else
              RETVAL = newSV (0);
          }
    OUTPUT:
        RETVAL

SV *
text (SV *element_sv)
      PREINIT:
        DOCUMENT *document;
      CODE:
        document = get_sv_element_document (element_sv, 0);
        if (document)
          {
            const ELEMENT *element
              = get_sv_element_element (element_sv, document);

            if (type_data[element->type].flags & TF_text)
              RETVAL
                = newSVpv_utf8 (element->e.text->text, element->e.text->end);
            else
              RETVAL = newSV (0);
          }
        else
          {
            const char *key = "text";
            HV *element_hv = (HV *) SvRV (element_sv);
            SV **sv = hv_fetch (element_hv, key, strlen(key), 0);
            if (sv && SvOK (*sv))
              RETVAL = newSVsv (*sv);
            else
              RETVAL = newSV (0);
          }
    OUTPUT:
        RETVAL

SV *
source_info (SV *element_sv)
      PREINIT:
        DOCUMENT *document;
      CODE:
        document = get_sv_element_document (element_sv, 0);
        if (document)
          {
            const ELEMENT *element
              = get_sv_element_element (element_sv, document);

            if (!(type_data[element->type].flags & TF_text))
              {
                const SOURCE_INFO *source_info = &element->e.c->source_info;
                HV *hv = newHV ();
                build_source_info_hash (source_info, hv);
                RETVAL = newRV_noinc ((SV *)hv);
              }
            else
              RETVAL = newSV (0);
          }
        else
          {
            const char *key = "source_info";
            HV *element_hv = (HV *) SvRV (element_sv);
            SV **sv = hv_fetch (element_hv, key, strlen(key), 0);
            if (sv && SvOK (*sv))
              RETVAL = newSVsv (*sv);
            else
              RETVAL = newSV (0);
          }
    OUTPUT:
        RETVAL

SV *
children_number (SV *element_sv)
      PREINIT:
        DOCUMENT *document;
        int contents_nr = 0;
      CODE:
        document = get_sv_element_document (element_sv, 0);
        if (document)
          {
            const ELEMENT *element
              = get_sv_element_element (element_sv, document);

            if (!(type_data[element->type].flags & TF_text))
              contents_nr = element->e.c->contents.number;
          }
        else
          {
            const char *key = "contents";
            HV *element_hv = (HV *) SvRV (element_sv);
            SV **sv = hv_fetch (element_hv, key, strlen(key), 0);
            if (sv && SvOK (*sv))
              {
                AV *av = (AV *) SvRV (*sv);
                contents_nr = AvFILL (av) +1;
              }
          }
        RETVAL = newSViv (contents_nr);
    OUTPUT:
        RETVAL

SV *
get_child (SV *element_sv, int e_index)
      PREINIT:
        DOCUMENT *document;
        SV *result_sv = 0;
      CODE:
        document = get_sv_element_document (element_sv, 0);
        if (document)
          {
            const ELEMENT *element
              = get_sv_element_element (element_sv, document);

            if (!(type_data[element->type].flags & TF_text))
              {
                int contents_nr = element->e.c->contents.number;
                int list_index;
                if (contents_nr)
                  {
                    if (e_index < 0)
                      list_index = contents_nr + e_index;
                    else
                      list_index = e_index;
                    if (list_index < contents_nr && list_index >= 0)
                      {
                        ELEMENT *child
                          = element->e.c->contents.list[list_index];
                        register_element_handle_in_sv (child, document);
                        result_sv = newSVsv ((SV *)child->sv);
                      }
                  }
              }
          }
        else
          {
            const char *key = "contents";
            HV *element_hv = (HV *) SvRV (element_sv);
            SV **contents_sv = hv_fetch (element_hv, key, strlen(key), 0);
            if (contents_sv && SvOK (*contents_sv))
              {
                SSize_t contents_nr;
                SSize_t list_index;
                AV *av = (AV *) SvRV (*contents_sv);
                contents_nr = AvFILL (av) +1;
                if (contents_nr)
                  {
                    if (e_index < 0)
                      list_index = contents_nr + e_index;
                    else
                      list_index = e_index;
                    if (list_index < contents_nr && list_index >= 0)
                      {
                        SV **sv = av_fetch (av, list_index, 0);
                        if (sv && SvOK (*sv))
                          result_sv = newSVsv (*sv);
                        else
                          fprintf (stderr, "BUG: child %d not found\n",
                                   e_index);
                      }
                  }
              }
          }
        if (result_sv)
          RETVAL = result_sv;
        else
          RETVAL = newSV (0);
    OUTPUT:
        RETVAL

SV *
get_children (SV *element_sv)
      PREINIT:
        DOCUMENT *document;
      CODE:
        document = get_sv_element_document (element_sv, 0);
        if (document)
          {
            const ELEMENT *element
              = get_sv_element_element (element_sv, document);

            if (!(type_data[element->type].flags & TF_text)
                && element->e.c->contents.number)
              {
                AV *av = newAV ();
                size_t i;
                for (i = 0; i < element->e.c->contents.number; i++)
                  {
                    SV *child_sv;
                    ELEMENT *child = element->e.c->contents.list[i];
                    register_element_handle_in_sv (child, document);
                    child_sv = SvREFHVCNT_inc ((SV *)child->sv);
                    av_push (av, child_sv);
                  }
                RETVAL = newRV_noinc ((SV *)av);
              }
            else
              RETVAL = newSV (0);
          }
        else
          {
            const char *key = "contents";
            HV *element_hv = (HV *) SvRV (element_sv);
            SV **sv = hv_fetch (element_hv, key, strlen(key), 0);
            if (sv && SvOK (*sv))
              RETVAL = newSVsv (*sv);
            else
              RETVAL = newSV (0);
          }
    OUTPUT:
        RETVAL

SV *
get_attribute (SV *element_sv, attribute)
        const char *attribute = (char *)SvPV_nolen($arg);
      PREINIT:
        DOCUMENT *document;
        SV *result_sv = 0;
      CODE:
        document = get_sv_element_document (element_sv, 0);
        if (document)
          {
            const ELEMENT *element
              = get_sv_element_element (element_sv, document);

            if (type_data[element->type].flags & TF_text)
              {
                if (!strcmp (attribute, "inserted")
                    && (element->flags & EF_inserted))
                  result_sv = newSViv (1);
              }
            else
              result_sv = build_element_attribute (element, attribute,
                                                   document);
          }
        else
          {
            static const char *info_type[2] = {"extra", "info"};
            int i;
            HV *element_hv = (HV *) SvRV (element_sv);
            for (i = 0; i < 2; i++)
              {
                const char *key = info_type[i];
                SV **sv_info = hv_fetch (element_hv, key, strlen(key), 0);
                if (sv_info && SvOK (*sv_info))
                  {
                    HV *hv_info = (HV *) SvRV (*sv_info);
                    SV **sv = hv_fetch (hv_info, attribute,
                                        strlen(attribute), 0);
                    if (sv)
                      {
                        if (SvOK (*sv))
                          result_sv = newSVsv (*sv);
                        break;
                      }
                  }
              }
          }
        if (result_sv)
          RETVAL = result_sv;
        else
          RETVAL = newSV (0);
    OUTPUT:
        RETVAL

