use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'alias_macro_target_removed'} = '*document_root C1
 *before_node_section C9
  *0 @macro C3 l1
  |EXTRA
  |macro_name:{mystrong}
  |misc_args:A{arg}
   *arguments_line C1
    {macro_line: mystrong {arg}\\n}
   {raw:!!\\arg\\!!\\n}
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
  *@alias C1 l5
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{new|mystrong}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {new = mystrong}
  {empty_line:\\n}
  *paragraph C1
   {!!aa!!\\n}
   >SOURCEMARKS
   >macro_expansion<start;1>
    >*macro_call C1
    >|INFO
    >|alias_of:{new}
    >|command_name:{mystrong}
     >*brace_arg C1
      >{aa}
   >macro_expansion<end;1><p:6>
  {empty_line:\\n}
  *@unmacro C1
  |INFO
  |arg_line:{ mystrong\\n}
   {rawline_arg:mystrong}
  {empty_line:\\n}
  *paragraph C1
   {bb\\n}
';


$result_texis{'alias_macro_target_removed'} = '@macro mystrong {arg}
!!\\arg\\!!
@end macro

@alias new = mystrong

!!aa!!

@unmacro mystrong

bb
';


$result_texts{'alias_macro_target_removed'} = '

!!aa!!


bb
';

$result_errors{'alias_macro_target_removed'} = [
  {
    'error_line' => 'unknown command `mystrong\'
',
    'line_nr' => 11,
    'text' => 'unknown command `mystrong\'',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 11,
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 11,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


1;
