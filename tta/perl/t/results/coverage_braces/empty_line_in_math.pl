use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_line_in_math'} = '*document_root C1
 *before_node_section C1
  *paragraph C1
   *0 @math C1 l1
    *brace_command_context C3
     {a\\n}
     {empty_line:\\n}
     {b}
';


$result_texis{'empty_line_in_math'} = '@math{a

b}';


$result_texts{'empty_line_in_math'} = 'a

b';

$result_errors{'empty_line_in_math'} = [];


$result_floats{'empty_line_in_math'} = {};


1;
