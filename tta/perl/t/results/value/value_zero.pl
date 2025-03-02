use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'value_zero'} = '*document_root C1
 *before_node_section C2
  *@set C2
  |INFO
  |arg_line:{ zero 0\\n}
   {rawline_arg:zero}
   {rawline_arg:0}
  *paragraph C2
   {Value\\n}
   {0}
   >SOURCEMARKS
   >value_expansion<start;1>{0}
    >*@value C1
     >*brace_container C1
      >{zero}
   >value_expansion<end;1><p:1>
';


$result_texis{'value_zero'} = '@set zero 0
Value
0';


$result_texts{'value_zero'} = 'Value
0';

$result_errors{'value_zero'} = [];


$result_floats{'value_zero'} = {};


1;
