use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'minimal_only_input_line'} = '*document_root C1
 *before_node_section C2
  *preamble_before_beginning C1
   {text_before_beginning:\\input texinfo.tex\\n}
  *preamble_before_content
';


$result_texis{'minimal_only_input_line'} = '\\input texinfo.tex
';


$result_texts{'minimal_only_input_line'} = '';

$result_errors{'minimal_only_input_line'} = [];


$result_floats{'minimal_only_input_line'} = {};



$result_converted{'plaintext'}->{'minimal_only_input_line'} = '';


$result_converted{'html_text'}->{'minimal_only_input_line'} = '';


$result_converted{'xml'}->{'minimal_only_input_line'} = '<preamblebeforebeginning>\\input texinfo.tex
</preamblebeforebeginning>';


$result_converted{'latex_text'}->{'minimal_only_input_line'} = '\\begin{document}
';


$result_converted{'docbook'}->{'minimal_only_input_line'} = '';

1;
