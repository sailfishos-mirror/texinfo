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
              'args' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'bullet',
                      'contents' => [],
                      'parent' => {},
                      'type' => 'command_as_argument_inserted'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'cmdname' => 'itemize',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'parent' => {},
                          'text' => 'a 
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'before_item'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'itemize'
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
                    'text_arg' => 'itemize'
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
                'command_as_argument' => {}
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              }
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
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
                      'cmdname' => 'bullet',
                      'contents' => [],
                      'parent' => {},
                      'type' => 'command_as_argument_inserted'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'cmdname' => 'itemize',
              'contents' => [
                {
                  'cmdname' => 'item',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'parent' => {},
                          'text' => 'bbb
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'parent' => {},
                          'text' => 'ccc
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'extra' => {
                    'item_number' => 1
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 7,
                    'macro' => ''
                  }
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'itemize'
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
                    'text_arg' => 'itemize'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 9,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'command_as_argument' => {}
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              }
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
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
                      'cmdname' => 'bullet',
                      'contents' => [],
                      'parent' => {},
                      'type' => 'command_as_argument_inserted'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'cmdname' => 'itemize',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'parent' => {},
                          'text' => 'ddd
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'before_item'
                },
                {
                  'cmdname' => 'item',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'parent' => {},
                          'text' => 'eee
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'extra' => {
                    'item_number' => 1
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 13,
                    'macro' => ''
                  }
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'itemize'
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
                    'text_arg' => 'itemize'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 14,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'command_as_argument' => {}
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              }
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
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
                      'cmdname' => 'bullet',
                      'contents' => [],
                      'parent' => {},
                      'type' => 'command_as_argument_inserted'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'cmdname' => 'itemize',
              'contents' => [
                {
                  'cmdname' => 'item',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'parent' => {},
                          'text' => 'fff
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'parent' => {},
                          'text' => 'ggg
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'extra' => {
                    'item_number' => 1
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 17,
                    'macro' => ''
                  }
                },
                {
                  'cmdname' => 'item',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'parent' => {},
                          'text' => 'hhh
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'extra' => {
                    'item_number' => 2
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 19,
                    'macro' => ''
                  }
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'itemize'
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
                    'text_arg' => 'itemize'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 20,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'command_as_argument' => {}
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 16,
                'macro' => ''
              }
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
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
                'line_nr' => 22,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
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
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'command_as_argument'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'command_as_argument'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'extra'}{'command_as_argument'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[2];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'extra'}{'command_as_argument'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'}{'contents'}[0];
$result_trees{'itemize_in_headitem_in_example'}{'contents'}[0]{'parent'} = $result_trees{'itemize_in_headitem_in_example'};

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
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => '@headitem not meaningful inside `@itemize\' block',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @itemize has text but no @item
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@itemize has text but no @item',
    'type' => 'warning'
  },
  {
    'error_line' => '@headitem not meaningful inside `@itemize\' block
',
    'file_name' => '',
    'line_nr' => 8,
    'macro' => '',
    'text' => '@headitem not meaningful inside `@itemize\' block',
    'type' => 'error'
  },
  {
    'error_line' => '@headitem not meaningful inside `@itemize\' block
',
    'file_name' => '',
    'line_nr' => 12,
    'macro' => '',
    'text' => '@headitem not meaningful inside `@itemize\' block',
    'type' => 'error'
  },
  {
    'error_line' => '@headitem not meaningful inside `@itemize\' block
',
    'file_name' => '',
    'line_nr' => 18,
    'macro' => '',
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
