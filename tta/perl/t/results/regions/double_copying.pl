use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'double_copying'} = '*document_root C1
 *before_node_section C1
  *@copying C6 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {empty_line:\\n}
   *paragraph C1
    {This is a copyright notice\\n}
   {empty_line:\\n}
   *@copying C3 l5
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *paragraph C1
     {And a second one (?)\\n}
    *@end C1 l7
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
    |EXTRA
    |text_arg:{copying}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {copying}
   *@end C1 l8
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{copying}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {copying}
';


$result_texis{'double_copying'} = '@copying

This is a copyright notice

@copying
And a second one (?)
@end copying
@end copying
';


$result_texts{'double_copying'} = '';

$result_errors{'double_copying'} = [
  {
    'error_line' => 'warning: @copying should not appear in @copying block
',
    'line_nr' => 5,
    'text' => '@copying should not appear in @copying block',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: multiple @copying
',
    'line_nr' => 5,
    'text' => 'multiple @copying',
    'type' => 'warning'
  }
];


$result_nodes_list{'double_copying'} = '';

$result_sections_list{'double_copying'} = '';

$result_sectioning_root{'double_copying'} = '';

$result_headings_list{'double_copying'} = '';

1;
