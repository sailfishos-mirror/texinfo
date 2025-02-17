use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'a_comma_after_node'} = {
  'contents' => [
    {
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Commands'
                }
              ],
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => 'Requirements'
                }
              ],
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => 'Requirements'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => 'Nodes and Menus'
                }
              ],
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => 'Nodes-and-Menus'
              },
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                },
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'A comma in text, end.
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Commands'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 1
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'a_comma_after_node'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'a_comma_after_node'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'a_comma_after_node'}{'contents'}[1]{'contents'}[0]{'contents'}[2]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'a_comma_after_node'}{'contents'}[1]{'contents'}[0]{'contents'}[2]{'contents'}[0];

$result_texis{'a_comma_after_node'} = '@node Commands, Requirements, Nodes and Menus

A comma in text, end.
';


$result_texts{'a_comma_after_node'} = '
A comma in text, end.
';

$result_nodes{'a_comma_after_node'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'Commands'
    }
  }
];

$result_menus{'a_comma_after_node'} = [
  {
    'extra' => {
      'normalized' => 'Commands'
    }
  }
];

$result_errors{'a_comma_after_node'} = [
  {
    'error_line' => 'Next reference to nonexistent `Requirements\'
',
    'line_nr' => 1,
    'text' => 'Next reference to nonexistent `Requirements\'',
    'type' => 'error'
  },
  {
    'error_line' => 'Prev reference to nonexistent `Nodes and Menus\'
',
    'line_nr' => 1,
    'text' => 'Prev reference to nonexistent `Nodes and Menus\'',
    'type' => 'error'
  }
];


$result_floats{'a_comma_after_node'} = {};


1;
