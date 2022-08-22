use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'math_leading_trailing_spaces'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a = b '
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'math',
              'contents' => [],
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
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
$result_trees{'math_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'math_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'math_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'math_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'math_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'math_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'math_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'math_leading_trailing_spaces'}{'contents'}[0];
$result_trees{'math_leading_trailing_spaces'}{'contents'}[0]{'parent'} = $result_trees{'math_leading_trailing_spaces'};

$result_texis{'math_leading_trailing_spaces'} = '@math{ a = b }';


$result_texts{'math_leading_trailing_spaces'} = 'a = b ';

$result_errors{'math_leading_trailing_spaces'} = [];


$result_floats{'math_leading_trailing_spaces'} = {};


1;
