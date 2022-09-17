use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'multiple_index_text_sortas_seeentry_seealso'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 2,
        'macro' => ''
      }
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 4,
        'macro' => ''
      }
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
                  'text' => ' '
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
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 7,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'spaces_after_close_brace'
                },
                {
                  'parent' => {},
                  'text' => 'continue'
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'other second'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'seeentry',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 7,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'spaces_after_close_brace'
                },
                {
                  'parent' => {},
                  'text' => 'aagain'
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'spaces_at_end'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'toto'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'seealso',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 7,
                    'macro' => ''
                  }
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
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 1,
              'sortas' => 'A---S'
            },
            'seealso' => {},
            'seeentry' => {},
            'sortas' => 'A---S',
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 7,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'other'
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'BB'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sortas',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 8,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'spaces_after_close_brace'
                },
                {
                  'parent' => {},
                  'text' => 'second'
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
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 1,
              'sortas' => 'BB'
            },
            'sortas' => 'BB',
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 8,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'entry'
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'something else'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'seeentry',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 9,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'spaces_after_close_brace'
                },
                {
                  'parent' => {},
                  'text' => 'secret'
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
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 2
            },
            'seeentry' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
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
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
            'macro' => ''
          }
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 5,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'};
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[1]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[1];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[1]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'};
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[2];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[2];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[2]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'};
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[3]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[3];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[3]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'};
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[6];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[10];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[3];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'extra'}{'seealso'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[10];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'extra'}{'seeentry'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[6];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'content'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'node'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[3];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[2];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'command'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'content'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'node'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[3];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'extra'}{'seeentry'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[2];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[5]{'args'}[0];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[5];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4];
$result_trees{'multiple_index_text_sortas_seeentry_seealso'}{'contents'}[4]{'parent'} = $result_trees{'multiple_index_text_sortas_seeentry_seealso'};

$result_texis{'multiple_index_text_sortas_seeentry_seealso'} = '@node Top
@top

@node chapter index
@chapter Index

@cindex aaa @sortas{A---S} continue @seeentry{other second} aagain @seealso{toto}
@cindex other @sortas{BB} second
@cindex entry @seeentry{something else} secret

@printindex cp
';


$result_texts{'multiple_index_text_sortas_seeentry_seealso'} = '
1 Index
*******


';

$result_sectioning{'multiple_index_text_sortas_seeentry_seealso'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            },
            'structure' => {}
          }
        },
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'chapter-index'
                  },
                  'structure' => {}
                }
              },
              'structure' => {
                'section_level' => 1,
                'section_number' => 1,
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'multiple_index_text_sortas_seeentry_seealso'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'multiple_index_text_sortas_seeentry_seealso'}{'structure'}{'section_childs'}[0];
$result_sectioning{'multiple_index_text_sortas_seeentry_seealso'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'multiple_index_text_sortas_seeentry_seealso'}{'structure'}{'section_childs'}[0];
$result_sectioning{'multiple_index_text_sortas_seeentry_seealso'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'multiple_index_text_sortas_seeentry_seealso'}{'structure'}{'section_childs'}[0];
$result_sectioning{'multiple_index_text_sortas_seeentry_seealso'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'multiple_index_text_sortas_seeentry_seealso'};

$result_nodes{'multiple_index_text_sortas_seeentry_seealso'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  },
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'isindex' => 1,
        'normalized' => 'chapter-index'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'multiple_index_text_sortas_seeentry_seealso'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'multiple_index_text_sortas_seeentry_seealso'};
$result_nodes{'multiple_index_text_sortas_seeentry_seealso'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'multiple_index_text_sortas_seeentry_seealso'};

$result_menus{'multiple_index_text_sortas_seeentry_seealso'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'multiple_index_text_sortas_seeentry_seealso'} = [];


$result_floats{'multiple_index_text_sortas_seeentry_seealso'} = {};


$result_indices_sort_strings{'multiple_index_text_sortas_seeentry_seealso'} = {
  'cp' => [
    'BB'
  ]
};



$result_converted{'docbook'}->{'multiple_index_text_sortas_seeentry_seealso'} = '<chapter label="1" id="chapter-index">
<title>Index</title>

<indexterm role="cp"><primary>aaa continue aagain</primary><see>other second</see><seealso>toto</seealso></indexterm>
<indexterm role="cp"><primary>other second</primary></indexterm>
<indexterm role="cp"><primary>entry secret</primary><see>something else</see></indexterm>

<index role="cp"></index>
</chapter>
';


$result_converted{'info'}->{'multiple_index_text_sortas_seeentry_seealso'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapter index,  Up: (dir)

* Menu:

* chapter index::


File: ,  Node: chapter index,  Prev: Top,  Up: Top

1 Index
*******

 [index ]
* Menu:

* other second:                          chapter index.         (line 6)



Tag Table:
Node: Top27
Node: chapter index111

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'multiple_index_text_sortas_seeentry_seealso'} = '1 Index
*******

* Menu:

* other second:                          chapter index.         (line 3)

';


$result_converted{'html_text'}->{'multiple_index_text_sortas_seeentry_seealso'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
 &nbsp; [<a href="#chapter-index" title="Index" rel="index">Index</a>]</p>
</div>
<a class="top" id="SEC_Top"></a>
<ul class="mini-toc">
<li><a href="#chapter-index" accesskey="1">Index</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter-index">
<div class="nav-panel">
<p>
 &nbsp; [<a href="#chapter-index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Index">1 Index</h2>

<a class="index-entry-id" id="index-other-second"></a>

<div class="printindex cp-printindex">
<table class="cp-entries-printindex" border="0">
<tr><td></td><th class="entries-header-printindex">Index Entry</th><td>&nbsp;</td><th class="sections-header-printindex"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_i_cp_letter-B">B</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-other-second">other second</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
</div>
</div>
</div>
';


$result_converted{'latex'}->{'multiple_index_text_sortas_seeentry_seealso'} = '\\documentclass{book}
\\usepackage{imakeidx}
\\usepackage{amsfonts}
\\usepackage{amsmath}
\\usepackage[gen]{eurosym}
\\usepackage[T1]{fontenc}
\\usepackage{textcomp}
\\usepackage{graphicx}
\\usepackage{etoolbox}
\\usepackage{titleps}
\\usepackage{float}
% use hidelinks to remove boxes around links to be similar to Texinfo TeX
\\usepackage[hidelinks]{hyperref}
\\usepackage[utf8]{inputenc}

\\makeatletter
\\newcommand{\\GNUTexinfosettitle}{No Title}%

\\makeindex[name=cp]%

% redefine the \\mainmatter command such that it does not clear page
% as if in double page
\\renewcommand\\mainmatter{\\clearpage\\@mainmattertrue\\pagenumbering{arabic}}
\\newenvironment{GNUTexinfopreformatted}{%
  \\par\\GNUTobeylines\\obeyspaces\\frenchspacing\\parskip=\\z@\\parindent=\\z@}{}
{\\catcode`\\^^M=13 \\gdef\\GNUTobeylines{\\catcode`\\^^M=13 \\def^^M{\\null\\par}}}
\\newenvironment{GNUTexinfoindented}{\\begin{list}{}{}\\item\\relax}{\\end{list}}
% used for substitutions in commands
\\newcommand{\\GNUTexinfoplaceholder}[1]{}

\\newpagestyle{single}{\\sethead[\\chaptername{} \\thechapter{} \\chaptertitle{}][][\\thepage]
                              {\\chaptername{} \\thechapter{} \\chaptertitle{}}{}{\\thepage}}

\\renewcommand{\\includegraphics}[1]{\\fbox{FIG \\detokenize{#1}}}

\\makeatother
% set default for @setchapternewpage
\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother
\\pagestyle{single}%

\\begin{document}
\\label{anchor:Top}%
\\chapter{{Index}}
\\label{anchor:chapter-index}%

\\index[cp]{A---S@aaa continue aagain|see{other second}}%
\\index[cp]{BB@other second}%
\\index[cp]{entry secret|see{something else}}%

\\printindex[cp]
\\end{document}
';

1;
