use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'enumerate_argument'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'enumerate',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '1'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'argument'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'enumerate'
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
                'text_arg' => 'enumerate'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 2
              }
            }
          ],
          'extra' => {
            'enumerate_specification' => '1'
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 1
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'enumerate',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'A'
                    }
                  ],
                  'info' => {
                    'comment_at_end' => {
                      'cmdname' => 'c',
                      'contents' => [
                        {
                          'text' => ' comment
',
                          'type' => 'rawline_arg'
                        }
                      ]
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'argument'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'enumerate'
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
                'text_arg' => 'enumerate'
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
            'enumerate_specification' => 'A'
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 4
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'enumerate',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'z'
                    }
                  ],
                  'info' => {
                    'comment_at_end' => {
                      'cmdname' => 'c',
                      'contents' => [
                        {
                          'text' => ' comment
',
                          'type' => 'rawline_arg'
                        }
                      ]
                    },
                    'spaces_after_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'argument'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'enumerate'
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
                'text_arg' => 'enumerate'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 8
              }
            }
          ],
          'extra' => {
            'enumerate_specification' => 'z'
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
          'cmdname' => 'enumerate',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '0'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'argument'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'enumerate'
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
                'text_arg' => 'enumerate'
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
            'enumerate_specification' => '0'
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 10
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'enumerate_argument'} = '@enumerate 1
@end enumerate

@enumerate A@c comment
@end enumerate

@enumerate z @c comment
@end enumerate

@enumerate 0
@end enumerate
';


$result_texts{'enumerate_argument'} = '


';

$result_errors{'enumerate_argument'} = [];


$result_floats{'enumerate_argument'} = {};



$result_converted{'plaintext'}->{'enumerate_argument'} = '';


$result_converted{'html_text'}->{'enumerate_argument'} = '


';


$result_converted{'xml'}->{'enumerate_argument'} = '<enumerate first="1" spaces=" " endspaces=" "><enumeratefirst>1</enumeratefirst>
</enumerate>

<enumerate first="A" spaces=" " endspaces=" "><enumeratefirst>A</enumeratefirst><!-- c comment -->
</enumerate>

<enumerate first="z" spaces=" " endspaces=" "><enumeratefirst>z </enumeratefirst><!-- c comment -->
</enumerate>

<enumerate spaces=" " endspaces=" "><enumeratefirst>0</enumeratefirst>
</enumerate>
';

1;
