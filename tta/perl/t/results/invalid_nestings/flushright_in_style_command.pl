use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'flushright_in_style_command'} = '*document_root C1
 *before_node_section C2
  *paragraph C1
   *0 @code C1 l1
    *brace_container C1
     {\\n}
  *1 @flushright C3 l2
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C1
    {in flushright\\n}
   *@end C1 l4
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{flushright}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {flushright}
';


$result_texis{'flushright_in_style_command'} = '@code{
}@flushright
in flushright
@end flushright
';


$result_texts{'flushright_in_style_command'} = '
in flushright
';

$result_errors{'flushright_in_style_command'} = [
  {
    'error_line' => '@code missing closing brace
',
    'line_nr' => 1,
    'text' => '@code missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 5,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


1;
