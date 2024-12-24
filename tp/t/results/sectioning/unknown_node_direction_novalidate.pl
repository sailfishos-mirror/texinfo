use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'unknown_node_direction_novalidate'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'novalidate',
          'contents' => [
            {
              'text' => '
',
              'type' => 'rawline_arg'
            }
          ],
          'source_info' => {
            'line_nr' => 1
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
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
                  'text' => 'one arg2'
                }
              ],
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => 'two arg'
                }
              ],
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => 'two-arg'
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
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'one-arg2'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 3
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'unknown_node_direction_novalidate'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'unknown_node_direction_novalidate'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];

$result_texis{'unknown_node_direction_novalidate'} = '@novalidate

@node one arg2, two arg
';


$result_texts{'unknown_node_direction_novalidate'} = '
';

$result_nodes{'unknown_node_direction_novalidate'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'one-arg2'
    }
  }
];

$result_menus{'unknown_node_direction_novalidate'} = [
  {
    'extra' => {
      'normalized' => 'one-arg2'
    }
  }
];

$result_errors{'unknown_node_direction_novalidate'} = [];


$result_floats{'unknown_node_direction_novalidate'} = {};


1;
