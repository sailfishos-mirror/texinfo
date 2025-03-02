use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'style_not_closed_in_block_command'} = '*document_root C1
 *before_node_section C1
  *0 @cartouche C3 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C2
    {cartouche }
    *1 @code C1 l2
     *brace_container C1
      {in code \\n}
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{cartouche}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {cartouche}
';


$result_texis{'style_not_closed_in_block_command'} = '@cartouche
cartouche @code{in code 
}@end cartouche
';


$result_texts{'style_not_closed_in_block_command'} = 'cartouche in code 
';

$result_errors{'style_not_closed_in_block_command'} = [
  {
    'error_line' => '@end cartouche seen before @code closing brace
',
    'line_nr' => 2,
    'text' => '@end cartouche seen before @code closing brace',
    'type' => 'error'
  }
];


$result_floats{'style_not_closed_in_block_command'} = {};


1;
