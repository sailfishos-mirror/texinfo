use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'clear_no_end_of_line'} = '*document_root C1
 *before_node_section C1
  *@clear C1
  |INFO
  |arg_line:{ jj}
   {rawline_arg:jj}
';


$result_texis{'clear_no_end_of_line'} = '@clear jj';


$result_texts{'clear_no_end_of_line'} = '';

$result_errors{'clear_no_end_of_line'} = [];


1;
