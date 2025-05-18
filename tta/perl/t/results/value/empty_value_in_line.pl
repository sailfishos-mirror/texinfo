use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_value_in_line'} = '*document_root C1
 *before_node_section C5
  *@set C2
  |INFO
  |arg_line:{ myspace\\n}
   {rawline_arg:myspace}
   {rawline_arg:}
  {empty_line:\\n}
  *paragraph C1
   {1 \\n}
  {empty_line: \\n}
  >SOURCEMARKS
  >value_expansion<start;1>{}
   >*@value C1
    >*brace_container C1
     >{myspace}
  >value_expansion<end;1>
  *paragraph C1
   {1\\n}
';


$result_texis{'empty_value_in_line'} = '@set myspace

1 
 
1
';


$result_texts{'empty_value_in_line'} = '
1 
 
1
';

$result_errors{'empty_value_in_line'} = [];


$result_nodes_list{'empty_value_in_line'} = '';

$result_sections_list{'empty_value_in_line'} = '';

$result_sectioning_root{'empty_value_in_line'} = '';

$result_headings_list{'empty_value_in_line'} = '';

1;
