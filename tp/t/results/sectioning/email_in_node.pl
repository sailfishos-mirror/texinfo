use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'email_in_node'} = {
  'contents' => [
    {
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => ' '
                    },
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'email',
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
            },
            {
              'text' => ' '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'c'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'd'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'email',
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
            },
            {
              'text' => ' '
            },
            {
              'args' => [
                {
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'email',
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'spaces_after_argument' => {
              'text' => '
'
            }
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
      'extra' => {
        'node_content' => [
          {},
          {},
          {},
          {},
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {},
              {},
              {},
              {},
              {}
            ],
            'normalized' => 'a-c-'
          }
        ],
        'normalized' => 'a-c-'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'email_in_node'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'email_in_node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'email_in_node'}{'contents'}[1]{'extra'}{'node_content'}[1] = $result_trees{'email_in_node'}{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'email_in_node'}{'contents'}[1]{'extra'}{'node_content'}[2] = $result_trees{'email_in_node'}{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'email_in_node'}{'contents'}[1]{'extra'}{'node_content'}[3] = $result_trees{'email_in_node'}{'contents'}[1]{'args'}[0]{'contents'}[3];
$result_trees{'email_in_node'}{'contents'}[1]{'extra'}{'node_content'}[4] = $result_trees{'email_in_node'}{'contents'}[1]{'args'}[0]{'contents'}[4];
$result_trees{'email_in_node'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'email_in_node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'email_in_node'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[1] = $result_trees{'email_in_node'}{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'email_in_node'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[2] = $result_trees{'email_in_node'}{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'email_in_node'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[3] = $result_trees{'email_in_node'}{'contents'}[1]{'args'}[0]{'contents'}[3];
$result_trees{'email_in_node'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[4] = $result_trees{'email_in_node'}{'contents'}[1]{'args'}[0]{'contents'}[4];

$result_texis{'email_in_node'} = '@node @email{ a } @email{c , d} @email{ , e}
';


$result_texts{'email_in_node'} = '';

$result_nodes{'email_in_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'a-c-'
  },
  'info' => {}
};

$result_menus{'email_in_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'a-c-'
  },
  'info' => {}
};

$result_errors{'email_in_node'} = [];


$result_floats{'email_in_node'} = {};


1;
