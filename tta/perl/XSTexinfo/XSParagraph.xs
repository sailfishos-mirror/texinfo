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

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "xspara.h"

MODULE = Texinfo::Convert::Paragraph PACKAGE = Texinfo::Convert::Paragraph PREFIX = xspara_

PROTOTYPES: ENABLE

void
xspara_set_state (int state)

# Return an identifier for the paragraph container.  In Perl the paragraph
# container hash reference itself is returned.
# Optional CONF parameter.
SV *
xspara_new (...)
    PREINIT:
        HV *conf = 0;
        int id;
#define xspara_SET_CONF(variable)  \
                else if (!strcmp (var_name, #variable)) \
                  { \
                    if (SvOK (value_sv)) \
                      {xspara_set_conf_##variable (SvIV (value_sv));} \
                  }
    CODE:
        if (items > 0)
          {
            if (SvROK(ST(0)) && SvTYPE(SvRV(ST(0))) == SVt_PVHV)
              conf = (HV *) SvRV(ST(0));
          }
        id = xspara_new ();

        if (conf)
          {
            I32 hv_number;
            I32 i;

            hv_number = hv_iterinit (conf);

            for (i = 0; i < hv_number; i++)
              {
                I32 retlen;
                char *var_name;
                SV *value_sv = hv_iternextsv (conf, &var_name, &retlen);

                if (0)
                  {}
     /* XSPARA_CONF_VARIABLES_LIST is replaced by xspara_SET_CONF(variable)
        for each of the configuration variables, which starts with else if */
                XSPARA_CONF_VARIABLES_LIST
              }
          }

        /* Create an integer, which the other functions
           need as their first argument. */
        RETVAL = newSViv (id);
    OUTPUT:
        RETVAL
    CLEANUP:
#undef xspara_SET_CONF


int
xspara_end_line_count (int paragraph)
    CODE:
        xspara_set_state (paragraph);
        RETVAL = xspara_end_line_count ();
    OUTPUT:
        RETVAL

int
xspara_counter (int paragraph)
    CODE:
        xspara_set_state (paragraph);
        RETVAL = xspara_counter ();
    OUTPUT:
        RETVAL

void
xspara__end_line (int paragraph)
    CODE:
        xspara_set_state (paragraph);
        xspara__end_line ();

char *
xspara_end_line (int paragraph)
    CODE:
        xspara_set_state (paragraph);
        RETVAL = xspara_end_line ();
    OUTPUT:
        RETVAL

char *
xspara_get_pending (int paragraph)
    CODE:
        xspara_set_state (paragraph);
        RETVAL = xspara_get_pending ();
    OUTPUT:
        RETVAL

# ... is for add_spaces
SV *
xspara_add_pending_word (int paragraph, ...)
    PREINIT:
        int add_spaces = 0;
        char *retval;
    CODE:
        items -= 1;
        if (items > 0)
          {
            if (SvOK(ST(1)))
              {
                add_spaces = (int)SvIV(ST(1));;
              }
          }
        xspara_set_state (paragraph);
        retval = xspara_add_pending_word (add_spaces);

        RETVAL = newSVpv (retval, 0);
        SvUTF8_on (RETVAL);
    OUTPUT:
        RETVAL

SV *
xspara_end (int paragraph)
    PREINIT:
        char *retval;
    CODE:
        xspara_set_state (paragraph);
        retval = xspara_end ();

        RETVAL = newSVpv (retval, 0);
        SvUTF8_on (RETVAL);
    OUTPUT:
        RETVAL


SV *
xspara_add_text (int paragraph, text_in)
        SV *text_in
    PREINIT:
        char *text;
        STRLEN text_len;
        TEXT retval;
    CODE:
        text = SvPVutf8 (text_in, text_len);

        xspara_set_state (paragraph);
        retval = xspara_add_text (text, text_len);

        RETVAL = newSVpv (retval.text ? retval.text : "", retval.end);
        SvUTF8_on (RETVAL);

    OUTPUT:
        RETVAL

SV *
xspara_add_next (int paragraph, text_in, ...)
        SV *text_in
    PREINIT:
        char *text;
        STRLEN text_len;
        TEXT retval;
        SV *arg_in;
        int transparent = 0;
    CODE:
        items -= 2;
        if (items > 0)
          {
            items--;
            arg_in = ST(2);
            if (SvOK(arg_in))
              transparent = (int)SvIV(arg_in);
          }

        text = SvPVutf8 (text_in, text_len);

        xspara_set_state (paragraph);
        retval = xspara_add_next (text, text_len, transparent);

        RETVAL = newSVpv (retval.text ? retval.text : "", retval.end);
        SvUTF8_on (RETVAL);

    OUTPUT:
        RETVAL


void
xspara_remove_end_sentence (int paragraph)
    CODE:
        xspara_set_state (paragraph);
        xspara_remove_end_sentence ();

void
xspara_add_end_sentence (int paragraph, value)
        SV * value
    PREINIT:
        int intvalue = 0;
    CODE:
        if (SvOK(value))
          intvalue = (int)SvIV(value);
        xspara_set_state (paragraph);
        xspara_add_end_sentence (intvalue);

void
xspara_allow_end_sentence (int paragraph)
    CODE:
        xspara_set_state (paragraph);
        xspara_allow_end_sentence ();
  
# Optional parameters are IGNORE_COLUMNS, KEEP_END_LINES, FRENCHSPACING,
# DOUBLE_WIDTH_NO_BREAK.
# Pass them to the C function as -1 if not given or undef.
void
xspara_set_space_protection (int paragraph, space_protection_in, ...)
        SV * space_protection_in
    PREINIT:
        int space_protection = -1;
        int ignore_columns = -1;
        int keep_end_lines = -1;
        int french_spacing = -1;
        int double_width_no_break = -1;
        SV *arg_in;
    CODE:
        if (SvOK(space_protection_in))
          space_protection = (int)SvIV(space_protection_in);
        /* Get optional arguments from stack. */
        items -= 2;
        if (items > 0)
          {
            items--;
            arg_in = ST(2);
            if (SvOK(arg_in))
              ignore_columns = (int)SvIV(arg_in);
          }
        if (items > 0)
          {
            items--;
            arg_in = ST(3);
            if (SvOK(arg_in))
              keep_end_lines = (int)SvIV(arg_in);
          }
        if (items > 0)
          {
            items--;
            arg_in = ST(4);
            if (SvOK(arg_in))
              french_spacing = (int)SvIV(arg_in);
          }
        if (items > 0)
          {
            items--;
            arg_in = ST(5);
            if (SvOK(arg_in))
              double_width_no_break = (int)SvIV(arg_in);
          }

        xspara_set_state (paragraph);
        xspara_set_space_protection
          (space_protection, ignore_columns, keep_end_lines,
           french_spacing, double_width_no_break);

