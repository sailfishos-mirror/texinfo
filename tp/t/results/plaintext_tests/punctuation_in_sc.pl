use vars qw(%result_texis %result_texts %result_trees %result_errors 
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
              'parent' => {},
              'text' => 'one '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'two.'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'sc',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' three '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'FOUR.'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'sc',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' five'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'punctuation_in_sc'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_sc'}{'contents'}[0]{'contents'}[0];
$result_trees{'punctuation_in_sc'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_sc'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'punctuation_in_sc'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_sc'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'punctuation_in_sc'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'punctuation_in_sc'}{'contents'}[0]{'contents'}[0];
$result_trees{'punctuation_in_sc'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'punctuation_in_sc'}{'contents'}[0]{'contents'}[0];
$result_trees{'punctuation_in_sc'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_sc'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'punctuation_in_sc'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_sc'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'punctuation_in_sc'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'punctuation_in_sc'}{'contents'}[0]{'contents'}[0];
$result_trees{'punctuation_in_sc'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'punctuation_in_sc'}{'contents'}[0]{'contents'}[0];
$result_trees{'punctuation_in_sc'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_sc'}{'contents'}[0];
$result_trees{'punctuation_in_sc'}{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_sc'};

$result_texis{'punctuation_in_sc'} = 'one @sc{two.} three @sc{FOUR.} five';


$result_texts{'punctuation_in_sc'} = 'one TWO. three FOUR. five';

$result_errors{'punctuation_in_sc'} = [];


$result_floats{'punctuation_in_sc'} = {};



$result_converted{'plaintext'}->{'punctuation_in_sc'} = 'one TWO.  three FOUR. five
';

1;
