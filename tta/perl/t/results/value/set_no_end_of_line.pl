use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'set_no_end_of_line'} = '*document_root C1
 *before_node_section C1
  *@set C2
  |INFO
  |arg_line:{ arg}
   {rawline_arg:arg}
   {rawline_arg:}
';


$result_texis{'set_no_end_of_line'} = '@set arg';


$result_texts{'set_no_end_of_line'} = '';

$result_errors{'set_no_end_of_line'} = [];


1;
