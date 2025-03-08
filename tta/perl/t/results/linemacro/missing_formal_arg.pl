use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'missing_formal_arg'} = '*document_root C1
 *before_node_section C4
  *0 @linemacro C3 l1
  |EXTRA
  |invalid_syntax:{1}
  |macro_name:{mymacro}
  |misc_args:A{a||b}
   *arguments_line C1
    {macro_line: mymacro {a, , b}\\n}
   {raw:\\a\\ and \\b\\.\\n}
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{linemacro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {linemacro}
  {empty_line:\\n}
  {spaces_before_paragraph: }
  *paragraph C1
   {one two three\\n}
';


$result_texis{'missing_formal_arg'} = '@linemacro mymacro {a, , b}
\\a\\ and \\b\\.
@end linemacro

 one two three
';


$result_texts{'missing_formal_arg'} = '
one two three
';

$result_errors{'missing_formal_arg'} = [
  {
    'error_line' => 'bad or empty @linemacro formal argument: 
',
    'line_nr' => 1,
    'text' => 'bad or empty @linemacro formal argument: ',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `mymacro\'
',
    'line_nr' => 5,
    'text' => 'unknown command `mymacro\'',
    'type' => 'error'
  }
];


1;
