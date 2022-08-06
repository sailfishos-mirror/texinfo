use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'explicit_sort_key'} = {
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
        'line_nr' => 1,
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'SK'
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
          'cmdname' => 'defindex',
          'extra' => {
            'misc_args' => [
              'SK'
            ],
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
                          'text' => 'A'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sortas',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 6,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_after_close_brace'
                },
                {
                  'parent' => {},
                  'text' => 'bbbbbbb (first)'
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
          'cmdname' => 'SKindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 0,
              'index_at_command' => 'SKindex',
              'index_ignore_chars' => {},
              'index_name' => 'SK',
              'index_type_command' => 'SKindex',
              'node' => {},
              'number' => 1,
              'sortas' => 'A'
            },
            'sortas' => 'A',
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 6,
            'macro' => ''
          },
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
                          'text' => 'B'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sortas',
                  'contents' => [],
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
                  'type' => 'empty_spaces_after_close_brace'
                },
                {
                  'parent' => {},
                  'text' => 'aaaaaaa (second)'
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
          'cmdname' => 'SKindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 0,
              'index_at_command' => 'SKindex',
              'index_ignore_chars' => {},
              'index_name' => 'SK',
              'index_type_command' => 'SKindex',
              'node' => {},
              'number' => 2,
              'sortas' => 'B'
            },
            'sortas' => 'B',
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '0'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sortas',
                  'contents' => [],
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
                  'type' => 'empty_spaces_after_close_brace'
                },
                {
                  'parent' => {},
                  'text' => 'zero sort key'
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
          'cmdname' => 'SKindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 0,
              'index_at_command' => 'SKindex',
              'index_ignore_chars' => {},
              'index_name' => 'SK',
              'index_type_command' => 'SKindex',
              'node' => {},
              'number' => 3,
              'sortas' => '0'
            },
            'sortas' => '0',
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
                                  'text' => 'invalid nesting'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'sortas',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 9,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'b',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 9,
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
          'cmdname' => 'SKindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 0,
              'index_at_command' => 'SKindex',
              'index_ignore_chars' => {},
              'index_name' => 'SK',
              'index_type_command' => 'SKindex',
              'node' => {},
              'number' => 4
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'in a reuglar para'
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
                      'text' => 'foo'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'sortas',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '. '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'inside another'
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
                              'text' => 'command'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'sortas',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 11,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
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
                      'parent' => {},
                      'text' => 'and cmd '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'inside'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'b',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 13,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'sortas',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 13,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'and cmd'
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
                              'text' => 'inside'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'sortas',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 14,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'url',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 14,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'SK'
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
              'SK'
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
        'line_nr' => 2,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'explicit_sort_key'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'};
$result_trees{'explicit_sort_key'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[1]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[1];
$result_trees{'explicit_sort_key'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'explicit_sort_key'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'explicit_sort_key'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[1]{'parent'} = $result_trees{'explicit_sort_key'};
$result_trees{'explicit_sort_key'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[1];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[3];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[3]{'extra'}{'index_entry'}{'command'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[3];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[3]{'extra'}{'index_entry'}{'content'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[3]{'extra'}{'index_entry'}{'node'} = $result_trees{'explicit_sort_key'}{'contents'}[1];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[4]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[4]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[4]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[4];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[4]{'extra'}{'index_entry'}{'command'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[4];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[4]{'extra'}{'index_entry'}{'content'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[4]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[4]{'extra'}{'index_entry'}{'node'} = $result_trees{'explicit_sort_key'}{'contents'}[1];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[5]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[5]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[5]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[5];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[5]{'extra'}{'index_entry'}{'command'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[5];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[5]{'extra'}{'index_entry'}{'content'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[5]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[5]{'extra'}{'index_entry'}{'node'} = $result_trees{'explicit_sort_key'}{'contents'}[1];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'extra'}{'index_entry'}{'command'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'extra'}{'index_entry'}{'content'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'};
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'};
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'extra'}{'index_entry'}{'node'} = $result_trees{'explicit_sort_key'}{'contents'}[1];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[7]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[2]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[2];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[2]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[3]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[4]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[4]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[4]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[4];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[4]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'contents'}[5]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[8]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[9]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[1]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[2]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[2]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[2]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[2]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[2]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[2]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[2];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[2]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'contents'}[3]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[10]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[11]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[12]{'args'}[0];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[12];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'contents'}[12]{'parent'} = $result_trees{'explicit_sort_key'}{'contents'}[2];
$result_trees{'explicit_sort_key'}{'contents'}[2]{'parent'} = $result_trees{'explicit_sort_key'};

$result_texis{'explicit_sort_key'} = '@node Top
@top

@defindex SK

@SKindex @sortas{A} bbbbbbb (first)
@SKindex @sortas{B} aaaaaaa (second)
@SKindex @sortas{0} zero sort key
@SKindex @b{aaa @sortas{invalid nesting}}

in a reuglar para @sortas{foo}. @code{inside another @sortas{command}}.

@sortas{and cmd @b{inside}}.
@url{and cmd @sortas{inside}}.

@printindex SK
';


$result_texts{'explicit_sort_key'} = '


in a reuglar para. inside another.

.
and cmd.

';

$result_sectioning{'explicit_sort_key'} = {
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
$result_sectioning{'explicit_sort_key'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'explicit_sort_key'};

$result_nodes{'explicit_sort_key'} = {
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

$result_menus{'explicit_sort_key'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

$result_errors{'explicit_sort_key'} = [
  {
    'error_line' => 'warning: @sortas should only appear in an index entry
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => '',
    'text' => '@sortas should only appear in an index entry',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @sortas should only appear in an index entry
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => '',
    'text' => '@sortas should only appear in an index entry',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @sortas should only appear in an index entry
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => '',
    'text' => '@sortas should only appear in an index entry',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @sortas should only appear in an index entry
',
    'file_name' => '',
    'line_nr' => 13,
    'macro' => '',
    'text' => '@sortas should only appear in an index entry',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @sortas should only appear in an index entry
',
    'file_name' => '',
    'line_nr' => 14,
    'macro' => '',
    'text' => '@sortas should only appear in an index entry',
    'type' => 'warning'
  }
];


$result_indices{'explicit_sort_key'} = {
  'index_names' => {
    'SK' => {
      'contained_indices' => {
        'SK' => 1
      },
      'in_code' => 0,
      'name' => 'SK'
    },
    'cp' => {
      'contained_indices' => {
        'cp' => 1
      },
      'in_code' => 0,
      'name' => 'cp'
    },
    'fn' => {
      'contained_indices' => {
        'fn' => 1
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
      'contained_indices' => {
        'vr' => 1
      },
      'in_code' => 1,
      'name' => 'vr'
    }
  }
};


$result_floats{'explicit_sort_key'} = {};


$result_indices_sort_strings{'explicit_sort_key'} = {
  'SK' => [
    '0',
    'A',
    'aaa',
    'B'
  ]
};



$result_converted{'info'}->{'explicit_sort_key'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

in a reuglar para.  ‘inside another’.

   .  <and cmd>.

 [index ]
* Menu:

* zero sort key:                         Top.                   (line 3)
* bbbbbbb (first):                       Top.                   (line 3)
* aaa:                                   Top.                   (line 3)
* aaaaaaa (second):                      Top.                   (line 3)



Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'explicit_sort_key'} = 'in a reuglar para.  ‘inside another’.

   .  <and cmd>.

* Menu:

* zero sort key:                         Top.                   (line 0)
* bbbbbbb (first):                       Top.                   (line 0)
* aaa:                                   Top.                   (line 0)
* aaaaaaa (second):                      Top.                   (line 0)

';


$result_converted{'html_text'}->{'explicit_sort_key'} = '<div class="top-level-extent" id="Top">
<a class="top" id="SEC_Top"></a>

<a class="index-entry-id" id="index-bbbbbbb-_0028first_0029"></a>
<a class="index-entry-id" id="index-aaaaaaa-_0028second_0029"></a>
<a class="index-entry-id" id="index-zero-sort-key"></a>
<a class="index-entry-id" id="index-aaa"></a>

<p>in a reuglar para. <code class="code">inside another</code>.
</p>
<p>.
<a class="url" href="and%20cmd">and cmd</a>.
</p>
<div class="printindex SK-printindex">
<table class="SK-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#t_i_SK_symbol-1"><b>0</b></a>
 &nbsp; 
<br>
<a class="summary-letter-printindex" href="#t_i_SK_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#t_i_SK_letter-B"><b>B</b></a>
 &nbsp; 
</td></tr></table>
<table class="SK-entries-printindex" border="0">
<tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_i_SK_symbol-1">0</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-zero-sort-key">zero sort key</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top">Top</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_i_SK_letter-A">A</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-bbbbbbb-_0028first_0029">bbbbbbb (first)</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top">Top</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-aaa"><b class="b">aaa</b></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top">Top</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_i_SK_letter-B">B</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-aaaaaaa-_0028second_0029">aaaaaaa (second)</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top">Top</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table class="SK-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#t_i_SK_symbol-1"><b>0</b></a>
 &nbsp; 
<br>
<a class="summary-letter-printindex" href="#t_i_SK_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#t_i_SK_letter-B"><b>B</b></a>
 &nbsp; 
</td></tr></table>
</div>
</div>
';

1;
