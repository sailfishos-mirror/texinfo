use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'def'} = {
  'contents' => [
    {
      'contents' => [
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'c--ategory'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 2,
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
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'text' => 'd--effn_name'
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
                      'text' => 'a--rguments...'
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
                'line_nr' => 2,
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
                      'text' => 'd--effn
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
                'line_nr' => 4,
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
            'line_nr' => 2,
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
                      'text' => 'cate--gory'
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
                      'text' => 'de--ffn_name'
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
                      'text' => 'ar--guments'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '    ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'more'
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
                      'text' => 'args'
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
                      'cmdname' => '*',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {}
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
                      'text' => 'even'
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
                      'text' => 'more'
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
                      'text' => 'so'
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
                'line_nr' => 6,
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
                      'text' => 'def--fn
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
                'line_nr' => 9,
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
                      'text' => 'fset'
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
                              'text' => 'i'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 11,
                        'macro' => ''
                      }
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'g'
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
                  'number' => 3
                },
                'original_def_cmdname' => 'deffn'
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'cmde'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 12,
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
                      'extra' => {
                        'def_role' => 'name'
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
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 12,
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
                  'number' => 4
                },
                'original_def_cmdname' => 'deffnx',
                'spaces_before_argument' => ' '
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'log trap'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 13,
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
                        'line_nr' => 13,
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
                  'number' => 5
                },
                'original_def_cmdname' => 'deffnx',
                'spaces_before_argument' => ' '
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'log trap1'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'name',
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 14,
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
                        'line_nr' => 14,
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'log trap2'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'name',
                        'spaces_after_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 15,
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
                        'line_nr' => 15,
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
                      'text' => 'cmde'
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
                              'text' => 'id ule'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'b',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 16,
                        'macro' => ''
                      }
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
                      'text' => 'truc'
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
                      'text' => 'cmde2'
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
                              'text' => 'id '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'i'
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
                                'line_nr' => 17,
                                'macro' => ''
                              }
                            },
                            {
                              'parent' => {},
                              'text' => ' ule'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'b',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 17,
                        'macro' => ''
                      }
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
                      'text' => 'truc'
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
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 18,
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
                  'number' => 10
                },
                'original_def_cmdname' => 'deffnx'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 18,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 19,
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'bidule machin'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 19,
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
                  'number' => 11
                },
                'original_def_cmdname' => 'deffnx'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 19,
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
                          'text' => 'truc'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 20,
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
                  'number' => 12
                },
                'original_def_cmdname' => 'deffnx'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 20,
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
                          'text' => 'truc'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 21,
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
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'text' => 'followed'
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
                      'text' => 'by'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'comment'
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
                  'number' => 13
                },
                'original_def_cmdname' => 'deffnx',
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' comment
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' comment
'
                    ]
                  },
                  'parent' => {}
                }
              ],
              'parent' => {},
              'type' => 'inter_def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'truc'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 23,
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
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'text' => 'after'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'deff'
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
                      'text' => 'item'
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
                  'number' => 14
                },
                'original_def_cmdname' => 'deffnx',
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 23,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' comment
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' comment
'
                    ]
                  },
                  'parent' => {}
                }
              ],
              'parent' => {},
              'type' => 'inter_def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'truc'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 25,
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
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'text' => 'deffnx'
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
                      'text' => 'before'
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
                      'text' => 'end'
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
                      'text' => 'deffn'
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
                  'number' => 15
                },
                'original_def_cmdname' => 'deffnx',
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 25,
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
                      'text' => 'Various deff lines
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
                'line_nr' => 27,
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
            'line_nr' => 11,
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
$result_trees{'def'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[1];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[1];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[1];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'def'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'def'}{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'def'}{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[17]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'def'}{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'def'}{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'def'}{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'extra'}{'index_entry'}{'command'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'extra'}{'index_entry'}{'command'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'extra'}{'index_entry'}{'command'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'extra'}{'index_entry'}{'command'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[7]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[7]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[7]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[7]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[7]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[7]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[7]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[7];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[7]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[7]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[7]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[7]{'extra'}{'index_entry'}{'command'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[7];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[7]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[7]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[7]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[7]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[7]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'extra'}{'index_entry'}{'command'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'args'}[0]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'args'}[0]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'extra'}{'index_entry'}{'command'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'extra'}{'index_entry'}{'command'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[11]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[11]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[11];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[11]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'extra'}{'index_entry'}{'command'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[13]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[13]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[13]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[13];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[13]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'extra'}{'index_entry'}{'command'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0]{'contents'}[2];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[15]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[15]{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[15]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[15];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[15]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[16]{'args'}[0];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[16];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[16]{'parent'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'extra'}{'end_command'} = $result_trees{'def'}{'contents'}[0]{'contents'}[5]{'contents'}[16];
$result_trees{'def'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'def'}{'contents'}[0];
$result_trees{'def'}{'contents'}[0]{'parent'} = $result_trees{'def'};

$result_texis{'def'} = '
@deffn {c--ategory} d--effn_name a--rguments...
d--effn
@end deffn

@deffn cate--gory de--ffn_name ar--guments    more args @* even more so
def--fn
@end deffn

@deffn fset @var{i} a g
@deffnx {cmde} truc {}
@deffnx Command {log trap} {}
@deffnx Command { log trap1} {}  
@deffnx Command {log trap2 } {}
@deffnx cmde @b{id ule} truc
@deffnx cmde2 @b{id @samp{i} ule} truc
@deffnx{} machin
@deffnx{} {bidule machin}
@deffnx{truc} machin
@deffnx {truc} followed by a comment
@c comment
@deffnx {truc} after a deff item
@c comment
@deffnx {truc} deffnx before end deffn
Various deff lines
@end deffn
';


$result_texts{'def'} = '
c--ategory: d--effn_name a--rguments...
d-effn

cate--gory: de--ffn_name ar--guments    more args 
 even more so
def-fn

fset: i a g
cmde: truc 
Command: log trap 
Command: log trap1 
Command: log trap2 
cmde: id ule truc
cmde2: id i ule truc
: machin
: bidule machin
truc: machin
truc: followed by a comment
truc: after a deff item
truc: deffnx before end deffn
Various deff lines
';

$result_errors{'def'} = [
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
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
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 12,
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
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 14,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
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
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 17,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 18,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 19,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 20,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 21,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 23,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 25,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'def'} = {};


$result_indices_sort_strings{'def'} = {
  'fn' => [
    'after',
    'bidule machin',
    'd--effn_name',
    'de--ffn_name',
    'deffnx',
    'followed',
    'i',
    'id i ule',
    'id ule',
    'log trap',
    'log trap1',
    'log trap2',
    'machin',
    'machin',
    'truc'
  ]
};



$result_converted{'plaintext'}->{'def'} = ' -- c--ategory: d--effn_name a--rguments...
     d–effn

 -- cate--gory: de--ffn_name ar--guments more args
          even more so
     def–fn

 -- fset: I a g
 -- cmde: truc
 -- Command: log trap
 -- Command: log trap1
 -- Command: log trap2
 -- cmde: id ule truc
 -- cmde2: id i ule truc
 -- : machin
 -- : bidule machin
 -- truc: machin
 -- truc: followed by a comment
 -- truc: after a deff item
 -- truc: deffnx before end deffn
     Various deff lines
';


$result_converted{'html_text'}->{'def'} = '
<dl class="first-deffn">
<dt class="deffn" id="index-d_002d_002deffn_005fname"><span class="category-def">c&ndash;ategory: </span><span><strong class="def-name">d--effn_name</strong> <var class="def-var-arguments">a&ndash;rguments...</var><a class="copiable-link" href=\'#index-d_002d_002deffn_005fname\'> &para;</a></span></dt>
<dd><p>d&ndash;effn
</p></dd></dl>

<dl class="first-deffn">
<dt class="deffn" id="index-de_002d_002dffn_005fname"><span class="category-def">cate&ndash;gory: </span><span><strong class="def-name">de--ffn_name</strong> <var class="def-var-arguments">ar&ndash;guments    more args <br> even more so</var><a class="copiable-link" href=\'#index-de_002d_002dffn_005fname\'> &para;</a></span></dt>
<dd><p>def&ndash;fn
</p></dd></dl>

<dl class="first-deffn">
<dt class="deffn" id="index-i"><span class="category-def">fset: </span><span><strong class="def-name"><var class="var">i</var></strong> <var class="def-var-arguments">a g</var><a class="copiable-link" href=\'#index-i\'> &para;</a></span></dt>
<dt class="deffnx def-cmd-deffn" id="index-truc"><span class="category-def">cmde: </span><span><strong class="def-name">truc</strong><a class="copiable-link" href=\'#index-truc\'> &para;</a></span></dt>
<dt class="deffnx def-cmd-deffn" id="index-log-trap"><span class="category-def">Command: </span><span><strong class="def-name">log trap</strong><a class="copiable-link" href=\'#index-log-trap\'> &para;</a></span></dt>
<dt class="deffnx def-cmd-deffn" id="index-log-trap1"><span class="category-def">Command: </span><span><strong class="def-name">log trap1</strong><a class="copiable-link" href=\'#index-log-trap1\'> &para;</a></span></dt>
<dt class="deffnx def-cmd-deffn" id="index-log-trap2"><span class="category-def">Command: </span><span><strong class="def-name">log trap2</strong><a class="copiable-link" href=\'#index-log-trap2\'> &para;</a></span></dt>
<dt class="deffnx def-cmd-deffn" id="index-id-ule"><span class="category-def">cmde: </span><span><strong class="def-name"><b class="b">id ule</b></strong> <var class="def-var-arguments">truc</var><a class="copiable-link" href=\'#index-id-ule\'> &para;</a></span></dt>
<dt class="deffnx def-cmd-deffn" id="index-id-i-ule"><span class="category-def">cmde2: </span><span><strong class="def-name"><b class="b">id &lsquo;<samp class="samp">i</samp>&rsquo; ule</b></strong> <var class="def-var-arguments">truc</var><a class="copiable-link" href=\'#index-id-i-ule\'> &para;</a></span></dt>
<dt class="deffnx def-cmd-deffn" id="index-machin"><span class="category-def">: </span><span><strong class="def-name">machin</strong><a class="copiable-link" href=\'#index-machin\'> &para;</a></span></dt>
<dt class="deffnx def-cmd-deffn" id="index-bidule-machin"><span class="category-def">: </span><span><strong class="def-name">bidule machin</strong><a class="copiable-link" href=\'#index-bidule-machin\'> &para;</a></span></dt>
<dt class="deffnx def-cmd-deffn" id="index-machin-1"><span class="category-def">truc: </span><span><strong class="def-name">machin</strong><a class="copiable-link" href=\'#index-machin-1\'> &para;</a></span></dt>
<dt class="deffnx def-cmd-deffn" id="index-followed"><span class="category-def">truc: </span><span><strong class="def-name">followed</strong> <var class="def-var-arguments">by a comment</var><a class="copiable-link" href=\'#index-followed\'> &para;</a></span></dt>
<dt class="deffnx def-cmd-deffn" id="index-after"><span class="category-def">truc: </span><span><strong class="def-name">after</strong> <var class="def-var-arguments">a deff item</var><a class="copiable-link" href=\'#index-after\'> &para;</a></span></dt>
<dt class="deffnx def-cmd-deffn" id="index-deffnx"><span class="category-def">truc: </span><span><strong class="def-name">deffnx</strong> <var class="def-var-arguments">before end deffn</var><a class="copiable-link" href=\'#index-deffnx\'> &para;</a></span></dt>
<dd><p>Various deff lines
</p></dd></dl>
';


$result_converted{'xml'}->{'def'} = '
<deffn spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="1">d--effn_name</indexterm><defcategory bracketed="on">c--ategory</defcategory> <deffunction>d--effn_name</deffunction> <defparam>a--rguments...</defparam></definitionterm>
<definitionitem><para>d&textndash;effn
</para></definitionitem></deffn>

<deffn spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="2">de--ffn_name</indexterm><defcategory>cate--gory</defcategory> <deffunction>de--ffn_name</deffunction> <defparam>ar--guments</defparam>    <defparam>more</defparam> <defparam>args</defparam> <defparam>&linebreak;</defparam> <defparam>even</defparam> <defparam>more</defparam> <defparam>so</defparam></definitionterm>
<definitionitem><para>def&textndash;fn
</para></definitionitem></deffn>

<deffn spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="3"><var>i</var></indexterm><defcategory>fset</defcategory> <deffunction><var>i</var></deffunction> <defparam>a</defparam> <defparam>g</defparam></definitionterm>
<deffnx spaces=" "><definitionterm><indexterm index="fn" number="4">truc</indexterm><defcategory bracketed="on">cmde</defcategory> <deffunction>truc</deffunction> <defparam bracketed="on"></defparam></definitionterm></deffnx>
<deffnx spaces=" "><definitionterm><indexterm index="fn" number="5">log trap</indexterm><defcategory>Command</defcategory> <deffunction bracketed="on">log trap</deffunction> <defparam bracketed="on"></defparam></definitionterm></deffnx>
<deffnx spaces=" "><definitionterm><indexterm index="fn" number="6">log trap1</indexterm><defcategory>Command</defcategory> <deffunction bracketed="on" spaces=" ">log trap1</deffunction> <defparam bracketed="on"></defparam>  </definitionterm></deffnx>
<deffnx spaces=" "><definitionterm><indexterm index="fn" number="7">log trap2</indexterm><defcategory>Command</defcategory> <deffunction bracketed="on">log trap2</deffunction> <defparam bracketed="on"></defparam></definitionterm></deffnx>
<deffnx spaces=" "><definitionterm><indexterm index="fn" number="8"><b>id ule</b></indexterm><defcategory>cmde</defcategory> <deffunction><b>id ule</b></deffunction> <defparam>truc</defparam></definitionterm></deffnx>
<deffnx spaces=" "><definitionterm><indexterm index="fn" number="9"><b>id <samp>i</samp> ule</b></indexterm><defcategory>cmde2</defcategory> <deffunction><b>id <samp>i</samp> ule</b></deffunction> <defparam>truc</defparam></definitionterm></deffnx>
<deffnx><definitionterm><indexterm index="fn" number="10">machin</indexterm><defcategory bracketed="on"></defcategory> <deffunction>machin</deffunction></definitionterm></deffnx>
<deffnx><definitionterm><indexterm index="fn" number="11">bidule machin</indexterm><defcategory bracketed="on"></defcategory> <deffunction bracketed="on">bidule machin</deffunction></definitionterm></deffnx>
<deffnx><definitionterm><indexterm index="fn" number="12">machin</indexterm><defcategory bracketed="on">truc</defcategory> <deffunction>machin</deffunction></definitionterm></deffnx>
<deffnx spaces=" "><definitionterm><indexterm index="fn" number="13">followed</indexterm><defcategory bracketed="on">truc</defcategory> <deffunction>followed</deffunction> <defparam>by</defparam> <defparam>a</defparam> <defparam>comment</defparam></definitionterm></deffnx>
<!-- c comment -->
<deffnx spaces=" "><definitionterm><indexterm index="fn" number="14">after</indexterm><defcategory bracketed="on">truc</defcategory> <deffunction>after</deffunction> <defparam>a</defparam> <defparam>deff</defparam> <defparam>item</defparam></definitionterm></deffnx>
<!-- c comment -->
<deffnx spaces=" "><definitionterm><indexterm index="fn" number="15">deffnx</indexterm><defcategory bracketed="on">truc</defcategory> <deffunction>deffnx</deffunction> <defparam>before</defparam> <defparam>end</defparam> <defparam>deffn</defparam></definitionterm></deffnx>
<definitionitem><para>Various deff lines
</para></definitionitem></deffn>
';


$result_converted{'latex_text'}->{'def'} = '

\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{d{-}{-}effn\\_name \\EmbracOn{}\\textnormal{\\textsl{a--rguments...}}\\EmbracOff{}}& [c--ategory]
\\end{tabularx}

\\index[fn]{d--effn\\_name@\\texttt{d{-}{-}effn\\_name}}%
\\begin{quote}
\\unskip{\\parskip=0pt\\noindent}%
d--effn
\\end{quote}


\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{de{-}{-}ffn\\_name \\EmbracOn{}\\textnormal{\\textsl{ar--guments    more args   even more so}}\\EmbracOff{}}& [cate--gory]
\\end{tabularx}

\\index[fn]{de--ffn\\_name@\\texttt{de{-}{-}ffn\\_name}}%
\\begin{quote}
\\unskip{\\parskip=0pt\\noindent}%
def--fn
\\end{quote}


\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{\\GNUTexinfocommandstyletextvar{i} \\EmbracOn{}\\textnormal{\\textsl{a g}}\\EmbracOff{}}& [fset]
\\end{tabularx}

\\index[fn]{i@\\texttt{\\GNUTexinfocommandstyletextvar{i}}}%

\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{truc \\EmbracOn{}\\textnormal{\\textsl{}}\\EmbracOff{}}& [cmde]
\\end{tabularx}

\\index[fn]{truc@\\texttt{truc}}%

\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{log trap \\EmbracOn{}\\textnormal{\\textsl{}}\\EmbracOff{}}& [Command]
\\end{tabularx}

\\index[fn]{log trap@\\texttt{log trap}}%

\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{log trap1 \\EmbracOn{}\\textnormal{\\textsl{}}\\EmbracOff{}}& [Command]
\\end{tabularx}

\\index[fn]{log trap1@\\texttt{log trap1}}%

\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{log trap2 \\EmbracOn{}\\textnormal{\\textsl{}}\\EmbracOff{}}& [Command]
\\end{tabularx}

\\index[fn]{log trap2@\\texttt{log trap2}}%

\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{\\textbf{id ule} \\EmbracOn{}\\textnormal{\\textsl{truc}}\\EmbracOff{}}& [cmde]
\\end{tabularx}

\\index[fn]{id ule@\\texttt{\\textbf{id ule}}}%

\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{\\textbf{id `\\texttt{i}\'\\ ule} \\EmbracOn{}\\textnormal{\\textsl{truc}}\\EmbracOff{}}& [cmde2]
\\end{tabularx}

\\index[fn]{id i ule@\\texttt{\\textbf{id `\\texttt{i}\'\\ ule}}}%

\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{machin}& []
\\end{tabularx}

\\index[fn]{machin@\\texttt{machin}}%

\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{bidule machin}& []
\\end{tabularx}

\\index[fn]{bidule machin@\\texttt{bidule machin}}%

\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{machin}& [truc]
\\end{tabularx}

\\index[fn]{machin@\\texttt{machin}}%

\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{followed \\EmbracOn{}\\textnormal{\\textsl{by a comment}}\\EmbracOff{}}& [truc]
\\end{tabularx}

\\index[fn]{followed@\\texttt{followed}}%

\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{after \\EmbracOn{}\\textnormal{\\textsl{a deff item}}\\EmbracOff{}}& [truc]
\\end{tabularx}

\\index[fn]{after@\\texttt{after}}%

\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{deffnx \\EmbracOn{}\\textnormal{\\textsl{before end deffn}}\\EmbracOff{}}& [truc]
\\end{tabularx}

\\index[fn]{deffnx@\\texttt{deffnx}}%
\\begin{quote}
\\unskip{\\parskip=0pt\\noindent}%
Various deff lines
\\end{quote}
';


$result_converted{'docbook'}->{'def'} = '
<synopsis><indexterm role="fn"><primary>d--effn_name</primary></indexterm><phrase role="category"><emphasis role="bold">c--ategory</emphasis>:</phrase> <function>d--effn_name</function> <emphasis role="arg">a--rguments...</emphasis></synopsis>
<blockquote><para>d&#8211;effn
</para></blockquote>
<synopsis><indexterm role="fn"><primary>de--ffn_name</primary></indexterm><phrase role="category"><emphasis role="bold">cate--gory</emphasis>:</phrase> <function>de--ffn_name</function> <emphasis role="arg">ar--guments</emphasis>    <emphasis role="arg">more</emphasis> <emphasis role="arg">args</emphasis> <emphasis role="arg">
</emphasis> <emphasis role="arg">even</emphasis> <emphasis role="arg">more</emphasis> <emphasis role="arg">so</emphasis></synopsis>
<blockquote><para>def&#8211;fn
</para></blockquote>
<synopsis><indexterm role="fn"><primary><replaceable>i</replaceable></primary></indexterm><phrase role="category"><emphasis role="bold">fset</emphasis>:</phrase> <function><replaceable>i</replaceable></function> <emphasis role="arg">a</emphasis> <emphasis role="arg">g</emphasis></synopsis>
<synopsis><indexterm role="fn"><primary>truc</primary></indexterm><phrase role="category"><emphasis role="bold">cmde</emphasis>:</phrase> <function>truc</function> <emphasis role="arg"></emphasis></synopsis>
<synopsis><indexterm role="fn"><primary>log trap</primary></indexterm><phrase role="category"><emphasis role="bold">Command</emphasis>:</phrase> <function>log trap</function> <emphasis role="arg"></emphasis></synopsis>
<synopsis><indexterm role="fn"><primary>log trap1</primary></indexterm><phrase role="category"><emphasis role="bold">Command</emphasis>:</phrase> <function>log trap1</function> <emphasis role="arg"></emphasis></synopsis>
<synopsis><indexterm role="fn"><primary>log trap2</primary></indexterm><phrase role="category"><emphasis role="bold">Command</emphasis>:</phrase> <function>log trap2</function> <emphasis role="arg"></emphasis></synopsis>
<synopsis><indexterm role="fn"><primary><emphasis role="bold">id ule</emphasis></primary></indexterm><phrase role="category"><emphasis role="bold">cmde</emphasis>:</phrase> <function><emphasis role="bold">id ule</emphasis></function> <emphasis role="arg">truc</emphasis></synopsis>
<synopsis><indexterm role="fn"><primary><emphasis role="bold">id &#8216;<literal>i</literal>&#8217; ule</emphasis></primary></indexterm><phrase role="category"><emphasis role="bold">cmde2</emphasis>:</phrase> <function><emphasis role="bold">id &#8216;i&#8217; ule</emphasis></function> <emphasis role="arg">truc</emphasis></synopsis>
<synopsis><indexterm role="fn"><primary>machin</primary></indexterm><phrase role="category"><emphasis role="bold"></emphasis>:</phrase> <function>machin</function></synopsis>
<synopsis><indexterm role="fn"><primary>bidule machin</primary></indexterm><phrase role="category"><emphasis role="bold"></emphasis>:</phrase> <function>bidule machin</function></synopsis>
<synopsis><indexterm role="fn"><primary>machin</primary></indexterm><phrase role="category"><emphasis role="bold">truc</emphasis>:</phrase> <function>machin</function></synopsis>
<synopsis><indexterm role="fn"><primary>followed</primary></indexterm><phrase role="category"><emphasis role="bold">truc</emphasis>:</phrase> <function>followed</function> <emphasis role="arg">by</emphasis> <emphasis role="arg">a</emphasis> <emphasis role="arg">comment</emphasis></synopsis>
<!-- comment -->
<synopsis><indexterm role="fn"><primary>after</primary></indexterm><phrase role="category"><emphasis role="bold">truc</emphasis>:</phrase> <function>after</function> <emphasis role="arg">a</emphasis> <emphasis role="arg">deff</emphasis> <emphasis role="arg">item</emphasis></synopsis>
<!-- comment -->
<synopsis><indexterm role="fn"><primary>deffnx</primary></indexterm><phrase role="category"><emphasis role="bold">truc</emphasis>:</phrase> <function>deffnx</function> <emphasis role="arg">before</emphasis> <emphasis role="arg">end</emphasis> <emphasis role="arg">deffn</emphasis></synopsis>
<blockquote><para>Various deff lines
</para></blockquote>';

1;
