use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'brace_in_index'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
        },
        {
          'contents' => [
            {
              'cmdname' => '{',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'cmdname' => '{',
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'math',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
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
          'cmdname' => 'displaymath',
          'contents' => [
            {
              'extra' => {
                'command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'cmdname' => '{',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'displaymath'
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
                'command_argument' => 'displaymath',
                'spaces_before_argument' => ' ',
                'text_arg' => 'displaymath'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 5,
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
                  'cmdname' => '{',
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
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'number' => 1
            },
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => '{',
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_context'
                    }
                  ],
                  'cmdname' => 'math',
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
              'number' => 2
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => '{',
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'samp',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 13,
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
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'number' => 3
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 13,
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
                          'parent' => {},
                          'text' => 'A'
                        },
                        {
                          'cmdname' => '{',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'A'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'type' => 'def_aggregate'
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
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => '(',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'BBB'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ')',
                      'type' => 'delimiter'
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
                  'number' => 1
                },
                'original_def_cmdname' => 'defun'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 15,
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
                      'text' => 'CCC
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
                'line_nr' => 17,
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
            'line_nr' => 15,
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
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[1];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[1];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[3];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[3];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'extra'}{'command'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'contents'}[3];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'extra'}{'end_command'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'contents'}[3];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7]{'extra'}{'index_entry'}{'command'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7]{'extra'}{'index_entry'}{'content'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'contents'};
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'contents'};
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'extra'}{'index_entry'}{'command'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'extra'}{'index_entry'}{'content'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'};
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'};
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'extra'}{'index_entry'}{'command'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'extra'}{'index_entry'}{'content'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'contents'};
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'contents'};
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[1];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[2]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[2];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[2]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'extra'}{'end_command'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'contents'}[2];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'};

$result_texis{'brace_in_index'} = '@{

@math{@{}

@displaymath
@{
@end displaymath

@cindex @{

@cindex @math{@{}

@cindex @samp{@{}

@defun A@{A (BBB)
CCC
@end defun
';


$result_texts{'brace_in_index'} = '{

{

{




Function: A{A (BBB)
CCC
';

$result_errors{'brace_in_index'} = [
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 13,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 15,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'brace_in_index'} = {};


$result_indices_sort_strings{'brace_in_index'} = {
  'cp' => [
    '{',
    '{',
    '{'
  ],
  'fn' => [
    'A{A'
  ]
};



$result_converted{'latex'}->{'brace_in_index'} = '\\begin{document}
\\{

$\\{$

$$
\\{
$$

\\index[cp]{\\textbraceleft{}}%

\\index[cp]{$\\lbrace{}$}%

\\index[cp]{`\\texttt{\\textbraceleft{}}\'}%


\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\noindent\\texttt{A\\{A \\EmbracOn{}\\textnormal{\\textsl{(BBB)}}\\EmbracOff{}}& [Function]
\\end{tabularx}

\\index[fn]{AA@\\texttt{A\\textbraceleft{}A}}%
\\begin{quote}
\\unskip{\\parskip=0pt\\noindent}%
CCC
\\end{quote}
';


$result_converted{'file_latex'}->{'brace_in_index'} = '\\documentclass{book}
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
\\usepackage{titleps}
\\usepackage{float}
% use hidelinks to remove boxes around links to be similar with Texinfo TeX
\\usepackage[hidelinks]{hyperref}
\\usepackage[utf8]{inputenc}

\\makeatletter
\\newcommand{\\GNUTexinfosettitle}{No Title}%

\\makeindex[name=cp]%
\\makeindex[name=fn]%

% redefine the \\mainmatter command such that it does not clear page
% as if in double page
\\renewcommand\\mainmatter{\\clearpage\\@mainmattertrue\\pagenumbering{arabic}}
% add command aliases to use the same command in book and report
\\newcommand\\GNUTexinfomainmatter{\\mainmatter}
\\newcommand\\GNUTexinfofrontmatter{\\frontmatter}
\\newenvironment{GNUTexinfopreformatted}{%
  \\par\\obeylines\\obeyspaces\\frenchspacing
  \\parskip=\\z@\\parindent=\\z@}{}
% command that does nothing used to help with substitutions in commands
\\newcommand{\\GNUTexinfoplaceholder}[1]{}

% plain page style, for part and chapter, which call \\thispagestyle{plain}
\\renewpagestyle{plain}{\\sethead[\\thepage{}][][]
                             {}{}{\\thepage{}}}

% single header
\\newpagestyle{single}{\\sethead[\\chaptername{} \\thechapter{} \\chaptertitle{}][][\\thepage]
                              {\\chaptername{} \\thechapter{} \\chaptertitle{}}{}{\\thepage}}

% called when setting single headers
\\newcommand{\\GNUTexinfosetsingleheader}{\\pagestyle{single}}

% double header
\\newpagestyle{double}{\\sethead[\\thepage{}][][\\GNUTexinfosettitle]
                              {\\chaptername{} \\thechapter{} \\chaptertitle{}}{}{\\thepage}}

% called when setting double headers
\\newcommand{\\GNUTexinfosetdoubleheader}{\\pagestyle{double}}


% avoid pagebreak and headings setting for a sectionning command
\\newcommand{\\GNUTexinfonopagebreakheading}[2]{\\let\\clearpage\\relax \\let\\cleardoublepage\\relax \\let\\thispagestyle\\GNUTexinfoplaceholder #1{#2}}

% braces are upright in italic and slanted only in @def*
% so it is turned off here, and turned on @def* lines
\\EmbracOff{}%

\\renewcommand{\\includegraphics}[1]{\\fbox{FIG \\detokenize{#1}}}

\\makeatother
% set default for @setchapternewpage
\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother
\\GNUTexinfosetsingleheader{}%

\\begin{document}
\\{

$\\{$

$$
\\{
$$

\\index[cp]{\\textbraceleft{}}%

\\index[cp]{$\\lbrace{}$}%

\\index[cp]{`\\texttt{\\textbraceleft{}}\'}%


\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\noindent\\texttt{A\\{A \\EmbracOn{}\\textnormal{\\textsl{(BBB)}}\\EmbracOff{}}& [Function]
\\end{tabularx}

\\index[fn]{AA@\\texttt{A\\textbraceleft{}A}}%
\\begin{quote}
\\unskip{\\parskip=0pt\\noindent}%
CCC
\\end{quote}
\\end{document}
';

1;
