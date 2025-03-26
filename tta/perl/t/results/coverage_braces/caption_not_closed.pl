use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'caption_not_closed'} = '*document_root C2
 *before_node_section C2
  *0 @float C4 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |float_type:{Text}
  |global_command_number:{1}
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {Text}
   {empty_line:\\n}
   *@caption C1 l3
    *brace_command_context C4
     *paragraph C1
      {Not closed caption\\n}
     {empty_line:\\n}
     *paragraph C6
      {The caption is closed as soon as }
      *@@
      {end float is encountered, since\\n}
      {as much as possible is closed in order to find the }
      *@@
      {float beginning.\\n}
     {empty_line:\\n}
   *@end C1 l8
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{float}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {float}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'caption_not_closed'} = '@float Text

@caption{Not closed caption

The caption is closed as soon as @@end float is encountered, since
as much as possible is closed in order to find the @@float beginning.

}@end float

@bye
';


$result_texts{'caption_not_closed'} = 'Text


';

$result_errors{'caption_not_closed'} = [
  {
    'error_line' => '@end float seen before @caption closing brace
',
    'line_nr' => 3,
    'text' => '@end float seen before @caption closing brace',
    'type' => 'error'
  }
];


$result_floats{'caption_not_closed'} = 'Text: 1
 F
  C: Not closed caption
   
   The caption is closed as soon as @@end float is encountered, since
   as much as possible is closed in order to find the @@float beginning.
   
';

1;
