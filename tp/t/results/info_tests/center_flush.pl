use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'center_flush'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'centered'
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
          'cmdname' => 'center',
          'extra' => {
            'spaces_before_argument' => ' '
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
          'cmdname' => 'flushleft',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'left and
'
                },
                {
                  'parent' => {},
                  'text' => 'left2
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'left3.
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
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'left Last
'
                },
                {
                  'parent' => {},
                  'text' => '  with space.
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Now anchor
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'anchor in flushleft'
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
                    'normalized' => 'anchor-in-flushleft'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 14,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_spaces_after_close_brace'
                },
                {
                  'parent' => {},
                  'text' => 'after anchor
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
                      'parent' => {},
                      'text' => 'flushleft'
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
                'text_arg' => 'flushleft'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 16,
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
          'cmdname' => 'flushright',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'right and
'
                },
                {
                  'parent' => {},
                  'text' => 'right2
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Right3
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
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Right last
'
                },
                {
                  'parent' => {},
                  'text' => '  with space.     
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Now anchor
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'anchor in flushright'
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
                    'normalized' => 'anchor-in-flushright'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 29,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_spaces_after_close_brace'
                },
                {
                  'parent' => {},
                  'text' => 'after anchor
'
                },
                {
                  'parent' => {},
                  'text' => 'Second anchor in text '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'second anchor in flushright'
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
                    'normalized' => 'second-anchor-in-flushright'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 31,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_after_close_brace'
                },
                {
                  'parent' => {},
                  'text' => 'after anchor.
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
                      'parent' => {},
                      'text' => 'flushright'
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
                'text_arg' => 'flushright'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 32,
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
            'line_nr' => 18,
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
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[0];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'center_flush'}{'contents'}[0];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[5];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[5];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[7];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'args'}[0];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[7]{'contents'}[1];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[7];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[7];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[7];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[7]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[8]{'args'}[0];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[8];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[8]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'contents'}[8];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'center_flush'}{'contents'}[0];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'center_flush'}{'contents'}[0];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[2];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[5];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[5];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'contents'}[1]{'args'}[0];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'contents'}[1];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'contents'}[3]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'contents'}[4]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'contents'}[5]{'args'}[0];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'contents'}[5];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'contents'}[5]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'contents'}[6]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'contents'}[7]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[8]{'args'}[0];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[8];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[8]{'parent'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'contents'}[8];
$result_trees{'center_flush'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'center_flush'}{'contents'}[0];
$result_trees{'center_flush'}{'contents'}[0]{'parent'} = $result_trees{'center_flush'};

$result_texis{'center_flush'} = '@center centered

@flushleft
left and
left2

left3.


left Last
  with space.

Now anchor
@anchor{anchor in flushleft}
after anchor
@end flushleft

@flushright
right and
right2

Right3


Right last
  with space.     

Now anchor
@anchor{anchor in flushright}
after anchor
Second anchor in text @anchor{second anchor in flushright} after anchor.
@end flushright
';


$result_texts{'center_flush'} = 'centered

left and
left2

left3.


left Last
  with space.

Now anchor
after anchor

right and
right2

Right3


Right last
  with space.     

Now anchor
after anchor
Second anchor in text after anchor.
';

$result_errors{'center_flush'} = [];


$result_floats{'center_flush'} = {};



$result_converted{'info'}->{'center_flush'} = 'This is , produced from .

                               centered

left and
left2

left3.

left Last
with space.

Now anchor
after anchor

                                                              right and
                                                                 right2

                                                                 Right3

                                                             Right last
                                                            with space.

                                                             Now anchor
                                                           after anchor
                                    Second anchor in text after anchor.


Tag Table:
Ref: anchor in flushleft99
Ref: anchor in flushright607
Ref: second anchor in flushright677

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'center_flush'} = [
  {
    'error_line' => 'warning: document without nodes
',
    'text' => 'document without nodes',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @anchor outside of any node
',
    'file_name' => '',
    'line_nr' => 14,
    'macro' => '',
    'text' => '@anchor outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @anchor outside of any node
',
    'file_name' => '',
    'line_nr' => 29,
    'macro' => '',
    'text' => '@anchor outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @anchor outside of any node
',
    'file_name' => '',
    'line_nr' => 31,
    'macro' => '',
    'text' => '@anchor outside of any node',
    'type' => 'warning'
  }
];


1;
