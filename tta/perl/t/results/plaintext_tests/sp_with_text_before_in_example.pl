use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'sp_with_text_before_in_example'} = '*document_root C1
 *before_node_section C2
  {empty_line:\\n}
  *0 @example C3 l2
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C3
    {sp}
    *@sp C1 l3
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |misc_args:A{4}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {4}
    {text\\n}
   *@end C1 l5
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
';


$result_texis{'sp_with_text_before_in_example'} = '
@example
sp@sp 4
text
@end example
';


$result_texts{'sp_with_text_before_in_example'} = '
sp



text
';

$result_errors{'sp_with_text_before_in_example'} = [
  {
    'error_line' => 'warning: @sp should only appear at the beginning of a line
',
    'line_nr' => 3,
    'text' => '@sp should only appear at the beginning of a line',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'sp_with_text_before_in_example'} = '     sp



     text
';

1;
