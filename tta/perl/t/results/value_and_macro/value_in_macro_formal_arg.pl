use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'value_in_macro_formal_arg'} = '*document_root C1
 *before_node_section C5
  *@set C2
  |INFO
  |arg_line:{ argument arg \\n}
   {rawline_arg:argument}
   {rawline_arg:arg}
  {empty_line:\\n}
  *@macro C3 l3
  |EXTRA
  |invalid_syntax:{1}
  |macro_name:{testvalue}
  |misc_args:A{arg|the@value{argument}
   *arguments_line C1
    {macro_line: testvalue { arg , the@value{argument} }\\n}
   {raw:result: @emph{\\arg\\} the \\the\\ thearg \\thearg\\ with value \\the@value{argument}\\\\n}
   *@end C1 l5
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
  *paragraph C1
   {macro_arg1\\n}
';


$result_texis{'value_in_macro_formal_arg'} = '@set argument arg 

@macro testvalue { arg , the@value{argument} }
result: @emph{\\arg\\} the \\the\\ thearg \\thearg\\ with value \\the@value{argument}\\
@end macro

macro_arg1
';


$result_texts{'value_in_macro_formal_arg'} = '

macro_arg1
';

$result_errors{'value_in_macro_formal_arg'} = [
  {
    'error_line' => 'bad or empty @macro formal argument: the@value{argument
',
    'line_nr' => 3,
    'text' => 'bad or empty @macro formal argument: the@value{argument',
    'type' => 'error'
  },
  {
    'error_line' => 'bad syntax for @macro argument: }
',
    'line_nr' => 3,
    'text' => 'bad syntax for @macro argument: }',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `testvalue\'
',
    'line_nr' => 7,
    'text' => 'unknown command `testvalue\'',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 7,
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 7,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_nodes_list{'value_in_macro_formal_arg'} = '';

$result_sections_list{'value_in_macro_formal_arg'} = '';

$result_sectioning_root{'value_in_macro_formal_arg'} = '';

$result_headings_list{'value_in_macro_formal_arg'} = '';

1;
