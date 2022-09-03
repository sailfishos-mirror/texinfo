use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_string_index_entry'} = {
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'node'
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
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'w',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 4,
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
          'cmdname' => 'findex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 1,
              'index_at_command' => 'findex',
              'index_ignore_chars' => {},
              'index_name' => 'fn',
              'index_type_command' => 'findex',
              'node' => {},
              'number' => 1
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 4,
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
                  'cmdname' => 'code',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 6,
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
          'cmdname' => 'ftable',
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
                              'args' => [
                                {
                                  'contents' => [],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'w',
                              'contents' => [],
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
                      'cmdname' => 'item',
                      'extra' => {
                        'index_entry' => {
                          'command' => {},
                          'content' => [],
                          'content_normalized' => [],
                          'in_code' => 1,
                          'index_at_command' => 'item',
                          'index_ignore_chars' => {},
                          'index_name' => 'fn',
                          'index_type_command' => 'ftable',
                          'node' => {},
                          'number' => 2
                        },
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 7,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_term'
                }
              ],
              'parent' => {},
              'type' => 'table_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'ftable'
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
                'command_argument' => 'ftable',
                'spaces_before_argument' => ' ',
                'text_arg' => 'ftable'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
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
          'cmdname' => 'defun',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Function'
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
                      'contents' => [
                        {
                          'args' => [
                            {
                              'contents' => [],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'w',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 10,
                            'macro' => ''
                          }
                        }
                      ],
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 10,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
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
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 10,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
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
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 10,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
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
                'def_command' => 'defun',
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
                  'index_at_command' => 'defun',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'defun',
                  'node' => {},
                  'number' => 3
                },
                'original_def_cmdname' => 'defun'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Function'
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
                      'contents' => [
                        {
                          'args' => [
                            {
                              'contents' => [],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'w',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 11,
                            'macro' => ''
                          }
                        }
                      ],
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 11,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
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
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 11,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
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
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 11,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
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
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'defunx',
              'extra' => {
                'def_command' => 'defun',
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
                  'index_at_command' => 'defunx',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'defun',
                  'node' => {},
                  'number' => 4
                },
                'original_def_cmdname' => 'defunx',
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'defun'
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
                'command_argument' => 'defun',
                'spaces_before_argument' => ' ',
                'text_arg' => 'defun'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 12,
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
            'line_nr' => 10,
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
            'line_nr' => 14,
            'macro' => ''
          }
        }
      ],
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
            'normalized' => 'node'
          }
        ],
        'normalized' => 'node',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 2,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'empty_string_index_entry'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[0]{'parent'} = $result_trees{'empty_string_index_entry'};
$result_trees{'empty_string_index_entry'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[1]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[1];
$result_trees{'empty_string_index_entry'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'empty_string_index_entry'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'empty_string_index_entry'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[1]{'parent'} = $result_trees{'empty_string_index_entry'};
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[1];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[1];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'empty_string_index_entry'}{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'empty_string_index_entry'}{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'extra'}{'command_as_argument'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'empty_string_index_entry'}{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'empty_string_index_entry'}{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'extra'}{'end_command'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[7]{'args'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[7];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[7]{'parent'} = $result_trees{'empty_string_index_entry'}{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'extra'}{'node_content'}[0] = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'parent'} = $result_trees{'empty_string_index_entry'};

$result_texis{'empty_string_index_entry'} = '@node Top
@node node

@findex @w{}

@ftable @code
@item @w{}
@end ftable

@defun {@w{}} {} {}
@defunx {@w{}} {} {}
@end defun

@printindex fn
';


$result_texts{'empty_string_index_entry'} = '



Function:   
Function:   

';

$result_nodes{'empty_string_index_entry'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'isindex' => 1,
        'normalized' => 'node'
      },
      'structure' => {
        'node_prev' => {}
      }
    }
  }
};
$result_nodes{'empty_string_index_entry'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'empty_string_index_entry'};

$result_menus{'empty_string_index_entry'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'empty_string_index_entry'} = [
  {
    'error_line' => 'warning: empty index key in @findex
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => 'empty index key in @findex',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @item
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => 'empty index key in @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @defun
',
    'file_name' => '',
    'line_nr' => 10,
    'macro' => '',
    'text' => 'empty index key in @defun',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @defunx
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => '',
    'text' => 'empty index key in @defunx',
    'type' => 'warning'
  }
];


$result_floats{'empty_string_index_entry'} = {};



$result_converted{'info'}->{'empty_string_index_entry'} = 'This is , produced from .


File: ,  Node: Top,  Next: node,  Up: (dir)


File: ,  Node: node,  Prev: Top

‘’

 -- Function: 
 -- Function: 



Tag Table:
Node: Top27
Node: node74

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'empty_string_index_entry'} = [
  {
    'error_line' => 'warning: empty index key in @findex
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => 'empty index key in @findex',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @item
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => 'empty index key in @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @defun
',
    'file_name' => '',
    'line_nr' => 10,
    'macro' => '',
    'text' => 'empty index key in @defun',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @defunx
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => '',
    'text' => 'empty index key in @defunx',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'empty_string_index_entry'} = '‘’

 -- Function: 
 -- Function: 

';

$result_converted_errors{'plaintext'}->{'empty_string_index_entry'} = [
  {
    'error_line' => 'warning: empty index key in @findex
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => 'empty index key in @findex',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @item
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => 'empty index key in @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @defun
',
    'file_name' => '',
    'line_nr' => 10,
    'macro' => '',
    'text' => 'empty index key in @defun',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @defunx
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => '',
    'text' => 'empty index key in @defunx',
    'type' => 'warning'
  }
];



$result_converted{'html_text'}->{'empty_string_index_entry'} = '<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
 &nbsp; [<a href="#node" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="node">Top</h1>
<hr>
<a class="node-id" id="node"></a><div class="nav-panel">
<p>
 &nbsp; [<a href="#node" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="node">node</h4>

<a class="index-entry-id" id="index-"></a>

<dl class="ftable">
<dt id=\'index--1\'><span><code class="code"><!-- /@w --></code><a class="copiable-link" href=\'#index--1\'> &para;</a></span></dt>
</dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index--2"><span class="category-def">Function: </span><span><strong class="def-name"><!-- /@w --></strong><a class="copiable-link" href=\'#index--2\'> &para;</a></span></dt>
<dt class="deffnx defunx-alias-deffnx def-cmd-deffn" id="index--3"><span class="category-def">Function: </span><span><strong class="def-name"><!-- /@w --></strong><a class="copiable-link" href=\'#index--3\'> &para;</a></span></dt>
</dl>

';

$result_converted_errors{'html_text'}->{'empty_string_index_entry'} = [
  {
    'error_line' => 'warning: empty index key in @findex
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => 'empty index key in @findex',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @item
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => 'empty index key in @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @defun
',
    'file_name' => '',
    'line_nr' => 10,
    'macro' => '',
    'text' => 'empty index key in @defun',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @defunx
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => '',
    'text' => 'empty index key in @defunx',
    'type' => 'warning'
  }
];



$result_converted{'latex'}->{'empty_string_index_entry'} = '\\documentclass{book}
\\usepackage{imakeidx}
\\usepackage{amsfonts}
\\usepackage{amsmath}
\\usepackage[gen]{eurosym}
\\usepackage[T1]{fontenc}
\\usepackage{textcomp}
\\usepackage{graphicx}
\\usepackage{etoolbox}
\\usepackage{embrac}
\\usepackage{expl3}
\\usepackage{tabularx}
\\usepackage{enumitem}
\\usepackage{titleps}
\\usepackage{float}
% use hidelinks to remove boxes around links to be similar to Texinfo TeX
\\usepackage[hidelinks]{hyperref}
\\usepackage[utf8]{inputenc}

\\makeatletter
\\newcommand{\\GNUTexinfosettitle}{No Title}%

\\makeindex[name=fn]%

% redefine the \\mainmatter command such that it does not clear page
% as if in double page
\\renewcommand\\mainmatter{\\clearpage\\@mainmattertrue\\pagenumbering{arabic}}
\\newenvironment{GNUTexinfopreformatted}{%
  \\par\\GNUTobeylines\\obeyspaces\\frenchspacing\\parskip=\\z@\\parindent=\\z@}{}
{\\catcode`\\^^M=13 \\gdef\\GNUTobeylines{\\catcode`\\^^M=13 \\def^^M{\\null\\par}}}
\\newenvironment{GNUTexinfoindented}{\\begin{list}{}{}\\item\\relax}{\\end{list}}
% set defaults for lists that match Texinfo TeX formatting
\\setlist[description]{style=nextline, font=\\normalfont}

% command that does nothing used to help with substitutions in commands
\\newcommand{\\GNUTexinfoplaceholder}[1]{}

\\newpagestyle{single}{\\sethead[\\chaptername{} \\thechapter{} \\chaptertitle{}][][\\thepage]
                              {\\chaptername{} \\thechapter{} \\chaptertitle{}}{}{\\thepage}}

% avoid pagebreak and headings setting for a sectioning command
\\newcommand{\\GNUTexinfonopagebreakheading}[2]{{\\let\\clearpage\\relax \\let\\cleardoublepage\\relax \\let\\thispagestyle\\GNUTexinfoplaceholder #1{#2}}}

% braces are upright in italic and slanted only in @def*
% so it is turned off here, and turned on @def* lines
\\EmbracOff{}%

\\renewcommand{\\includegraphics}[1]{\\fbox{FIG \\detokenize{#1}}}

\\makeatother
% set default for @setchapternewpage
\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother
\\pagestyle{single}%

\\begin{document}
\\label{anchor:Top}%
\\label{anchor:node}%

\\index[fn]{@\\texttt{\\hbox{}}}%

\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\texttt{\\hbox{}}
\\index[fn]{@\\texttt{\\hbox{}}}%
}}]
\\end{description}


\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{\\hbox{} \\EmbracOn{}\\textnormal{\\textsl{ }}\\EmbracOff{}}& [Function]
\\end{tabularx}

\\index[fn]{@\\texttt{\\hbox{}}}%

\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{\\hbox{} \\EmbracOn{}\\textnormal{\\textsl{ }}\\EmbracOff{}}& [Function]
\\end{tabularx}

\\index[fn]{@\\texttt{\\hbox{}}}%

\\printindex[fn]
\\end{document}
';

1;
