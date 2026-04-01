use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'clickstyle_no_end_of_line'} = '*document_root C1
 *before_node_section C2
  {spaces_before_paragraph: }
  *paragraph C1
   *@result l1
';


$result_texis{'clickstyle_no_end_of_line'} = ' @result';


$result_texts{'clickstyle_no_end_of_line'} = '=>';

$result_errors{'clickstyle_no_end_of_line'} = '* E l1|unknown command `clickstyle\'
 unknown command `clickstyle\'

* E l1|@result expected braces
 @result expected braces

';

$result_nodes_list{'clickstyle_no_end_of_line'} = '';

$result_sections_list{'clickstyle_no_end_of_line'} = '';

$result_sectioning_root{'clickstyle_no_end_of_line'} = '';

$result_headings_list{'clickstyle_no_end_of_line'} = '';

1;
