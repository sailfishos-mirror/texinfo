use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'node_too_much_args'} = {
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
                  'text' => 'first'
                }
              ],
              'type' => 'line_arg'
            },
            {
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            },
            {
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
                  'text' => '('
                },
                {
                  'text' => 'dir'
                },
                {
                  'text' => ')'
                }
              ],
              'extra' => {
                'manual_content' => {
                  'contents' => [
                    {}
                  ]
                }
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => '  '
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
        'normalized' => 'first'
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
$result_trees{'node_too_much_args'}{'contents'}[1]{'contents'}[0]{'contents'}[3]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'node_too_much_args'}{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1];

$result_texis{'node_too_much_args'} = '@node first, , ,  (dir)';


$result_texts{'node_too_much_args'} = '';

$result_nodes{'node_too_much_args'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'up' => {
          'extra' => {
            'manual_content' => {}
          },
          'type' => 'line_arg'
        }
      },
      'normalized' => 'first'
    }
  }
];

$result_menus{'node_too_much_args'} = [
  {
    'extra' => {
      'normalized' => 'first'
    }
  }
];

$result_errors{'node_too_much_args'} = [
  {
    'error_line' => 'warning: superfluous arguments for node
',
    'line_nr' => 1,
    'text' => 'superfluous arguments for node',
    'type' => 'warning'
  }
];


$result_floats{'node_too_much_args'} = {};


1;
