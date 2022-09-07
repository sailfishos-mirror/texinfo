use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_line_in_example_end'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'example',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in example
'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
                }
              ],
              'parent' => {},
              'type' => 'preformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'example'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'example'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          }
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
              'text' => 'After line
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
$result_trees{'empty_line_in_example_end'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_line_in_example_end'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_line_in_example_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_line_in_example_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_line_in_example_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_line_in_example_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_line_in_example_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_line_in_example_end'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_line_in_example_end'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_line_in_example_end'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'empty_line_in_example_end'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_line_in_example_end'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'empty_line_in_example_end'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_line_in_example_end'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_line_in_example_end'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'empty_line_in_example_end'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'empty_line_in_example_end'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_line_in_example_end'}{'contents'}[0];
$result_trees{'empty_line_in_example_end'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_line_in_example_end'}{'contents'}[0];
$result_trees{'empty_line_in_example_end'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'empty_line_in_example_end'}{'contents'}[0]{'contents'}[2];
$result_trees{'empty_line_in_example_end'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_line_in_example_end'}{'contents'}[0];
$result_trees{'empty_line_in_example_end'}{'contents'}[0]{'parent'} = $result_trees{'empty_line_in_example_end'};

$result_texis{'empty_line_in_example_end'} = '@example
in example

@end example

After line
';


$result_texts{'empty_line_in_example_end'} = 'in example


After line
';

$result_errors{'empty_line_in_example_end'} = [];


$result_floats{'empty_line_in_example_end'} = {};



$result_converted{'plaintext'}->{'empty_line_in_example_end'} = '     in example


   After line
';

1;
