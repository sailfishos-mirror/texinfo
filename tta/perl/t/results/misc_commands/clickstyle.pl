use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'clickstyle'} = '*document_root C1
 *before_node_section C8
  *@clickstyle C1 l1
  |INFO
  |arg_line:{ @result\\n}
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:@result}
  {empty_line:\\n}
  *paragraph C3
   {A }
   *0 @click C1 l3
   |EXTRA
   |clickstyle:{result}
    *brace_container
   { (result).\\n}
  {empty_line:\\n}
  *@clickstyle C1 l5
  |INFO
  |arg_line:{@equiv\\n}
  |EXTRA
  |global_command_number:{2}
   {rawline_arg:@equiv}
  {empty_line:\\n}
  *paragraph C3
   {A }
   *1 @click C1 l7
   |EXTRA
   |clickstyle:{equiv}
    *brace_container
   { (equiv no space)\\n}
  {empty_line:\\n}
';


$result_texis{'clickstyle'} = '@clickstyle @result

A @click{} (result).

@clickstyle@equiv

A @click{} (equiv no space)

';


$result_texts{'clickstyle'} = '
A => (result).


A == (equiv no space)

';

$result_errors{'clickstyle'} = [];


$result_floats{'clickstyle'} = {};


1;
