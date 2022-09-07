use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'nested_indentedblock'} = {
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
                }
              ],
              'parent' => {},
              'type' => 'preformatted'
            },
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
              'cmdname' => 'indentedblock',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '   f  f  f``g
'
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
                          'text' => 'indentedblock'
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
                    'text_arg' => 'indentedblock'
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
                'end_command' => {}
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
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
                'line_nr' => 6,
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
          'cmdname' => 'indentedblock',
          'contents' => [
            {
              'parent' => {},
              'text' => '   ',
              'type' => 'empty_spaces_before_paragraph'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'v  v  v``a
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
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
                    'line_nr' => 12,
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
                'line_nr' => 10,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'indentedblock'
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
                'text_arg' => 'indentedblock'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 13,
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
            'line_nr' => 8,
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
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[1];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[1];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[3];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'contents'}[3];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'nested_indentedblock'}{'contents'}[0];
$result_trees{'nested_indentedblock'}{'contents'}[0]{'parent'} = $result_trees{'nested_indentedblock'};

$result_texis{'nested_indentedblock'} = '@example
in example
@indentedblock
   f  f  f``g
@end indentedblock
@end example

@indentedblock
   v  v  v``a
@example
in example
@end example
@end indentedblock
';


$result_texts{'nested_indentedblock'} = 'in example
   f  f  f``g

v  v  v"a
in example
';

$result_errors{'nested_indentedblock'} = [];


$result_floats{'nested_indentedblock'} = {};



$result_converted{'plaintext'}->{'nested_indentedblock'} = '     in example
             f  f  f``g

     v v v“a
          in example
';

1;
