use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_set'} = '*document_root C1
 *before_node_section C3
  *@set C2
  |INFO
  |arg_line:{ myspace\\n}
   {rawline_arg:myspace}
   {rawline_arg:}
  {empty_line:\\n}
  *paragraph C1
   {1  1\\n}
   >SOURCEMARKS
   >value_expansion<start;1><p:2>{}
    >*@value C1
     >*brace_container C1
      >{myspace}
   >value_expansion<end;1><p:2>
';


$result_texis{'empty_set'} = '@set myspace

1  1
';


$result_texts{'empty_set'} = '
1  1
';

$result_errors{'empty_set'} = [];


$result_floats{'empty_set'} = {};


1;
