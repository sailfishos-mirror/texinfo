use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'not_only_characters'} = '*document_root C1
 *before_node_section C3
  *@set C2
  |INFO
  |arg_line:{ -e_\'::; hh\\n}
   {rawline_arg:-e_\'::;}
   {rawline_arg:hh}
  {empty_line:\\n}
  *paragraph C1
   {Say hh.\\n}
   >SOURCEMARKS
   >value_expansion<start;1><p:4>{hh}
    >*@value C1
     >*brace_container C1
      >{-e_\'::;}
   >value_expansion<end;1><p:6>
';


$result_texis{'not_only_characters'} = '@set -e_\'::; hh

Say hh.
';


$result_texts{'not_only_characters'} = '
Say hh.
';

$result_errors{'not_only_characters'} = [];


1;
