use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'float_long_captions'} = {
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
                  'text' => 'Top'
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
          'type' => 'argument'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'float',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'Text'
                    }
                  ],
                  'type' => 'block_line_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'text1'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    },
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'argument'
            },
            {
              'cmdname' => 'caption',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'AAAAAAAAAAAAAAAA BBBBB CCCCCCCCCCC'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'extra' => {
                'float' => {}
              },
              'source_info' => {
                'line_nr' => 4
              }
            },
            {
              'text' => '
',
              'type' => 'spaces_after_close_brace'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'float'
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
              'extra' => {
                'text_arg' => 'float'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 5
              }
            }
          ],
          'extra' => {
            'caption' => {},
            'float_type' => 'Text',
            'is_target' => 1,
            'normalized' => 'text1'
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 3
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'float',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'Text'
                    }
                  ],
                  'type' => 'block_line_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'text2'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    },
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'argument'
            },
            {
              'cmdname' => 'caption',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'AAAAAAAAAAAAAAAA BBBBBB CCCCCCCCCCC'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'extra' => {
                'float' => {}
              },
              'source_info' => {
                'line_nr' => 8
              }
            },
            {
              'text' => '
',
              'type' => 'spaces_after_close_brace'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'float'
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
              'extra' => {
                'text_arg' => 'float'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 9
              }
            }
          ],
          'extra' => {
            'caption' => {},
            'float_type' => 'Text',
            'is_target' => 1,
            'normalized' => 'text2'
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 7
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'listoffloats',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Text'
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
          'extra' => {
            'float_type' => 'Text'
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 11
          }
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Top'
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
$result_trees{'float_long_captions'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'extra'}{'float'} = $result_trees{'float_long_captions'}{'contents'}[1]{'contents'}[2];
$result_trees{'float_long_captions'}{'contents'}[1]{'contents'}[2]{'extra'}{'caption'} = $result_trees{'float_long_captions'}{'contents'}[1]{'contents'}[2]{'contents'}[1];
$result_trees{'float_long_captions'}{'contents'}[1]{'contents'}[4]{'contents'}[1]{'extra'}{'float'} = $result_trees{'float_long_captions'}{'contents'}[1]{'contents'}[4];
$result_trees{'float_long_captions'}{'contents'}[1]{'contents'}[4]{'extra'}{'caption'} = $result_trees{'float_long_captions'}{'contents'}[1]{'contents'}[4]{'contents'}[1];

$result_texis{'float_long_captions'} = '@node Top

@float Text, text1
@caption{AAAAAAAAAAAAAAAA BBBBB CCCCCCCCCCC}
@end float

@float Text, text2
@caption{AAAAAAAAAAAAAAAA BBBBBB CCCCCCCCCCC}
@end float

@listoffloats Text
';


$result_texts{'float_long_captions'} = '
Text, text1

Text, text2

';

$result_nodes{'float_long_captions'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_menus{'float_long_captions'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'float_long_captions'} = [];


$result_floats{'float_long_captions'} = {
  'Text' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'float_number' => '1',
        'float_type' => 'Text',
        'normalized' => 'text1'
      }
    },
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'float_number' => '2',
        'float_type' => 'Text',
        'normalized' => 'text2'
      }
    }
  ]
};
$result_floats{'float_long_captions'}{'Text'}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'float_long_captions'}{'Text'}[0];
$result_floats{'float_long_captions'}{'Text'}[1]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'float_long_captions'}{'Text'}[1];



$result_converted{'info'}->{'float_long_captions'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

Text 1: AAAAAAAAAAAAAAAA BBBBB CCCCCCCCCCC

Text 2: AAAAAAAAAAAAAAAA BBBBBB CCCCCCCCCCC

* Menu:

* Text 1: text1.                         AAAAAAAAAAAAAAAA BBBBB
                                         CCCCCCCCCCC
* Text 2: text2.                         AAAAAAAAAAAAAAAA BBBBBB
                                         CCCCCCCCCCC


Tag Table:
Node: Top27
Ref: text161
Ref: text2105

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
