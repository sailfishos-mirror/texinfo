/* Copyright 2010-2024 Free Software Foundation, Inc.

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

/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#undef context

#include "tree_types.h"
#include "converter_types.h"
#include "document_types.h"
#include "build_perl_info.h"
#include "get_converter_perl_info.h"
#include "xs_utils.h"
#include "call_conversion_perl.h"

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */


static int texinfo_convert_html_module_loaded;

void
call_config_GNUT_load_init_file (const char *file_path)
{
  int count;

  dTHX;

  if (!texinfo_convert_html_module_loaded)
    {
      eval_pv ("use Texinfo::Convert::HTML;", TRUE);
      texinfo_convert_html_module_loaded = 1;
    }

  dSP;

  ENTER;
  SAVETMPS;

  PUSHMARK(SP);
  EXTEND(SP, 1);

  PUSHs(sv_2mortal (newSVpv_byte (file_path, 0)));

  PUTBACK;

  count = call_pv ("Texinfo::Config::GNUT_load_init_file",
                   G_VOID);

  SPAGAIN;

  if (count != 0)
    croak ("Texinfo::Config::GNUT_load_init_file should not return anything\n");

  PUTBACK;

  FREETMPS;
  LEAVE;
}

CONVERTER *
call_convert_converter (const char *module_name,
                        const DEPRECATED_DIRS_LIST *deprecated_directories,
                        const OPTIONS_LIST *converter_options)
{
  SV *options_list_sv;
  int count;
  CONVERTER *result;
  SV *result_sv;
  
  dTHX;
  
  options_list_sv
    = build_sv_options_from_options_list (converter_options, 0);

  dSP;

  ENTER; 
  SAVETMPS;

  PUSHMARK(SP);
  EXTEND(SP, 2);

  SvREFCNT_inc (options_list_sv);

  PUSHs(sv_2mortal (newSVpv (module_name, 0)));
  PUSHs(sv_2mortal (options_list_sv));
  PUTBACK;

  count = call_method ("converter",
                       G_SCALAR);

  SPAGAIN;

  if (count != 1)
    croak ("call_convert_converter should return 1 item\n");

  result_sv = POPs;
  result = get_sv_converter (result_sv, "call_convert_converter");

  PUTBACK;

  FREETMPS;
  LEAVE;

  return result;
}

/* FIXME it would probably be better to be able to keep the converter
   SV to keep the blessing information instead of needing the module name */
char *
call_converter_output (const char *module_name, CONVERTER *self,
                       DOCUMENT *document)
{
  SV *document_sv;
  SV *converter_sv;
  int count;
  char *result;
  const char *result_ret;
  STRLEN len;
  SV *result_sv;
  HV *hv_stash;
  
  dTHX;
  
  document_sv = get_document (document->descriptor);
  SvREFCNT_inc (document_sv);

  converter_sv = newRV_inc (self->hv);
  SvREFCNT_inc (converter_sv);

  hv_stash = gv_stashpv (module_name, 0);
  sv_bless (converter_sv, hv_stash);

  dSP;

  ENTER; 
  SAVETMPS;

  PUSHMARK(SP);
  EXTEND(SP, 2);

  PUSHs(sv_2mortal (converter_sv));
  PUSHs(sv_2mortal (document_sv));
  PUTBACK;

  count = call_method ("output",
                       G_SCALAR);

  SPAGAIN;

  if (count != 1)
    croak ("call_output should return 1 item\n");

  result_sv = POPs;
  result_ret = SvPVutf8 (result_sv, len);
  result = non_perl_strndup (result_ret, len);

  PUTBACK;

  FREETMPS;
  LEAVE;

  return result;
}

/* following is used to embed a Perl interpreter */
static PerlInterpreter *my_perl;

/* this is somewhat magic, but it works; obtained according to perlembed with
  perl -MExtUtils::Embed -e xsinit -- -o perlxsi.c
 */

EXTERN_C void xs_init (pTHX);

EXTERN_C void boot_DynaLoader (pTHX_ CV* cv);

EXTERN_C void
xs_init(pTHX)
{
    static const char file[] = __FILE__;
    dXSUB_SYS;
    PERL_UNUSED_CONTEXT;

    /* DynaLoader is a special case */
    newXS("DynaLoader::boot_DynaLoader", boot_DynaLoader, file);
}

/* load a Perl intperpreter and load Texinfo modules.  To be called once */
void
call_init_perl (int *argc_ref, char ***argv_ref, char ***env_ref,
                char *load_txi_modules_path)
{
  char *embedding[] = { "", load_txi_modules_path };
  /* The need and use of arguments of PERL_SYS_INIT3 are not explained
     clearly anywhere.  In perlembed they seem to be mandatory, but
     there is nothing very explicit.  We follow perlembed:
   PERL_SYS_INIT3() must be invoked on the C main() argc, argv and env and only once.
   */
  /* PERL_SYS_INIT3(&argc,&argv,&env); */
  PERL_SYS_INIT3 (argc_ref, argv_ref, env_ref);
  /* PERL_SYS_INIT3((int *)NULL,(char ***)NULL,(char ***)NULL); */
  my_perl = perl_alloc();
  perl_construct(my_perl);
  PL_exit_flags |= PERL_EXIT_DESTRUCT_END;
  perl_parse(my_perl, xs_init, 2, embedding, (char **)NULL);
  /* perl_run(my_perl); */
}

void
call_finish_perl (void)
{
  perl_destruct(my_perl);
  perl_free(my_perl);
  PERL_SYS_TERM();
}
