use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'simple'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'b',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in  b'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 1
              }
            },
            {
              'text' => '.'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'simple'} = '@b{in  b}.';


$result_texts{'simple'} = 'in  b.';

$result_errors{'simple'} = [];


$result_floats{'simple'} = {};



$result_converted{'plaintext'}->{'simple'} = 'in b.
';


$result_converted{'html_text'}->{'simple'} = '<p><b class="b">in  b</b>.</p>';


$result_converted{'latex_text'}->{'simple'} = '\\textbf{in  b}.';


$result_converted{'docbook'}->{'simple'} = '<para><emphasis role="bold">in  b</emphasis>.</para>';

1;
