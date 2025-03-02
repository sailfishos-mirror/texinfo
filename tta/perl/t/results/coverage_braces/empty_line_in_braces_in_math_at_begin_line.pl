use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_line_in_braces_in_math_at_begin_line'} = '*document_root C1
 *before_node_section C1
  *paragraph C1
   *0 @math C1 l1
    *brace_command_context C4
     {a\\n}
     {empty_line:\\n}
     *balanced_braces C3 l3
      {{b\\n}
      {empty_line:\\n}
      {}}
     { c\\n}
';


$result_texis{'empty_line_in_braces_in_math_at_begin_line'} = '@math{a

{b

} c
}';


$result_texts{'empty_line_in_braces_in_math_at_begin_line'} = 'a

{b

} c
';

$result_errors{'empty_line_in_braces_in_math_at_begin_line'} = [];


$result_floats{'empty_line_in_braces_in_math_at_begin_line'} = {};


1;
