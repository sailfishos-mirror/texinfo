use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'same_index_entry_merged_indices'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'vr fn'
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
              'cmdname' => 'syncodeindex',
              'extra' => {
                'misc_args' => [
                  'vr',
                  'fn'
                ],
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
            }
          ],
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
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 3,
        'macro' => ''
      }
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
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Text.
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
          'cmdname' => 'deffn',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'text' => 'Command'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'text' => 'mmm-mode'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'arg'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 8,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'spaces_at_end'
                    }
                  ],
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'deffn',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {}
                  ],
                  'content_normalized' => [
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deffn',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deffn',
                  'node' => {},
                  'number' => 1
                },
                'original_def_cmdname' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Toggle the state of MMM Mode.
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'parent' => {},
              'type' => 'def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'deffn'
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
                'command_argument' => 'deffn',
                'spaces_before_argument' => ' ',
                'text_arg' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 8,
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
          'cmdname' => 'defvar',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Variable'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'type' => 'bracketed_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'text' => 'mmm-mode'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'spaces_at_end'
                    }
                  ],
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'defvar',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {}
                  ],
                  'content_normalized' => [
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'defvar',
                  'index_ignore_chars' => {},
                  'index_name' => 'vr',
                  'index_type_command' => 'defvar',
                  'node' => {},
                  'number' => 1
                },
                'original_def_cmdname' => 'defvar'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'This variable represents MMM Mode.
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'parent' => {},
              'type' => 'def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'defvar'
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
                'command_argument' => 'defvar',
                'spaces_before_argument' => ' ',
                'text_arg' => 'defvar'
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
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 12,
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
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 16,
            'macro' => ''
          }
        }
      ],
      'extra' => {},
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 4,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'same_index_entry_merged_indices'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[0]{'contents'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[0]{'contents'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'};
$result_trees{'same_index_entry_merged_indices'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[1]{'args'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[1];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'same_index_entry_merged_indices'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'same_index_entry_merged_indices'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[1]{'parent'} = $result_trees{'same_index_entry_merged_indices'};
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[1];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[1];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[2];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'contents'}[2];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[1];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'contents'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[1];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[2];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'extra'}{'end_command'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'contents'}[2];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[7]{'args'}[0];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[7];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'contents'}[7]{'parent'} = $result_trees{'same_index_entry_merged_indices'}{'contents'}[2];
$result_trees{'same_index_entry_merged_indices'}{'contents'}[2]{'parent'} = $result_trees{'same_index_entry_merged_indices'};

$result_texis{'same_index_entry_merged_indices'} = '@syncodeindex vr fn

@node Top
@top

Text.

@deffn Command mmm-mode @var{arg}
Toggle the state of MMM Mode.
@end deffn

@defvar mmm-mode
This variable represents MMM Mode.
@end defvar

@printindex fn
';


$result_texts{'same_index_entry_merged_indices'} = '

Text.

Command: mmm-mode arg
Toggle the state of MMM Mode.

Variable: mmm-mode
This variable represents MMM Mode.

';

$result_sectioning{'same_index_entry_merged_indices'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'isindex' => 1,
              'normalized' => 'Top'
            }
          }
        },
        'structure' => {
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'same_index_entry_merged_indices'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'same_index_entry_merged_indices'};

$result_nodes{'same_index_entry_merged_indices'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

$result_menus{'same_index_entry_merged_indices'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

$result_errors{'same_index_entry_merged_indices'} = [];


$result_indices{'same_index_entry_merged_indices'} = {
  'index_names' => {
    'cp' => {
      'contained_indices' => {
        'cp' => 1
      },
      'in_code' => 0,
      'name' => 'cp'
    },
    'fn' => {
      'contained_indices' => {
        'fn' => 1,
        'vr' => 1
      },
      'in_code' => 1,
      'name' => 'fn'
    },
    'ky' => {
      'contained_indices' => {
        'ky' => 1
      },
      'in_code' => 1,
      'name' => 'ky'
    },
    'pg' => {
      'contained_indices' => {
        'pg' => 1
      },
      'in_code' => 1,
      'name' => 'pg'
    },
    'tp' => {
      'contained_indices' => {
        'tp' => 1
      },
      'in_code' => 1,
      'name' => 'tp'
    },
    'vr' => {
      'in_code' => 1,
      'merged_in' => 'fn',
      'name' => 'vr'
    }
  }
};


$result_floats{'same_index_entry_merged_indices'} = {};


$result_indices_sort_strings{'same_index_entry_merged_indices'} = {
  'fn' => [
    'mmm-mode',
    'mmm-mode'
  ]
};



$result_converted{'info'}->{'same_index_entry_merged_indices'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

Text.

 -- Command: mmm-mode ARG
     Toggle the state of MMM Mode.

 -- Variable: mmm-mode
     This variable represents MMM Mode.

 [index ]
* Menu:

* mmm-mode:                              Top.                   (line 5)
* mmm-mode <1>:                          Top.                   (line 8)



Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'same_index_entry_merged_indices'} = 'Text.

 -- Command: mmm-mode ARG
     Toggle the state of MMM Mode.

 -- Variable: mmm-mode
     This variable represents MMM Mode.

* Menu:

* mmm-mode:                              Top.                   (line 2)
* mmm-mode <1>:                          Top.                   (line 5)

';


$result_converted{'html_text'}->{'same_index_entry_merged_indices'} = '
<div class="top-level-extent" id="Top">
<a class="top" id="SEC_Top"></a>
<p>Text.
</p>
<dl class="first-deffn">
<dt class="deffn" id="index-mmm_002dmode"><span class="category-def">Command: </span><span><code class="def-name">mmm-mode</code> <var class="def-meta-var-arguments"><var class="var">arg</var></var><a class="copiable-link" href=\'#index-mmm_002dmode\'> &para;</a></span></dt>
<dd><p>Toggle the state of MMM Mode.
</p></dd></dl>

<dl class="first-defvr first-defvar-alias-first-defvr">
<dt class="defvr defvar-alias-defvr" id="index-mmm_002dmode-1"><span class="category-def">Variable: </span><span><code class="def-name">mmm-mode</code><a class="copiable-link" href=\'#index-mmm_002dmode-1\'> &para;</a></span></dt>
<dd><p>This variable represents MMM Mode.
</p></dd></dl>

<div class="printindex fn-printindex">
<table class="fn-entries-printindex" border="0">
<tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_i_fn_letter-M">M</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-mmm_002dmode"><code>mmm-mode</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top">Top</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-mmm_002dmode-1"><code>mmm-mode</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top">Top</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
</div>
</div>
';

1;
