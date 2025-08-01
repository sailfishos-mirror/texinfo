use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'command_in_end_expanded_raw_one_char_not_in_command'} = '*document_root C1
 *before_node_section C1
  *@tex C2 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
   *rawpreformatted C2
    {In TeX\\n}
    *@end C1 l3
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
    |EXTRA
    |text_arg:{t}
     *line_arg C2
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {t}
      *@asis C1 l3
       *brace_container C1
        {ex}
';


$result_texis{'command_in_end_expanded_raw_one_char_not_in_command'} = '@tex
In TeX
@end t@asis{ex}
';


$result_texts{'command_in_end_expanded_raw_one_char_not_in_command'} = 'In TeX
';

$result_errors{'command_in_end_expanded_raw_one_char_not_in_command'} = [
  {
    'error_line' => 'warning: @asis should not appear in @end
',
    'line_nr' => 3,
    'text' => '@asis should not appear in @end',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: unknown @end t
',
    'line_nr' => 3,
    'text' => 'unknown @end t',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @end: t@asis{ex}
',
    'line_nr' => 3,
    'text' => 'bad argument to @end: t@asis{ex}',
    'type' => 'error'
  },
  {
    'error_line' => 'no matching `@end tex\'
',
    'line_nr' => 1,
    'text' => 'no matching `@end tex\'',
    'type' => 'error'
  }
];


$result_nodes_list{'command_in_end_expanded_raw_one_char_not_in_command'} = '';

$result_sections_list{'command_in_end_expanded_raw_one_char_not_in_command'} = '';

$result_sectioning_root{'command_in_end_expanded_raw_one_char_not_in_command'} = '';

$result_headings_list{'command_in_end_expanded_raw_one_char_not_in_command'} = '';

1;
