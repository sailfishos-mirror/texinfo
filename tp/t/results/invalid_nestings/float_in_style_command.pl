use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'float_in_style_command'} = {
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
                      'text' => '
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'contents' => [],
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
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'A'
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'B'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
',
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'float',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in float
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Caption'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'caption',
              'contents' => [],
              'extra' => {
                'float' => {}
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'float'
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
                'command_argument' => 'float',
                'spaces_before_argument' => ' ',
                'text_arg' => 'float'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'caption' => {},
            'end_command' => {},
            'node_content' => [
              {}
            ],
            'normalized' => 'B',
            'spaces_before_argument' => ' ',
            'type' => {
              'content' => [
                {}
              ],
              'normalized' => 'A'
            }
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 2,
            'macro' => ''
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_in_style_command'}{'contents'}[0];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'args'}[1];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'extra'}{'float'} = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'extra'}{'caption'} = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'extra'}{'type'}{'content'}[0] = $result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'float_in_style_command'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'float_in_style_command'}{'contents'}[0];
$result_trees{'float_in_style_command'}{'contents'}[0]{'parent'} = $result_trees{'float_in_style_command'};

$result_texis{'float_in_style_command'} = '@code{
}@float A, B
in float
@caption{Caption}
@end float
';


$result_texts{'float_in_style_command'} = '
A, B
in float

';

$result_errors{'float_in_style_command'} = [
  {
    'error_line' => 'warning: @float should not appear in @code
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@float should not appear in @code',
    'type' => 'warning'
  },
  {
    'error_line' => '@code missing closing brace
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@code missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'float_in_style_command'} = {
  'A' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'normalized' => 'B',
        'type' => {
          'content' => [
            {
              'text' => 'A'
            }
          ],
          'normalized' => 'A'
        }
      },
      'structure' => {
        'float_number' => 1
      }
    }
  ]
};
$result_floats{'float_in_style_command'}{'A'}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'float_in_style_command'}{'A'}[0];


1;
