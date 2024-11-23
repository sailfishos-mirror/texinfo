use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'itemize_in_headitem_in_example'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'example',
          'contents' => [
            {
              'contents' => [
                {
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
              'cmdname' => 'itemize',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'bullet',
                          'info' => {
                            'inserted' => 1
                          }
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
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'text' => 'a 
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'before_item'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'itemize'
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
                    'text_arg' => 'itemize'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 4
                  }
                }
              ],
              'extra' => {
                'command_as_argument' => {}
              },
              'source_info' => {
                'line_nr' => 2
              }
            },
            {
              'contents' => [
                {
                  'text' => '
',
                  'type' => 'empty_line'
                }
              ],
              'type' => 'preformatted'
            },
            {
              'cmdname' => 'itemize',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'bullet',
                          'info' => {
                            'inserted' => 1
                          }
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
                  'cmdname' => 'item',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'text' => 'bbb
'
                        }
                      ],
                      'type' => 'preformatted'
                    },
                    {
                      'contents' => [
                        {
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'text' => 'ccc
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'extra' => {
                    'item_number' => 1
                  },
                  'source_info' => {
                    'line_nr' => 7
                  }
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'itemize'
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
                    'text_arg' => 'itemize'
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
                'command_as_argument' => {}
              },
              'source_info' => {
                'line_nr' => 6
              }
            },
            {
              'contents' => [
                {
                  'text' => '
',
                  'type' => 'empty_line'
                }
              ],
              'type' => 'preformatted'
            },
            {
              'cmdname' => 'itemize',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'bullet',
                          'info' => {
                            'inserted' => 1
                          }
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
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'text' => 'ddd
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'before_item'
                },
                {
                  'cmdname' => 'item',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'text' => 'eee
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'extra' => {
                    'item_number' => 1
                  },
                  'source_info' => {
                    'line_nr' => 13
                  }
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'itemize'
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
                    'text_arg' => 'itemize'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 14
                  }
                }
              ],
              'extra' => {
                'command_as_argument' => {}
              },
              'source_info' => {
                'line_nr' => 11
              }
            },
            {
              'contents' => [
                {
                  'text' => '
',
                  'type' => 'empty_line'
                }
              ],
              'type' => 'preformatted'
            },
            {
              'cmdname' => 'itemize',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'bullet',
                          'info' => {
                            'inserted' => 1
                          }
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
                  'cmdname' => 'item',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'text' => 'fff
'
                        }
                      ],
                      'type' => 'preformatted'
                    },
                    {
                      'contents' => [
                        {
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'text' => 'ggg
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'extra' => {
                    'item_number' => 1
                  },
                  'source_info' => {
                    'line_nr' => 17
                  }
                },
                {
                  'cmdname' => 'item',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'text' => 'hhh
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'extra' => {
                    'item_number' => 2
                  },
                  'source_info' => {
                    'line_nr' => 19
                  }
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'itemize'
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
                    'text_arg' => 'itemize'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 20
                  }
                }
              ],
              'extra' => {
                'command_as_argument' => {}
              },
              'source_info' => {
                'line_nr' => 16
              }
            },
            {
              'contents' => [
                {
                  'text' => '
',
                  'type' => 'empty_line'
                }
              ],
              'type' => 'preformatted'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'example'
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
                'text_arg' => 'example'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 22
              }
            }
          ],
          'source_info' => {
            'line_nr' => 1
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'command_as_argument'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'extra'}{'command_as_argument'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'extra'}{'command_as_argument'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'extra'}{'command_as_argument'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[0];

$result_texis{'itemize_in_headitem_in_example'} = '@example
@itemize
 a 
@end itemize

@itemize
@item bbb
 ccc
@end itemize

@itemize
 ddd
@item eee
@end itemize

@itemize
@item fff
 ggg
@item hhh
@end itemize

@end example
';


$result_texts{'itemize_in_headitem_in_example'} = 'a 

bbb
ccc

ddd
eee

fff
ggg
hhh

';

$result_errors{'itemize_in_headitem_in_example'} = [
  {
    'error_line' => '@headitem not meaningful inside `@itemize\' block
',
    'line_nr' => 3,
    'text' => '@headitem not meaningful inside `@itemize\' block',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @itemize has text but no @item
',
    'line_nr' => 2,
    'text' => '@itemize has text but no @item',
    'type' => 'warning'
  },
  {
    'error_line' => '@headitem not meaningful inside `@itemize\' block
',
    'line_nr' => 8,
    'text' => '@headitem not meaningful inside `@itemize\' block',
    'type' => 'error'
  },
  {
    'error_line' => '@headitem not meaningful inside `@itemize\' block
',
    'line_nr' => 12,
    'text' => '@headitem not meaningful inside `@itemize\' block',
    'type' => 'error'
  },
  {
    'error_line' => '@headitem not meaningful inside `@itemize\' block
',
    'line_nr' => 18,
    'text' => '@headitem not meaningful inside `@itemize\' block',
    'type' => 'error'
  }
];


$result_floats{'itemize_in_headitem_in_example'} = {};



$result_converted{'plaintext'}->{'itemize_in_headitem_in_example'} = '          a

        • bbb
          ccc

          ddd
        • eee

        • fff
          ggg
        • hhh

';

1;
