use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'paragraphindent_asis_first'} = '*document_root C1
 *before_node_section C7
  {empty_line:\\n}
  {spaces_before_paragraph:     }
  *paragraph C1
   {bbb\\n}
  {empty_line:\\n}
  *@paragraphindent C1 l4
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{asis}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {asis}
  {spaces_before_paragraph:     }
  *paragraph C1
   {ccc\\n}
';


$result_texis{'paragraphindent_asis_first'} = '
     bbb

@paragraphindent asis
     ccc
';


$result_texts{'paragraphindent_asis_first'} = '
bbb

ccc
';

$result_errors{'paragraphindent_asis_first'} = [];


$result_floats{'paragraphindent_asis_first'} = {};



$result_converted{'info'}->{'paragraphindent_asis_first'} = 'This is , produced from .

bbb

     ccc

Tag Table:

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'paragraphindent_asis_first'} = [
  {
    'error_line' => 'warning: document without nodes
',
    'text' => 'document without nodes',
    'type' => 'warning'
  }
];


1;
