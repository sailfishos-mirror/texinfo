use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'command_in_end_ignored_raw_two_char_before_command'} = '*document_root C1
 *before_node_section C1
  *@html C2 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *elided_rawpreformatted C2
    {raw:In html\\n}
    {raw:@end ht@asis{}ml\\n}
';


$result_texis{'command_in_end_ignored_raw_two_char_before_command'} = '@html
In html
@end ht@asis{}ml
';


$result_texts{'command_in_end_ignored_raw_two_char_before_command'} = '';

$result_errors{'command_in_end_ignored_raw_two_char_before_command'} = [
  {
    'error_line' => 'no matching `@end html\'
',
    'line_nr' => 3,
    'text' => 'no matching `@end html\'',
    'type' => 'error'
  }
];


1;
