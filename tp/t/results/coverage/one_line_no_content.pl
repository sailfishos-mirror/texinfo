use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'one_line_no_content'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => '\\input texinfo.tex
',
              'type' => 'text_before_beginning'
            }
          ],
          'type' => 'preamble_before_beginning'
        },
        {
          'contents' => [],
          'type' => 'preamble_before_content'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'one_line_no_content'} = '\\input texinfo.tex
';


$result_texts{'one_line_no_content'} = '';

$result_errors{'one_line_no_content'} = [];


$result_floats{'one_line_no_content'} = {};



$result_converted{'plaintext'}->{'one_line_no_content'} = '';


$result_converted{'html_text'}->{'one_line_no_content'} = '';


$result_converted{'xml'}->{'one_line_no_content'} = '<preamblebeforebeginning>\\input texinfo.tex
</preamblebeforebeginning>';


$result_converted{'latex_text'}->{'one_line_no_content'} = '\\begin{document}
';


$result_converted{'docbook'}->{'one_line_no_content'} = '';

1;
