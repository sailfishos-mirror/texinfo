use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'protect_first_parenthesis_after_parenthesis_source_mark'} = '*document_root C1
 *before_node_section C4
  *0 @macro C3 l1
  |EXTRA
  |macro_name:{vvv}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: vvv {}\\n}
   {raw:(\\n}
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{macro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {macro}
  {empty_line:\\n}
  *1 @anchor C1 l5
  |EXTRA
  |is_target:{1}
  |normalized:{_0028my_005ff_0029}
   *brace_arg C2
    *2 @asis C1
     *brace_container C1
      {(}
      >SOURCEMARKS
      >macro_expansion<start;1>
       >*macro_call C1
       >|INFO
       >|command_name:{vvv}
        >*brace_arg
      >macro_expansion<end;1><p:1>
    {my_f)}
  *paragraph C1
   {.\\n}
';


$result_texis{'protect_first_parenthesis_after_parenthesis_source_mark'} = '@macro vvv {}
(
@end macro

@anchor{@asis{(}my_f)}.
';


$result_texts{'protect_first_parenthesis_after_parenthesis_source_mark'} = '
.
';

$result_errors{'protect_first_parenthesis_after_parenthesis_source_mark'} = [
  {
    'error_line' => 'syntax for an external node used for `(my_f)\'
',
    'line_nr' => 5,
    'text' => 'syntax for an external node used for `(my_f)\'',
    'type' => 'error'
  }
];


1;
