use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'double_titlepage_not_closed'} = '*document_root C1
 *before_node_section C1
  *@titlepage C6 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {empty_line:\\n}
   *paragraph C1
    {This is in title page\\n}
   {empty_line:\\n}
   {empty_line:\\n}
   *@titlepage C3 l6
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    {empty_line:\\n}
    *paragraph C1
     {And still in title page\\n}
';


$result_texis{'double_titlepage_not_closed'} = '@titlepage

This is in title page


@titlepage

And still in title page
';


$result_texts{'double_titlepage_not_closed'} = '';

$result_errors{'double_titlepage_not_closed'} = [
  {
    'error_line' => 'warning: @titlepage should not appear in @titlepage block
',
    'line_nr' => 6,
    'text' => '@titlepage should not appear in @titlepage block',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: multiple @titlepage
',
    'line_nr' => 6,
    'text' => 'multiple @titlepage',
    'type' => 'warning'
  },
  {
    'error_line' => 'no matching `@end titlepage\'
',
    'line_nr' => 8,
    'text' => 'no matching `@end titlepage\'',
    'type' => 'error'
  },
  {
    'error_line' => 'no matching `@end titlepage\'
',
    'line_nr' => 8,
    'text' => 'no matching `@end titlepage\'',
    'type' => 'error'
  }
];


1;
