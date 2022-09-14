use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'anchor_and_empty_lines'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'text 1.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in anchor'
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'anchor',
          'contents' => [],
          'extra' => {
            'node_content' => [
              {}
            ],
            'normalized' => 'in-anchor'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 3,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'spaces_after_close_brace'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'text 2.
'
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
$result_trees{'anchor_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_and_empty_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'anchor_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_and_empty_lines'}{'contents'}[0];
$result_trees{'anchor_and_empty_lines'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'anchor_and_empty_lines'}{'contents'}[0];
$result_trees{'anchor_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'anchor_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'anchor_and_empty_lines'}{'contents'}[0]{'contents'}[2];
$result_trees{'anchor_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'extra'}{'node_content'}[0] = $result_trees{'anchor_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'anchor_and_empty_lines'}{'contents'}[0];
$result_trees{'anchor_and_empty_lines'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'anchor_and_empty_lines'}{'contents'}[0];
$result_trees{'anchor_and_empty_lines'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'anchor_and_empty_lines'}{'contents'}[0];
$result_trees{'anchor_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'anchor_and_empty_lines'}{'contents'}[0]{'contents'}[5];
$result_trees{'anchor_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'anchor_and_empty_lines'}{'contents'}[0];
$result_trees{'anchor_and_empty_lines'}{'contents'}[0]{'parent'} = $result_trees{'anchor_and_empty_lines'};

$result_texis{'anchor_and_empty_lines'} = 'text 1.

@anchor{in anchor}

text 2.
';


$result_texts{'anchor_and_empty_lines'} = 'text 1.


text 2.
';

$result_errors{'anchor_and_empty_lines'} = [];


$result_floats{'anchor_and_empty_lines'} = {};



$result_converted{'plaintext'}->{'anchor_and_empty_lines'} = 'text 1.

   text 2.
';

1;
