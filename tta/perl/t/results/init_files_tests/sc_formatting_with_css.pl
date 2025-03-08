use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'sc_formatting_with_css'} = '*document_root C1
 *before_node_section C5
  *preamble_before_content C2
   *@settitle C1 l1
    *line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     {In title }
     *0 @sc C1 l1
      *brace_container C1
       {my string}
     { NEXT}
   {empty_line:\\n}
  *paragraph C2
   *1 @sc C1 l3
    *brace_container C1
     {in sc}
   {. OUT.\\n}
  {empty_line:\\n}
  *2 @example C3 l5
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C2
    *3 @sc C1 l6
     *brace_container C1
      {small case in example}
    { MORE text.\\n}
   *@end C1 l7
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{example}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {example}
  {empty_line:\\n}
';


$result_texis{'sc_formatting_with_css'} = '@settitleIn title @sc{my string} NEXT

@sc{in sc}. OUT.

@example
@sc{small case in example} MORE text.
@end example

';


$result_texts{'sc_formatting_with_css'} = '
IN SC. OUT.

SMALL CASE IN EXAMPLE MORE text.

';

$result_errors{'sc_formatting_with_css'} = [
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 1,
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 1,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


1;
