use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'ignored_value_definition'} = '*document_root C1
 *before_node_section C5
  *@set C2
  |INFO
  |arg_line:{ aa outside\\n}
   {rawline_arg:aa}
   {rawline_arg:outside}
  {empty_line:\\n}
  *paragraph C2
   *@inlinefmt C2 l3
   |EXTRA
   |format:{tex}
    *brace_arg C1
     {tex}
    *elided_brace_command_arg C1
     {raw:\\n@set aa in inlinefmt tex\\n}
   {\\n}
  {empty_line:\\n}
  *paragraph C1
   {outside.\\n}
   >SOURCEMARKS
   >value_expansion<start;1>{outside}
    >*@value C1
     >*brace_container C1
      >{aa}
   >value_expansion<end;1><p:7>
';


$result_texis{'ignored_value_definition'} = '@set aa outside

@inlinefmt{tex,
@set aa in inlinefmt tex
}

outside.
';


$result_texts{'ignored_value_definition'} = '


outside.
';

$result_errors{'ignored_value_definition'} = [];


1;
