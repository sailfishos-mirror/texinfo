use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'wrong_braces_simple'} = {
  'contents' => [
    {
      'contents' => [
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
                      'text' => 'truc'
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
                      'text' => 'machin'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'bidule'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'chose'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'and'
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
                  'number' => 1
                },
                'original_def_cmdname' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
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
                'line_nr' => 2,
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
                      'text' => 'truc'
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
                      'text' => 'machin'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'bidule'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'chose'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'and'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '  ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'after'
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
                  'number' => 2
                },
                'original_def_cmdname' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
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
                'line_nr' => 5,
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
                      'text' => 'truc'
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
                      'text' => 'machin'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'bidule'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'chose'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'and'
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
                        'def_role' => 'arg',
                        'spaces_before_argument' => '
'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 7,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
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
                  'number' => 3
                },
                'original_def_cmdname' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
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
                'line_nr' => 8,
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
            'line_nr' => 7,
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
                      'text' => 'truc'
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
                      'text' => 'machin'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'bidule'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'chose'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'and'
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'and after'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg',
                        'spaces_after_argument' => '
',
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 10,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
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
                  'number' => 4
                },
                'original_def_cmdname' => 'deffn'
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
                'line_nr' => 11,
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
                      'text' => 'a'
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
                      'text' => 'b'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'c'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'd'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'e'
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
                  'number' => 5
                },
                'original_def_cmdname' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 13,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'text' => 'truc'
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
                      'text' => 'machin'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'bidule'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'chose'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'and'
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
              'cmdname' => 'deffnx',
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
                  'index_at_command' => 'deffnx',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deffn',
                  'number' => 6
                },
                'original_def_cmdname' => 'deffnx',
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 14,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'text' => 'truc'
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
                      'text' => 'machin'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'bidule'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'chose'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'and'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '  ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'after'
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
              'cmdname' => 'deffnx',
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
                  'index_at_command' => 'deffnx',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deffn',
                  'number' => 7
                },
                'original_def_cmdname' => 'deffnx',
                'spaces_before_argument' => ' '
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
              'args' => [
                {
                  'contents' => [
                    {
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'text' => 'truc'
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
                      'text' => 'machin'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'bidule'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'chose'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'and'
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
                        'def_role' => 'arg',
                        'spaces_before_argument' => '
'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 16,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
                    }
                  ],
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'deffnx',
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
                  'index_at_command' => 'deffnx',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deffn',
                  'number' => 8
                },
                'original_def_cmdname' => 'deffnx',
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 16,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'text' => 'truc'
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
                      'text' => 'machin'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'bidule'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'chose'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'and'
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'and after'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg',
                        'spaces_after_argument' => '
',
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 17,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
                    }
                  ],
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'deffnx',
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
                  'index_at_command' => 'deffnx',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deffn',
                  'number' => 9
                },
                'original_def_cmdname' => 'deffnx',
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 17,
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
                'line_nr' => 18,
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
            'line_nr' => 13,
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
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[10];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'extra'}{'end_command'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'extra'}{'index_entry'}{'command'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[10];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'extra'}{'index_entry'}{'command'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[4]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[5]{'args'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[5];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[5]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'extra'}{'end_command'} = $result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'contents'}[5];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'wrong_braces_simple'}{'contents'}[0];
$result_trees{'wrong_braces_simple'}{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_simple'};

$result_texis{'wrong_braces_simple'} = '@deffn truc machin bidule chose and 
@end deffn

@deffn truc machin bidule chose and  after
@end deffn

@deffn truc machin bidule chose and {
}@end deffn

@deffn truc machin bidule chose and { and after
}@end deffn

@deffn a b c d e
@deffnx truc machin bidule chose and 
@deffnx truc machin bidule chose and  after
@deffnx truc machin bidule chose and {
}@deffnx truc machin bidule chose and { and after
}@end deffn
';


$result_texts{'wrong_braces_simple'} = 'truc: machin bidule chose and

truc: machin bidule chose and  after

truc: machin bidule chose and 

truc: machin bidule chose and and after

a: b c d e
truc: machin bidule chose and
truc: machin bidule chose and  after
truc: machin bidule chose and 
truc: machin bidule chose and and after
';

$result_errors{'wrong_braces_simple'} = [
  {
    'error_line' => 'misplaced }
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'misplaced }
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'misplaced {
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'misplaced {
',
    'file_name' => '',
    'line_nr' => 10,
    'macro' => '',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 10,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 13,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'misplaced }
',
    'file_name' => '',
    'line_nr' => 14,
    'macro' => '',
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 14,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'misplaced }
',
    'file_name' => '',
    'line_nr' => 15,
    'macro' => '',
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 15,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'misplaced {
',
    'file_name' => '',
    'line_nr' => 16,
    'macro' => '',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 16,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'misplaced {
',
    'file_name' => '',
    'line_nr' => 17,
    'macro' => '',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 17,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'wrong_braces_simple'} = {};


$result_indices_sort_strings{'wrong_braces_simple'} = {
  'fn' => [
    'b',
    'machin',
    'machin',
    'machin',
    'machin',
    'machin',
    'machin',
    'machin',
    'machin'
  ]
};


1;
