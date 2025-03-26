use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'quotation_beginning_and_end_on_line'} = '*document_root C1
 *before_node_section C1
  *@quotation C2 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{ }
     {in quotation}
   *@end C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{quotation}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {quotation}
';


$result_texis{'quotation_beginning_and_end_on_line'} = '@quotation in quotation @end quotation
';


$result_texts{'quotation_beginning_and_end_on_line'} = 'in quotation
';

$result_errors{'quotation_beginning_and_end_on_line'} = [
  {
    'error_line' => 'warning: @end should only appear at the beginning of a line
',
    'line_nr' => 1,
    'text' => '@end should only appear at the beginning of a line',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'quotation_beginning_and_end_on_line'} = '     in quotation: 
';


$result_converted{'html_text'}->{'quotation_beginning_and_end_on_line'} = '<blockquote class="quotation">
</blockquote>
';


$result_converted{'xml'}->{'quotation_beginning_and_end_on_line'} = '<quotation spaces=" " endspaces=" "><quotationtype>in quotation </quotationtype>
</quotation>
';


$result_converted{'docbook'}->{'quotation_beginning_and_end_on_line'} = '<blockquote></blockquote>';

1;
