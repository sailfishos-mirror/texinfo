use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'arg_body_expansion_order'} = {
  'contents' => [
    {
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'othermacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'initial
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
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
            'arg_line' => ' othermacro
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 2,
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
          'args' => [
            {
              'parent' => {},
              'text' => 'redefineothermacro',
              'type' => 'macro_name'
            },
            {
              'parent' => {},
              'text' => 'arg',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '@unmacro othermacro
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'macro',
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'different
',
                  'type' => 'raw'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'macro'
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
                    'text_arg' => 'macro'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 10,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'arg_line' => ' othermacro
'
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '\\arg\\
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' redefineothermacro {arg}
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 6,
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
          'args' => [
            {
              'parent' => {},
              'text' => 'othermacro',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'unmacro',
          'extra' => {
            'arg_line' => ' othermacro
',
            'misc_args' => [
              'othermacro'
            ]
          },
          'parent' => {}
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'othermacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'different
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 14,
                'macro' => 'redefineothermacro'
              }
            }
          ],
          'extra' => {
            'arg_line' => ' othermacro
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 14,
            'macro' => 'redefineothermacro'
          }
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'different
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
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[1];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[1];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[1];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3]{'args'}[1]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3]{'contents'}[3]{'args'}[0];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3]{'contents'}[3];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[5];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[6];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[6];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[6];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[7];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'arg_body_expansion_order'}{'contents'}[0];
$result_trees{'arg_body_expansion_order'}{'contents'}[0]{'parent'} = $result_trees{'arg_body_expansion_order'};

$result_texis{'arg_body_expansion_order'} = '
@macro othermacro
initial
@end macro

@macro redefineothermacro {arg}
@unmacro othermacro
@macro othermacro
different
@end macro
\\arg\\
@end macro

@unmacro othermacro
@macro othermacro
different
@end macro
different
';


$result_texts{'arg_body_expansion_order'} = '


different
';

$result_errors{'arg_body_expansion_order'} = [];


$result_floats{'arg_body_expansion_order'} = {};


1;
