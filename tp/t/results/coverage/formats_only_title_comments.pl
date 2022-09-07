use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'formats_only_title_comments'} = {
  'contents' => [
    {
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
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' comment itemize
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' comment itemize
'
                    ]
                  },
                  'parent' => {}
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'before first itemize
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
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
            'command_as_argument' => {},
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
                'comment_at_end' => {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' comment on enumerate line
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' comment on enumerate line
'
                    ]
                  },
                  'parent' => {}
                }
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'enumerate',
          'contents' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' comment enumerate
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' comment enumerate
'
                    ]
                  },
                  'parent' => {}
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'before first enumerate
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
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
                      'text' => 'enumerate'
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
                'text_arg' => 'enumerate'
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
            'end_command' => {},
            'enumerate_specification' => '1',
            'spaces_before_argument' => ' '
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
              'contents' => [
                {
                  'cmdname' => 'emph',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 11,
                    'macro' => ''
                  },
                  'type' => 'command_as_argument'
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
          'cmdname' => 'table',
          'contents' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' comment table
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' comment table
'
                    ]
                  },
                  'parent' => {}
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'before first table
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
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
                      'text' => 'table'
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
                'text_arg' => 'table'
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
            'command_as_argument' => {},
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
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
              'contents' => [
                {
                  'cmdname' => 'asis',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 16,
                    'macro' => ''
                  },
                  'type' => 'command_as_argument'
                }
              ],
              'extra' => {
                'comment_at_end' => {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' comment on vtable line
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' comment on vtable line
'
                    ]
                  },
                  'parent' => {}
                },
                'spaces_after_argument' => ' '
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'vtable',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'before first vtable
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
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
                      'text' => 'vtable'
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
                'text_arg' => 'vtable'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 18,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 16,
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
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '0.5 0.5'
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
                  'cmdname' => 'columnfractions',
                  'extra' => {
                    'misc_args' => [
                      '0.5',
                      '0.5'
                    ],
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 20,
                    'macro' => ''
                  }
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'multitable',
          'contents' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' comment multitable
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' comment multitable
'
                    ]
                  },
                  'parent' => {}
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'before first multitable
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
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
                      'text' => 'multitable'
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
                'text_arg' => 'multitable'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 23,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'columnfractions' => {},
            'end_command' => {},
            'max_columns' => 2,
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 20,
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
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'extra'}{'command_as_argument'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'extra'}{'comment_at_end'}{'args'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'extra'}{'comment_at_end'};
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'extra'}{'comment_at_end'}{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'extra'}{'command_as_argument'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'extra'}{'comment_at_end'}{'args'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'extra'}{'comment_at_end'};
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'extra'}{'comment_at_end'}{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'extra'}{'command_as_argument'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'extra'}{'end_command'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[1];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'contents'}[1];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'extra'}{'columnfractions'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'extra'}{'end_command'} = $result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'contents'}[1];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'formats_only_title_comments'}{'contents'}[0];
$result_trees{'formats_only_title_comments'}{'contents'}[0]{'parent'} = $result_trees{'formats_only_title_comments'};

$result_texis{'formats_only_title_comments'} = '@itemize
@c comment itemize
before first itemize
@end itemize

@enumerate @c comment on enumerate line
@c comment enumerate
before first enumerate
@end enumerate

@table @emph
@c comment table
before first table
@end table

@vtable @asis @c comment on vtable line
before first vtable
@end vtable

@multitable @columnfractions 0.5 0.5
@c comment multitable
before first multitable
@end multitable
';


$result_texts{'formats_only_title_comments'} = 'before first itemize

before first enumerate

before first table

before first vtable

before first multitable
';

$result_errors{'formats_only_title_comments'} = [
  {
    'error_line' => 'warning: @itemize has text but no @item
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@itemize has text but no @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @enumerate has text but no @item
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => '@enumerate has text but no @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @table has text but no @item
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => '',
    'text' => '@table has text but no @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @vtable has text but no @item
',
    'file_name' => '',
    'line_nr' => 16,
    'macro' => '',
    'text' => '@vtable has text but no @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @multitable has text but no @item
',
    'file_name' => '',
    'line_nr' => 20,
    'macro' => '',
    'text' => '@multitable has text but no @item',
    'type' => 'warning'
  }
];


$result_floats{'formats_only_title_comments'} = {};


1;
