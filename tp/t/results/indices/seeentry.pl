use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'seeentry'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'seeentry.info'
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
          'cmdname' => 'setfilename',
          'extra' => {
            'spaces_before_argument' => ' ',
            'text_arg' => 'seeentry.info'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'parent' => {},
      'type' => 'text_root'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top'
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
      'cmdname' => 'node',
      'contents' => [],
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 3,
        'macro' => ''
      },
      'parent' => {}
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
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'top',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'level' => 0,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 4,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'chapter index'
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
      'cmdname' => 'node',
      'contents' => [],
      'extra' => {
        'isindex' => 1,
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'chapter-index'
          }
        ],
        'normalized' => 'chapter-index',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 6,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Index'
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
      'cmdname' => 'chapter',
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'aaa'
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_before_argument'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'bbb'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'seeentry',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 9,
                    'macro' => ''
                  },
                  'parent' => {}
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
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'index_at_command' => 'cindex',
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 1
            },
            'seeentry' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
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
                          'text' => 'ccc'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'seealso',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 10,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_after_close_brace'
                },
                {
                  'parent' => {},
                  'text' => 'ddd'
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
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'index_at_command' => 'cindex',
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 1
            },
            'seealso' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
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
                  'parent' => {},
                  'text' => 'f---aaa'
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_before_argument'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'f---bbb'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'seeentry',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 12,
                    'macro' => ''
                  },
                  'parent' => {}
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
          'cmdname' => 'findex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'index_at_command' => 'findex',
              'index_name' => 'fn',
              'index_type_command' => 'findex',
              'node' => {},
              'number' => 1
            },
            'seeentry' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 12,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
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
                          'text' => 'f---ccc'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'seealso',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 13,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_after_close_brace'
                },
                {
                  'parent' => {},
                  'text' => 'f---ddd'
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
          'cmdname' => 'findex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'index_at_command' => 'findex',
              'index_name' => 'fn',
              'index_type_command' => 'findex',
              'node' => {},
              'number' => 1
            },
            'seealso' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 13,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
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
                  'parent' => {},
                  'text' => 'cp'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 15,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'fn'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'fn'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 16,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 1,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 7,
        'macro' => ''
      },
      'number' => 1,
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'seeentry'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[0]{'contents'}[0];
$result_trees{'seeentry'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[0];
$result_trees{'seeentry'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'seeentry'}{'contents'}[0];
$result_trees{'seeentry'}{'contents'}[0]{'parent'} = $result_trees{'seeentry'};
$result_trees{'seeentry'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[1]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[1];
$result_trees{'seeentry'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'seeentry'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'seeentry'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'seeentry'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'seeentry'}{'contents'}[1]{'parent'} = $result_trees{'seeentry'};
$result_trees{'seeentry'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[2];
$result_trees{'seeentry'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[2];
$result_trees{'seeentry'}{'contents'}[2]{'parent'} = $result_trees{'seeentry'};
$result_trees{'seeentry'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[3]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[3];
$result_trees{'seeentry'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'seeentry'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'seeentry'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'seeentry'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'seeentry'}{'contents'}[3]{'parent'} = $result_trees{'seeentry'};
$result_trees{'seeentry'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[1];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[1];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'seeentry'}{'contents'}[3];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'extra'}{'seeentry'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'seeentry'}{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[2];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[2];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'content'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'node'} = $result_trees{'seeentry'}{'contents'}[3];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'extra'}{'seealso'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'seeentry'}{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'seeentry'}{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'command'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'content'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'node'} = $result_trees{'seeentry'}{'contents'}[3];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'extra'}{'seeentry'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'seeentry'}{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[5];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'extra'}{'index_entry'}{'command'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[5];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'extra'}{'index_entry'}{'content'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'extra'}{'index_entry'}{'node'} = $result_trees{'seeentry'}{'contents'}[3];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'extra'}{'seealso'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'seeentry'}{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'seeentry'}{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[7]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[7];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'seeentry'}{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[8]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[8];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[8]{'parent'} = $result_trees{'seeentry'}{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'parent'} = $result_trees{'seeentry'};

$result_texis{'seeentry'} = '@setfilename seeentry.info

@node Top
@top

@node chapter index
@chapter Index

@cindex aaa @seeentry{bbb}
@cindex @seealso{ccc} ddd

@findex f---aaa @seeentry{f---bbb}
@findex @seealso{f---ccc} f---ddd

@printindex cp
@printindex fn
';


$result_texts{'seeentry'} = '

1 Index
*******



';

$result_sectioning{'seeentry'} = {
  'level' => -1,
  'section_childs' => [
    {
      'cmdname' => 'top',
      'extra' => {
        'associated_node' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'Top',
            'spaces_before_argument' => ' '
          }
        }
      },
      'level' => 0,
      'section_childs' => [
        {
          'cmdname' => 'chapter',
          'extra' => {
            'associated_node' => {
              'cmdname' => 'node',
              'extra' => {
                'isindex' => 1,
                'normalized' => 'chapter-index',
                'spaces_before_argument' => ' '
              }
            },
            'spaces_before_argument' => ' '
          },
          'level' => 1,
          'number' => 1,
          'section_up' => {},
          'toplevel_prev' => {},
          'toplevel_up' => {}
        }
      ],
      'section_up' => {}
    }
  ]
};
$result_sectioning{'seeentry'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'seeentry'}{'section_childs'}[0];
$result_sectioning{'seeentry'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'seeentry'}{'section_childs'}[0];
$result_sectioning{'seeentry'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'seeentry'}{'section_childs'}[0];
$result_sectioning{'seeentry'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'seeentry'};

$result_nodes{'seeentry'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'level' => 0
    },
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'node_next' => {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'chapter',
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'level' => 1,
        'number' => 1
      },
      'isindex' => 1,
      'normalized' => 'chapter-index',
      'spaces_before_argument' => ' '
    },
    'node_prev' => {},
    'node_up' => {}
  }
};
$result_nodes{'seeentry'}{'node_next'}{'node_prev'} = $result_nodes{'seeentry'};
$result_nodes{'seeentry'}{'node_next'}{'node_up'} = $result_nodes{'seeentry'};

$result_menus{'seeentry'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'seeentry'} = [];


$result_floats{'seeentry'} = {};



$result_converted{'docbook'}->{'seeentry'} = '
<chapter label="" id="Top">
<title></title>

</chapter>
<chapter label="1" id="chapter-index">
<title>Index</title>

<indexterm role="cp"><primary>aaa</primary><see>bbb</see></indexterm>
<indexterm role="cp"><primary>ddd</primary><seealso>ccc</seealso></indexterm>

<indexterm role="fn"><primary>f&#8212;aaa</primary><see>f&#8212;bbb</see></indexterm>
<indexterm role="fn"><primary>f&#8212;ddd</primary><seealso>f&#8212;ccc</seealso></indexterm>

<index role="cp"></index>
<index role="fn"></index>
</chapter>
';


$result_converted{'info'}->{'seeentry'} = 'This is seeentry.info, produced from .


File: seeentry.info,  Node: Top,  Next: chapter index,  Up: (dir)

* Menu:

* chapter index::


File: seeentry.info,  Node: chapter index,  Prev: Top,  Up: Top

1 Index
*******



Tag Table:
Node: Top40
Node: chapter index137

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'seeentry'} = '1 Index
*******

';


$result_converted{'html_text'}->{'seeentry'} = '
<div class="top" id="Top">
<div class="header">
<p>
 &nbsp; [<a href="#chapter-index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="SEC_Top"></span>
<ul class="section-toc">
<li><a href="#chapter-index" accesskey="1">Index</a></li>
</ul>
<hr>
<div class="chapter" id="chapter-index">
<div class="header">
<p>
 &nbsp; [<a href="#chapter-index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Index"></span><h2 class="chapter">1 Index</h2>



</div>
</div>
';

1;
