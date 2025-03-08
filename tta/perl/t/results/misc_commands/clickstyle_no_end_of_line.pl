use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'clickstyle_no_end_of_line'} = '*document_root C1
 *before_node_section C1
  *@clickstyle C1 l1
  |INFO
  |arg_line:{ @result}
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:@result}
';


$result_texis{'clickstyle_no_end_of_line'} = '@clickstyle @result';


$result_texts{'clickstyle_no_end_of_line'} = '';

$result_errors{'clickstyle_no_end_of_line'} = [];


1;
