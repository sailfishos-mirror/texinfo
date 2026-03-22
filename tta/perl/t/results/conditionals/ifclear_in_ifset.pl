use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'ifclear_in_ifset'} = '*document_root C1
 *before_node_section C2
  {empty_line:\\n}
  >SOURCEMARKS
  >ignored_conditional_block<1><p:1>
   >*@ifset C4 l2
    >*arguments_line C1
     >*block_line_arg C3
      >{spaces_before_argument: }
      >{a}
      >{spaces_after_argument:\\n}
    >{raw:@ifclear ok  - ok, ignored\\n}
    >{raw:@end junky   - ok, ignored\\n}
    >*@end C1 l5
    >|EXTRA
    >|text_arg:{ifset}
     >*line_arg C3
      >{spaces_before_argument: }
      >{ifset}
      >{spaces_after_argument:\\n}
  *@c C1
   *line_arg C3
    {spaces_before_argument: }
    {rawline_text:WRONG - missing @end ifset.}
    {spaces_after_argument:\\n}
';


$result_texis{'ifclear_in_ifset'} = '
@c WRONG - missing @end ifset.
';


$result_texts{'ifclear_in_ifset'} = '
';

$result_errors{'ifclear_in_ifset'} = '';

$result_nodes_list{'ifclear_in_ifset'} = '';

$result_sections_list{'ifclear_in_ifset'} = '';

$result_sectioning_root{'ifclear_in_ifset'} = '';

$result_headings_list{'ifclear_in_ifset'} = '';

1;
