use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'brace_opened_no_command'} = '*document_root C2
 *before_node_section C1
  *paragraph C5
   {anchortruc}
   *@}
   { }
   *0 @anchor C1 l1
   |EXTRA
   |is_target:{1}
   |normalized:{truc}
    *brace_arg C1
     {truc}
   {.\\n}
 *@bye C1
  {rawline_arg:}
';


$result_texis{'brace_opened_no_command'} = 'anchortruc@} @anchor{truc}.
@bye';


$result_texts{'brace_opened_no_command'} = 'anchortruc} .
';

$result_errors{'brace_opened_no_command'} = [
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 1,
    'text' => 'misplaced {',
    'type' => 'error'
  }
];


1;
