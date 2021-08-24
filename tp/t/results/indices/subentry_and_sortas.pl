use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'subentry_and_sortas'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'subentry_and_sortas.info'
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
            'text_arg' => 'subentry_and_sortas.info'
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
                          'text' => 'A---S'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sortas',
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
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'key' => 'A---S',
              'node' => {},
              'number' => 1,
              'sortas' => 'A---S'
            },
            'sortas' => 'A---S',
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'B---S1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'sortas',
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
                      'type' => 'empty_spaces_after_close_brace'
                    },
                    {
                      'parent' => {},
                      'text' => 'bbb'
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
                'sortas' => 'B---S1',
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              },
              'parent' => {}
            }
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
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
                  'text' => 'xxx'
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
                          'text' => 'X---S'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sortas',
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
                'spaces_after_argument' => ' '
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
              'in_code' => 1,
              'index_at_command' => 'findex',
              'index_name' => 'fn',
              'index_type_command' => 'findex',
              'key' => 'X---S',
              'node' => {},
              'number' => 1,
              'sortas' => 'X---S'
            },
            'sortas' => 'X---S',
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'X---S1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'sortas',
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
                      'type' => 'empty_spaces_after_close_brace'
                    },
                    {
                      'parent' => {},
                      'text' => 'zzz'
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
                'sortas' => 'X---S1',
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              },
              'parent' => {}
            }
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 11,
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
            'line_nr' => 13,
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
$result_trees{'subentry_and_sortas'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[0]{'contents'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[0]{'parent'} = $result_trees{'subentry_and_sortas'};
$result_trees{'subentry_and_sortas'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[1]{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[1];
$result_trees{'subentry_and_sortas'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'subentry_and_sortas'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'subentry_and_sortas'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[1]{'parent'} = $result_trees{'subentry_and_sortas'};
$result_trees{'subentry_and_sortas'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[2];
$result_trees{'subentry_and_sortas'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[2];
$result_trees{'subentry_and_sortas'}{'contents'}[2]{'parent'} = $result_trees{'subentry_and_sortas'};
$result_trees{'subentry_and_sortas'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[3]{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[3];
$result_trees{'subentry_and_sortas'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'subentry_and_sortas'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'subentry_and_sortas'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[3]{'parent'} = $result_trees{'subentry_and_sortas'};
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'subentry_and_sortas'}{'contents'}[3];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'};
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[2] = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'};
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'command'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'content'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'node'} = $result_trees{'subentry_and_sortas'}{'contents'}[3];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'};
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[5] = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'};
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[7]{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[7];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[8]{'args'}[0];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[8];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'contents'}[8]{'parent'} = $result_trees{'subentry_and_sortas'}{'contents'}[4];
$result_trees{'subentry_and_sortas'}{'contents'}[4]{'parent'} = $result_trees{'subentry_and_sortas'};

$result_texis{'subentry_and_sortas'} = '@setfilename subentry_and_sortas.info

@node Top
@top

@node chapter index
@chapter Index

@cindex aaa @sortas{A---S} @subentry @sortas{B---S1} bbb

@findex xxx @sortas{X---S} @subentry @sortas{X---S1} zzz

@printindex cp
@printindex fn
';


$result_texts{'subentry_and_sortas'} = '

1 Index
*******



';

$result_sectioning{'subentry_and_sortas'} = {
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
$result_sectioning{'subentry_and_sortas'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'subentry_and_sortas'}{'section_childs'}[0];
$result_sectioning{'subentry_and_sortas'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'subentry_and_sortas'}{'section_childs'}[0];
$result_sectioning{'subentry_and_sortas'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'subentry_and_sortas'}{'section_childs'}[0];
$result_sectioning{'subentry_and_sortas'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'subentry_and_sortas'};

$result_nodes{'subentry_and_sortas'} = {
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
$result_nodes{'subentry_and_sortas'}{'node_next'}{'node_prev'} = $result_nodes{'subentry_and_sortas'};
$result_nodes{'subentry_and_sortas'}{'node_next'}{'node_up'} = $result_nodes{'subentry_and_sortas'};

$result_menus{'subentry_and_sortas'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'subentry_and_sortas'} = [];


$result_floats{'subentry_and_sortas'} = {};



$result_converted{'plaintext'}->{'subentry_and_sortas'} = '1 Index
*******

* Menu:

* aaa, bbb:                              chapter index.         (line 3)

* Menu:

* xxx, zzz:                              chapter index.         (line 3)

';


$result_converted{'docbook'}->{'subentry_and_sortas'} = '
<chapter label="" id="Top">
<title></title>

</chapter>
<chapter label="1" id="chapter-index">
<title>Index</title>

<indexterm role="cp"><primary>aaa</primary><secondary>bbb</secondary></indexterm>
<indexterm role="fn"><primary>xxx</primary><secondary>zzz</secondary></indexterm>
<index role="cp"></index>
<index role="fn"></index>
</chapter>
';


$result_converted{'html'}->{'subentry_and_sortas'} = '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<link href="#chapter-index" rel="index" title="chapter index">
<style type="text/css">
<!--
a.copiable-anchor {visibility: hidden; text-decoration: none; line-height: 0em}
a.summary-letter {text-decoration: none}
blockquote.indentedblock {margin-right: 0em}
div.display {margin-left: 3.2em}
div.example {margin-left: 3.2em}
kbd {font-style: oblique}
pre.display {font-family: inherit}
pre.format {font-family: inherit}
pre.menu-comment {font-family: serif}
pre.menu-preformatted {font-family: serif}
span.nolinebreak {white-space: nowrap}
span.roman {font-family: initial; font-weight: normal}
span.sansserif {font-family: sans-serif; font-weight: normal}
span:hover a.copiable-anchor {visibility: visible}
ul.no-bullet {list-style: none}
-->
</style>


</head>

<body lang="en">

<div class="top" id="Top">
<div class="header">
<p>
Next: <a href="#chapter-index" accesskey="n" rel="next">Index</a> &nbsp; [<a href="#chapter-index" title="Index" rel="index">Index</a>]</p>
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

<span id="index-aaa"></span>

<span id="index-xxx"></span>

<table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#chapter-index_cp_letter-A"><b>A</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-cp" border="0">
<tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="chapter-index_cp_letter-A">A</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-aaa">aaa, bbb</a>:</td><td>&nbsp;</td><td valign="top"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#chapter-index_cp_letter-A"><b>A</b></a>
 &nbsp; 
</td></tr></table>
<table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#chapter-index_fn_letter-X"><b>X</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-fn" border="0">
<tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="chapter-index_fn_letter-X">X</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-xxx"><code>xxx, zzz</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#chapter-index_fn_letter-X"><b>X</b></a>
 &nbsp; 
</td></tr></table>
</div>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'subentry_and_sortas'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'info'}->{'subentry_and_sortas'} = 'This is subentry_and_sortas.info, produced from .


File: subentry_and_sortas.info,  Node: Top,  Next: chapter index,  Up: (dir)

* Menu:

* chapter index::


File: subentry_and_sortas.info,  Node: chapter index,  Prev: Top,  Up: Top

1 Index
*******

 [index ]
* Menu:

* aaa, bbb:                              chapter index.         (line 6)

 [index ]
* Menu:

* xxx, zzz:                              chapter index.         (line 6)



Tag Table:
Node: Top51
Node: chapter index159

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'subentry_and_sortas'} = '1 Index
*******

* Menu:

* aaa, bbb:                              chapter index.         (line 3)

* Menu:

* xxx, zzz:                              chapter index.         (line 3)

';


$result_converted{'html_text'}->{'subentry_and_sortas'} = '
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

<span id="index-aaa"></span>

<span id="index-xxx"></span>

<table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#t_h_cp_letter-A"><b>A</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-cp" border="0">
<tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_h_cp_letter-A">A</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-aaa">aaa, bbb</a>:</td><td>&nbsp;</td><td valign="top"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#t_h_cp_letter-A"><b>A</b></a>
 &nbsp; 
</td></tr></table>
<table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#t_h_fn_letter-X"><b>X</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-fn" border="0">
<tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_h_fn_letter-X">X</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-xxx"><code>xxx, zzz</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#t_h_fn_letter-X"><b>X</b></a>
 &nbsp; 
</td></tr></table>
</div>
</div>
';

1;
