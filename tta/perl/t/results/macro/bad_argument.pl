use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'bad_argument'} = '*document_root C1
 *before_node_section C7
  *@macro C3 l1
  |EXTRA
  |invalid_syntax:{1}
   *arguments_line C1
    {macro_line:\\n}
   {raw:in macro\\n}
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{macro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {macro}
  {empty_line:\\n}
  *@rmacro C3 l5
  |EXTRA
  |invalid_syntax:{1}
  |macro_name:{abar}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: abar aaa\\n}
   {raw:in\\n}
   *@end C1 l7
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{rmacro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {rmacro}
  {empty_line:\\n}
  *@macro C3 l9
  |EXTRA
  |invalid_syntax:{1}
  |macro_name:{aftername}
  |misc_args:A{ggg}
   *arguments_line C1
    {macro_line: aftername {ggg} more  \\n}
   {raw:in macro\\n}
   *@end C1 l11
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{macro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {macro}
  {empty_line:\\n}
  *@macro C3 l13
  |EXTRA
  |invalid_syntax:{1}
   *arguments_line C1
    {macro_line: #badname\\n}
   {raw:in #\\n}
   *@end C1 l15
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{macro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {macro}
';


$result_texis{'bad_argument'} = '@macro
in macro
@end macro

@rmacro abar aaa
in
@end rmacro

@macro aftername {ggg} more  
in macro
@end macro

@macro #badname
in #
@end macro
';


$result_texts{'bad_argument'} = '


';

$result_errors{'bad_argument'} = [
  {
    'error_line' => '@macro requires a name
',
    'line_nr' => 1,
    'text' => '@macro requires a name',
    'type' => 'error'
  },
  {
    'error_line' => 'bad syntax for @rmacro argument: aaa
',
    'line_nr' => 5,
    'text' => 'bad syntax for @rmacro argument: aaa',
    'type' => 'error'
  },
  {
    'error_line' => 'bad syntax for @macro argument: more  
',
    'line_nr' => 9,
    'text' => 'bad syntax for @macro argument: more  ',
    'type' => 'error'
  },
  {
    'error_line' => '@macro requires a name
',
    'line_nr' => 13,
    'text' => '@macro requires a name',
    'type' => 'error'
  }
];


$result_nodes_list{'bad_argument'} = '';

$result_sections_list{'bad_argument'} = '';

$result_sectioning_root{'bad_argument'} = '';

$result_headings_list{'bad_argument'} = '';

1;
