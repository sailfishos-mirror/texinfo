use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'double_seeentry_seealso'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'double_seeentry_seealso.info'
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
            'text_arg' => 'double_seeentry_seealso.info'
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
              'text' => 'top'
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'top'
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
      'cmdname' => 'top',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
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
              'text' => 'node index'
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
            'normalized' => 'node-index'
          }
        ],
        'normalized' => 'node-index',
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
              'text' => 'Chapter Index'
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
                          'text' => 'ccc'
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
                          'text' => 'eee'
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'ggg'
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
                          'text' => 'hhh'
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
                    'line_nr' => 11,
                    'macro' => ''
                  },
                  'parent' => {}
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
                          'text' => 'iii'
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
                    'line_nr' => 11,
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
            'seealso' => {},
            'seeentry' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 11,
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
                          'text' => 'fff'
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
                    'line_nr' => 12,
                    'macro' => ''
                  },
                  'parent' => {}
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
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
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'subggg'
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
                              'text' => 'subhhh'
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
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'seeentry' => {},
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              },
              'parent' => {}
            }
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 12,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
        },
        {},
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
            'line_nr' => 14,
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
$result_trees{'double_seeentry_seealso'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[0]{'contents'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'};
$result_trees{'double_seeentry_seealso'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[1]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[1];
$result_trees{'double_seeentry_seealso'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'double_seeentry_seealso'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'double_seeentry_seealso'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[1]{'parent'} = $result_trees{'double_seeentry_seealso'};
$result_trees{'double_seeentry_seealso'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[2]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[2];
$result_trees{'double_seeentry_seealso'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[2];
$result_trees{'double_seeentry_seealso'}{'contents'}[2]{'parent'} = $result_trees{'double_seeentry_seealso'};
$result_trees{'double_seeentry_seealso'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[3]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[3];
$result_trees{'double_seeentry_seealso'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'double_seeentry_seealso'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'double_seeentry_seealso'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[3]{'parent'} = $result_trees{'double_seeentry_seealso'};
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[4];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'double_seeentry_seealso'}{'contents'}[3];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'extra'}{'seeentry'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[4];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[4];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'content'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'node'} = $result_trees{'double_seeentry_seealso'}{'contents'}[3];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'extra'}{'seealso'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[4];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[2];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[4];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'command'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'content'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'node'} = $result_trees{'double_seeentry_seealso'}{'contents'}[3];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'extra'}{'seealso'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[4];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'extra'}{'seeentry'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[2];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'command'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'content'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'node'} = $result_trees{'double_seeentry_seealso'}{'contents'}[3];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'extra'}{'seealso'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0]{'contents'}[2];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'};
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'extra'}{'seeentry'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0]{'contents'}[2];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[5] = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'};
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[7]{'args'}[0];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[7];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'double_seeentry_seealso'}{'contents'}[4];
$result_trees{'double_seeentry_seealso'}{'contents'}[4]{'parent'} = $result_trees{'double_seeentry_seealso'};

$result_texis{'double_seeentry_seealso'} = '@setfilename double_seeentry_seealso.info

@node top
@top top

@node node index
@chapter Chapter Index

@cindex aaa @seeentry{bbb} @seeentry{ccc}
@cindex @seealso{ccc} ddd @seealso{eee}
@cindex ggg @seeentry{hhh} @seealso{iii}
@cindex @seealso{fff} @subentry subggg @seeentry{subhhh}

@printindex cp
';


$result_texts{'double_seeentry_seealso'} = '
top
***

1 Chapter Index
***************


';

$result_sectioning{'double_seeentry_seealso'} = {
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
        },
        'spaces_before_argument' => ' '
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
                'normalized' => 'node-index',
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
$result_sectioning{'double_seeentry_seealso'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'double_seeentry_seealso'}{'section_childs'}[0];
$result_sectioning{'double_seeentry_seealso'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'double_seeentry_seealso'}{'section_childs'}[0];
$result_sectioning{'double_seeentry_seealso'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'double_seeentry_seealso'}{'section_childs'}[0];
$result_sectioning{'double_seeentry_seealso'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'double_seeentry_seealso'};

$result_nodes{'double_seeentry_seealso'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {
        'spaces_before_argument' => ' '
      },
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
      'normalized' => 'node-index',
      'spaces_before_argument' => ' '
    },
    'node_prev' => {},
    'node_up' => {}
  }
};
$result_nodes{'double_seeentry_seealso'}{'node_next'}{'node_prev'} = $result_nodes{'double_seeentry_seealso'};
$result_nodes{'double_seeentry_seealso'}{'node_next'}{'node_up'} = $result_nodes{'double_seeentry_seealso'};

$result_menus{'double_seeentry_seealso'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'double_seeentry_seealso'} = [];


$result_floats{'double_seeentry_seealso'} = {};



$result_converted{'docbook'}->{'double_seeentry_seealso'} = '
<chapter label="" id="Top">
<title>top</title>

</chapter>
<chapter label="1" id="node-index">
<title>Chapter Index</title>

<indexterm role="cp"><primary>aaa</primary><see>ccc</see></indexterm>
<indexterm role="cp"><primary>ddd</primary><seealso>eee</seealso></indexterm>
<indexterm role="cp"><primary>ggg</primary><see>hhh</see><seealso>iii</seealso></indexterm>
<indexterm role="cp"><primary></primary><secondary>subggg</secondary><seealso>fff</seealso></indexterm>
<index role="cp"></index>
</chapter>
';


$result_converted{'info'}->{'double_seeentry_seealso'} = 'This is double_seeentry_seealso.info, produced from .


File: double_seeentry_seealso.info,  Node: Top,  Next: node index,  Up: (dir)

top
***

* Menu:

* node index::


File: double_seeentry_seealso.info,  Node: node index,  Prev: Top,  Up: Top

1 Chapter Index
***************



Tag Table:
Node: Top55
Node: node index170

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'double_seeentry_seealso'} = 'top
***

1 Chapter Index
***************

';


$result_converted{'html_text'}->{'double_seeentry_seealso'} = '
<div class="top" id="Top">
<div class="header">
<p>
 &nbsp; [<a href="#node-index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="top"></span><h1 class="top">top</h1>

<ul class="section-toc">
<li><a href="#node-index" accesskey="1">Chapter Index</a></li>
</ul>
<hr>
<div class="chapter" id="node-index">
<div class="header">
<p>
 &nbsp; [<a href="#node-index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Chapter-Index"></span><h2 class="chapter">1 Chapter Index</h2>


</div>
</div>
';

1;
