use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'punctuation_in_sc'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => 'one '
            },
            {
              'cmdname' => 'sc',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'two.'
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
              'text' => ' three '
            },
            {
              'cmdname' => 'sc',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'FOUR.'
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
              'text' => ' five'
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

$result_texis{'punctuation_in_sc'} = 'one @sc{two.} three @sc{FOUR.} five';


$result_texts{'punctuation_in_sc'} = 'one TWO. three FOUR. five';

$result_errors{'punctuation_in_sc'} = [];


$result_floats{'punctuation_in_sc'} = {};



$result_converted{'plaintext'}->{'punctuation_in_sc'} = 'one TWO.  three FOUR. five
';

1;
