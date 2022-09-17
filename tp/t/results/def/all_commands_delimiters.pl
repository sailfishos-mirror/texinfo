use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'all_commands_delimiters'} = {
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'forward--char'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 1,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'nchars'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 1,
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'argument2'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 1,
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
                          'text' => 'argument3'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 1,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '         ',
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
                      'text' => 'arg'
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
                      'text' => 'in'
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
                      'text' => 'brace'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
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
                      'text' => '[',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'something'
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
                              'text' => 'in v--ar'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 2,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
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
                              'text' => 'in, b'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'b',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 2,
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ', comma'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg'
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'a'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'pref'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 2,
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
                      'text' => 'p'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ']',
                      'type' => 'delimiter'
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
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'last'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
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
          'cmdname' => 'defvr',
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
                      'text' => 'Variable'
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
                      'text' => 'fill-column'
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
                          'text' => 'argument1'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 5,
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
                          'text' => 'argument2'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '         ',
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
                      'text' => 'arg'
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
                      'text' => 'in'
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
                      'text' => 'brace'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
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
                      'text' => '[',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'something'
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
                              'text' => 'in v--ar'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 6,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
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
                              'text' => 'in, b'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'b',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 6,
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ', comma'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 6,
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'a'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'pref'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 6,
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
                      'text' => 'p'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ']',
                      'type' => 'delimiter'
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
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'last'
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
                'def_command' => 'defvr',
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
                  'index_at_command' => 'defvr',
                  'index_ignore_chars' => {},
                  'index_name' => 'vr',
                  'index_type_command' => 'defvr',
                  'number' => 1
                },
                'original_def_cmdname' => 'defvr'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
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
                      'text' => 'defvr'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'defvr'
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
            'spaces_before_argument' => ' '
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
          'cmdname' => 'deftypefn',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Library Function'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 9,
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
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'text' => 'int'
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
                      'text' => 'foobar'
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'int'
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
                              'text' => 'foo'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 9,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'float'
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
                              'text' => 'bar'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 9,
                        'macro' => ''
                      }
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
                'def_command' => 'deftypefn',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {},
                  'type' => {}
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
                  'index_at_command' => 'deftypefn',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypefn',
                  'number' => 2
                },
                'original_def_cmdname' => 'deftypefn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
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
                      'text' => 'deftypefn'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypefn'
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
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 9,
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
          'cmdname' => 'deftypefn',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Library Function'
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
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'text' => 'int'
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
                      'text' => 'foobar'
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'int'
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
                              'text' => 'foo'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 12,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'float'
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
                              'text' => 'bar'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 12,
                        'macro' => ''
                      }
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
                      'text' => '         ',
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'arg'
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
                      'text' => 'in'
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'brace'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
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
                          'text' => '[something'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'typearg'
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in v--ar'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 13,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
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
                              'text' => 'in, b'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'b',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 13,
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ', comma'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'typearg'
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
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'a'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'pref'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 13,
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'p'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ']',
                      'type' => 'delimiter'
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
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'ct'
                    },
                    {
                      'cmdname' => '*',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {}
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'last'
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
                'def_command' => 'deftypefn',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {},
                  'type' => {}
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
                  'index_at_command' => 'deftypefn',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypefn',
                  'number' => 3
                },
                'original_def_cmdname' => 'deftypefn'
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
                      'parent' => {},
                      'text' => 'deftypefn'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypefn'
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
          'cmdname' => 'deftypefn',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Library Function'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 16,
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
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'text' => 'int'
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
                      'text' => 'foobug'
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
                          'text' => '[something'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 16,
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
                'def_command' => 'deftypefn',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {},
                  'type' => {}
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
                  'index_at_command' => 'deftypefn',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypefn',
                  'number' => 4
                },
                'original_def_cmdname' => 'deftypefn'
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
                      'parent' => {},
                      'text' => 'deftypefn'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypefn'
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
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 16,
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
          'cmdname' => 'deftypefn',
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
                      'text' => 'stacks'
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
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'text' => 'private'
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
                      'text' => 'push'
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 's'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 19,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => ':in'
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
                      'text' => 'out'
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'stack;'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '                  ',
                      'type' => 'spaces'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'n'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 20,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => ':in'
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
                      'text' => 'integer'
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
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => ';'
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
                      'text' => ';barg'
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'aarg;'
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
                      'text' => ';'
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'end'
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
                'def_command' => 'deftypefn',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {},
                  'type' => {}
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
                  'index_at_command' => 'deftypefn',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypefn',
                  'number' => 5
                },
                'original_def_cmdname' => 'deftypefn'
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
                      'parent' => {},
                      'text' => 'deftypefn'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypefn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
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
            'line_nr' => 19,
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
          'cmdname' => 'deftypevr',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Global Flag'
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
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'text' => 'int'
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
                      'text' => 'enable'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '         ',
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
                      'text' => 'arg'
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
                      'text' => 'in'
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
                      'text' => 'brace'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
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
                      'text' => '[',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'something'
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
                              'text' => 'in v--ar'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 24,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
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
                              'text' => 'in, b'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'b',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 24,
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ', comma'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 24,
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'a'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'pref'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 24,
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
                      'text' => 'p'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ']',
                      'type' => 'delimiter'
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
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'last'
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
                'def_command' => 'deftypevr',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {},
                  'type' => {}
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
                  'index_at_command' => 'deftypevr',
                  'index_ignore_chars' => {},
                  'index_name' => 'vr',
                  'index_type_command' => 'deftypevr',
                  'number' => 2
                },
                'original_def_cmdname' => 'deftypevr'
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'deftypevr'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypevr'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 25,
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
            'line_nr' => 23,
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
          'cmdname' => 'deftp',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Data type'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 27,
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
                      'text' => 'pair'
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'car'
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
                      'text' => 'cdr'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '         ',
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'arg'
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
                      'text' => 'in'
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'brace'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
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
                      'text' => '[',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'something'
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
                              'text' => 'in v--ar'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 28,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
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
                              'text' => 'in, b'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'b',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 28,
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ', comma'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 28,
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'a'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'pref'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 28,
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'p'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ']',
                      'type' => 'delimiter'
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
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'last'
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
                'def_command' => 'deftp',
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
                  'index_at_command' => 'deftp',
                  'index_ignore_chars' => {},
                  'index_name' => 'tp',
                  'index_type_command' => 'deftp',
                  'number' => 1
                },
                'original_def_cmdname' => 'deftp'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 27,
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
                      'text' => 'deftp'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftp'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 29,
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
            'line_nr' => 27,
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
          'cmdname' => 'defcv',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Class Option'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
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
                        'def_role' => 'class'
                      },
                      'parent' => {},
                      'text' => 'Window'
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
                      'text' => 'border-pattern'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '         ',
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
                      'text' => 'arg'
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
                      'text' => 'in'
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
                      'text' => 'brace'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
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
                      'text' => '[',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'something'
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
                              'text' => 'in v--ar'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 32,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
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
                              'text' => 'in, b'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'b',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 32,
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ', comma'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 32,
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'a'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'pref'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 32,
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
                      'text' => 'p'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ']',
                      'type' => 'delimiter'
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
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'last'
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
                'def_command' => 'defcv',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
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
                  'index_at_command' => 'defcv',
                  'index_ignore_chars' => {},
                  'index_name' => 'vr',
                  'index_type_command' => 'defcv',
                  'number' => 3
                },
                'original_def_cmdname' => 'defcv'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 31,
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
                      'text' => 'defcv'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'defcv'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 33,
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
            'line_nr' => 31,
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
          'cmdname' => 'deftypecv',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Class Option2'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 35,
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
                        'def_role' => 'class'
                      },
                      'text' => 'Window'
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
                              'text' => 'int'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 35,
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
                        'def_role' => 'name'
                      },
                      'text' => 'border-pattern'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '         ',
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
                      'text' => 'arg'
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
                      'text' => 'in'
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
                      'text' => 'brace'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
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
                      'text' => '[',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'something'
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
                              'text' => 'in v--ar'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 36,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
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
                              'text' => 'in, b'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'b',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 36,
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ', comma'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 36,
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'a'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'pref'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 36,
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
                      'text' => 'p'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ']',
                      'type' => 'delimiter'
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
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'last'
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
                'def_command' => 'deftypecv',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' of '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' of '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypecv',
                  'index_ignore_chars' => {},
                  'index_name' => 'vr',
                  'index_type_command' => 'deftypecv',
                  'number' => 4
                },
                'original_def_cmdname' => 'deftypecv'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 35,
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
                      'text' => 'deftypecv'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypecv'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 37,
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
            'line_nr' => 35,
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
          'cmdname' => 'defop',
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
                      'text' => 'Operation'
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
                        'def_role' => 'class'
                      },
                      'text' => 'windows'
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
                      'text' => 'expose'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '         ',
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
                      'text' => 'arg'
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
                      'text' => 'in'
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
                      'text' => 'brace'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
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
                      'text' => '[',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'something'
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
                              'text' => 'in v--ar'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 40,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
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
                              'text' => 'in, b'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'b',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 40,
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ', comma'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 40,
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'a'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'pref'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 40,
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
                      'text' => 'p'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ']',
                      'type' => 'delimiter'
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
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'last'
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
                'def_command' => 'defop',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'defop',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'defop',
                  'number' => 6
                },
                'original_def_cmdname' => 'defop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 39,
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
                      'text' => 'defop'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'defop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 41,
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
            'line_nr' => 39,
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
          'cmdname' => 'deftypeop',
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
                      'text' => 'Operation2'
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
                        'def_role' => 'class'
                      },
                      'text' => 'W,indow'
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
                              'text' => 'int'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 43,
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
                        'def_role' => 'name'
                      },
                      'text' => 'expose'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '         ',
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'arg'
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
                      'text' => 'in'
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'brace'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
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
                      'text' => '[',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'something'
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
                              'text' => 'in v--ar'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 44,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
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
                              'text' => 'in, b'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'b',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 44,
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ', comma'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 44,
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
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'a'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'pref'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 44,
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'p'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ']',
                      'type' => 'delimiter'
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
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'last'
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
                'def_command' => 'deftypeop',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypeop',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypeop',
                  'number' => 7
                },
                'original_def_cmdname' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 43,
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
                      'text' => 'deftypeop'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
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
            'line_nr' => 43,
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
          'cmdname' => 'deftypeop',
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
                      'text' => 'Operation5'
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
                        'def_role' => 'class'
                      },
                      'text' => 'Window'
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
                              'text' => 'int'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 47,
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
                        'def_role' => 'name'
                      },
                      'text' => 'expose'
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'type'
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
                      'text' => 'arg'
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
                'def_command' => 'deftypeop',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypeop',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypeop',
                  'number' => 8
                },
                'original_def_cmdname' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 47,
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
                      'text' => 'deftypeop'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 48,
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
            'line_nr' => 47,
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
          'cmdname' => 'deftypeop',
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
                      'text' => 'Operation3'
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
                          'text' => 'W,indow'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'class'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 50,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'int'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 50,
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'e,xpose'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 50,
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'type'
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
                      'text' => 'arg'
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
                'def_command' => 'deftypeop',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypeop',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypeop',
                  'number' => 9
                },
                'original_def_cmdname' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 50,
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
                      'text' => 'deftypeop'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 51,
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
            'line_nr' => 50,
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
          'cmdname' => 'deftypeop',
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
                      'text' => 'Operation4'
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
                          'text' => ',Window'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'class'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 53,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'int'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 53,
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ',expose'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 53,
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'type'
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
                      'text' => 'arg'
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
                'def_command' => 'deftypeop',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypeop',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypeop',
                  'number' => 10
                },
                'original_def_cmdname' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 53,
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
                      'text' => 'deftypeop'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 54,
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
            'line_nr' => 53,
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
          'cmdname' => 'deftypeop',
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
                      'text' => 'Operation6'
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
                        'def_role' => 'class'
                      },
                      'text' => 'W,indow'
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
                              'text' => 'int'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 56,
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
                        'def_role' => 'name'
                      },
                      'text' => 'e,xpose'
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'type'
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
                      'text' => 'arg'
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
                'def_command' => 'deftypeop',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypeop',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypeop',
                  'number' => 11
                },
                'original_def_cmdname' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 56,
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
                      'text' => 'deftypeop'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 57,
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
            'line_nr' => 56,
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
          'cmdname' => 'deftypeop',
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
                      'text' => 'Operation7'
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
                        'def_role' => 'class'
                      },
                      'text' => ',Window'
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
                              'text' => 'int'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 59,
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
                        'def_role' => 'name'
                      },
                      'text' => ',expose'
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'type'
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
                      'text' => 'arg'
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
                'def_command' => 'deftypeop',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypeop',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypeop',
                  'number' => 12
                },
                'original_def_cmdname' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 59,
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
                      'text' => 'deftypeop'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 60,
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
            'line_nr' => 59,
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
          'cmdname' => 'deftypeop',
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
                      'text' => 'Operation13'
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
                          'text' => 'W)indow'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'class'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 62,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'int'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 62,
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'e)xpose'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 62,
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'type'
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
                      'text' => 'arg'
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
                'def_command' => 'deftypeop',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypeop',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypeop',
                  'number' => 13
                },
                'original_def_cmdname' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 62,
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
                      'text' => 'deftypeop'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 63,
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
            'line_nr' => 62,
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
          'cmdname' => 'deftypeop',
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
                      'text' => 'Operation14'
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
                          'text' => ')Window'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'class'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 65,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'int'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 65,
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ')expose'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 65,
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'type'
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
                      'text' => 'arg'
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
                'def_command' => 'deftypeop',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypeop',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypeop',
                  'number' => 14
                },
                'original_def_cmdname' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 65,
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
                      'text' => 'deftypeop'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 66,
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
            'line_nr' => 65,
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
          'cmdname' => 'deftypeop',
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
                      'text' => 'Operation16'
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
                        'def_role' => 'class'
                      },
                      'text' => 'W)indow'
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
                              'text' => 'int'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 68,
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
                        'def_role' => 'name'
                      },
                      'text' => 'e)xpose'
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'type'
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
                      'text' => 'arg'
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
                'def_command' => 'deftypeop',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypeop',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypeop',
                  'number' => 15
                },
                'original_def_cmdname' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 68,
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
                      'text' => 'deftypeop'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 69,
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
            'line_nr' => 68,
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
          'cmdname' => 'deftypeop',
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
                      'text' => 'Operation17'
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
                        'def_role' => 'class'
                      },
                      'text' => ')Window'
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
                              'text' => 'int'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 71,
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
                        'def_role' => 'name'
                      },
                      'text' => ')expose'
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'type'
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
                      'text' => 'arg'
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
                'def_command' => 'deftypeop',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypeop',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypeop',
                  'number' => 16
                },
                'original_def_cmdname' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 71,
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
                      'text' => 'deftypeop'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 72,
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
            'line_nr' => 71,
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
          'cmdname' => 'deftypeop',
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
                      'text' => 'Operation18'
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
                          'text' => 'W;indow'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'class'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 74,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'int'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 74,
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'e;xpose'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 74,
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'type'
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
                      'text' => 'arg'
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
                'def_command' => 'deftypeop',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypeop',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypeop',
                  'number' => 17
                },
                'original_def_cmdname' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 74,
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
                      'text' => 'deftypeop'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 75,
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
            'line_nr' => 74,
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
          'cmdname' => 'deftypeop',
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
                      'text' => 'Operation19'
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
                          'text' => ';Window'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'class'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 77,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'int'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 77,
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ';expose'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 77,
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'type'
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
                      'text' => 'arg'
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
                'def_command' => 'deftypeop',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypeop',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypeop',
                  'number' => 18
                },
                'original_def_cmdname' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 77,
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
                      'text' => 'deftypeop'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 78,
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
            'line_nr' => 77,
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
          'cmdname' => 'deftypeop',
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
                      'text' => 'Operation20'
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
                        'def_role' => 'class'
                      },
                      'text' => 'W;indow'
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
                              'text' => 'int'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 80,
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
                        'def_role' => 'name'
                      },
                      'text' => 'e;xpose'
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'type'
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
                      'text' => 'arg'
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
                'def_command' => 'deftypeop',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypeop',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypeop',
                  'number' => 19
                },
                'original_def_cmdname' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 80,
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
                      'text' => 'deftypeop'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 81,
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
            'line_nr' => 80,
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
          'cmdname' => 'deftypeop',
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
                      'text' => 'Operation21'
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
                        'def_role' => 'class'
                      },
                      'text' => ';Window'
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
                              'text' => 'int'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 83,
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
                        'def_role' => 'name'
                      },
                      'text' => ';expose'
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
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'type'
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
                      'text' => 'arg'
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
                'def_command' => 'deftypeop',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypeop',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypeop',
                  'number' => 20
                },
                'original_def_cmdname' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 83,
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
                      'text' => 'deftypeop'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 84,
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
            'line_nr' => 83,
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
          'cmdname' => 'deftypeop',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Command'
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'com'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'code',
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 86,
                            'macro' => ''
                          }
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Window'
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'int'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'code',
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 86,
                            'macro' => ''
                          }
                        }
                      ],
                      'extra' => {
                        'def_role' => 'class'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 86,
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
                          'text' => 'expose'
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'exp'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'var',
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 86,
                            'macro' => ''
                          }
                        }
                      ],
                      'extra' => {
                        'def_role' => 'type'
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
                        'def_role' => 'name'
                      },
                      'text' => 'name'
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
                'def_command' => 'deftypeop',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypeop',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypeop',
                  'number' => 21
                },
                'original_def_cmdname' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 86,
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
                      'text' => 'deftypeop'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 87,
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
            'line_nr' => 86,
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
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'text' => 'apply'
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
                      'text' => 'function'
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
                      'text' => '&rest'
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
                      'text' => 'arguments'
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
                  'number' => 22
                },
                'original_def_cmdname' => 'defun'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 89,
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'defun'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 90,
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
            'line_nr' => 89,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 92,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 92,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A3'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 92,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A4'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 92,
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
                  'number' => 23
                },
                'original_def_cmdname' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 92,
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 93,
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
            'line_nr' => 92,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 95,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 95,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A3'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 95,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A4'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 95,
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
                  'number' => 24
                },
                'original_def_cmdname' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 95,
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 96,
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
            'line_nr' => 95,
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
          'cmdname' => 'defvr',
          'contents' => [
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
                              'text' => 'A1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 98,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 98,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A3'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 98,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A4'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 98,
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
                'def_command' => 'defvr',
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
                  'index_at_command' => 'defvr',
                  'index_ignore_chars' => {},
                  'index_name' => 'vr',
                  'index_type_command' => 'defvr',
                  'number' => 5
                },
                'original_def_cmdname' => 'defvr'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 98,
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
                      'text' => 'defvr'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'defvr'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 99,
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
            'line_nr' => 98,
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
          'cmdname' => 'defvr',
          'contents' => [
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
                              'text' => 'A1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 101,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 101,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A3'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 101,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A4'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 101,
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
                'def_command' => 'defvr',
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
                  'index_at_command' => 'defvr',
                  'index_ignore_chars' => {},
                  'index_name' => 'vr',
                  'index_type_command' => 'defvr',
                  'number' => 6
                },
                'original_def_cmdname' => 'defvr'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 101,
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
                      'text' => 'defvr'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'defvr'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 102,
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
            'line_nr' => 101,
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
          'cmdname' => 'deftypefn',
          'contents' => [
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
                              'text' => 'A1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 104,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 104,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A3'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 104,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A4'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 104,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A5'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 104,
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
                'def_command' => 'deftypefn',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {},
                  'type' => {}
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
                  'index_at_command' => 'deftypefn',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypefn',
                  'number' => 25
                },
                'original_def_cmdname' => 'deftypefn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 104,
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
                      'text' => 'deftypefn'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypefn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 105,
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
            'line_nr' => 104,
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
          'cmdname' => 'deftypefn',
          'contents' => [
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
                              'text' => 'A1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 107,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 107,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A3'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 107,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A4'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 107,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A5'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 107,
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
                'def_command' => 'deftypefn',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {},
                  'type' => {}
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
                  'index_at_command' => 'deftypefn',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypefn',
                  'number' => 26
                },
                'original_def_cmdname' => 'deftypefn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 107,
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
                      'text' => 'deftypefn'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypefn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 108,
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
            'line_nr' => 107,
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
          'cmdname' => 'deftypevr',
          'contents' => [
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
                              'text' => 'A1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 110,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 110,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A3'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 110,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A4'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 110,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A5'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 110,
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
                'def_command' => 'deftypevr',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {},
                  'type' => {}
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
                  'index_at_command' => 'deftypevr',
                  'index_ignore_chars' => {},
                  'index_name' => 'vr',
                  'index_type_command' => 'deftypevr',
                  'number' => 7
                },
                'original_def_cmdname' => 'deftypevr'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 110,
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
                      'text' => 'deftypevr'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypevr'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 111,
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
            'line_nr' => 110,
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
          'cmdname' => 'deftypevr',
          'contents' => [
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
                              'text' => 'A1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 113,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 't',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 113,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A3'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 113,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A4'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 113,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A5'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 113,
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
                'def_command' => 'deftypevr',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {},
                  'type' => {}
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
                  'index_at_command' => 'deftypevr',
                  'index_ignore_chars' => {},
                  'index_name' => 'vr',
                  'index_type_command' => 'deftypevr',
                  'number' => 8
                },
                'original_def_cmdname' => 'deftypevr'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 113,
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
                      'text' => 'deftypevr'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypevr'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 114,
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
            'line_nr' => 113,
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
          'cmdname' => 'deftp',
          'contents' => [
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
                              'text' => 'A1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 116,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 116,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A3'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 116,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A4'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 116,
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
                'def_command' => 'deftp',
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
                  'index_at_command' => 'deftp',
                  'index_ignore_chars' => {},
                  'index_name' => 'tp',
                  'index_type_command' => 'deftp',
                  'number' => 2
                },
                'original_def_cmdname' => 'deftp'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 116,
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
                      'text' => 'deftp'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftp'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 117,
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
            'line_nr' => 116,
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
          'cmdname' => 'deftp',
          'contents' => [
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
                              'text' => 'A1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 119,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 119,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A3'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 119,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A4'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 119,
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
                'def_command' => 'deftp',
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
                  'index_at_command' => 'deftp',
                  'index_ignore_chars' => {},
                  'index_name' => 'tp',
                  'index_type_command' => 'deftp',
                  'number' => 3
                },
                'original_def_cmdname' => 'deftp'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 119,
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
                      'text' => 'deftp'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftp'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 120,
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
            'line_nr' => 119,
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
          'cmdname' => 'defcv',
          'contents' => [
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
                              'text' => 'A1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 122,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'class'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 122,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A3'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 122,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A4'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 122,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A5'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 122,
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
                'def_command' => 'defcv',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
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
                  'index_at_command' => 'defcv',
                  'index_ignore_chars' => {},
                  'index_name' => 'vr',
                  'index_type_command' => 'defcv',
                  'number' => 9
                },
                'original_def_cmdname' => 'defcv'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 122,
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
                      'text' => 'defcv'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'defcv'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 123,
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
            'line_nr' => 122,
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
          'cmdname' => 'deftp',
          'contents' => [
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
                              'text' => 'A1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 125,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 125,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A3'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 125,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A4'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 125,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A5'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 125,
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
                'def_command' => 'deftp',
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
                  'index_at_command' => 'deftp',
                  'index_ignore_chars' => {},
                  'index_name' => 'tp',
                  'index_type_command' => 'deftp',
                  'number' => 4
                },
                'original_def_cmdname' => 'deftp'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 125,
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
                      'text' => 'deftp'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftp'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 126,
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
            'line_nr' => 125,
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
          'cmdname' => 'deftypecv',
          'contents' => [
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
                              'text' => 'A1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 128,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'class'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 128,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A3'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 128,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A4'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 128,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A5'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 128,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A6'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 128,
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
                'def_command' => 'deftypecv',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' of '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' of '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypecv',
                  'index_ignore_chars' => {},
                  'index_name' => 'vr',
                  'index_type_command' => 'deftypecv',
                  'number' => 10
                },
                'original_def_cmdname' => 'deftypecv'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 128,
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
                      'text' => 'deftypecv'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypecv'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 129,
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
            'line_nr' => 128,
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
          'cmdname' => 'deftypecv',
          'contents' => [
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
                              'text' => 'A1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 131,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'class'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 131,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A3'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'option',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 131,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A4'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 131,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A5'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 131,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A6'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 131,
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
                'def_command' => 'deftypecv',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' of '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' of '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypecv',
                  'index_ignore_chars' => {},
                  'index_name' => 'vr',
                  'index_type_command' => 'deftypecv',
                  'number' => 11
                },
                'original_def_cmdname' => 'deftypecv'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 131,
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
                      'text' => 'deftypecv'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypecv'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 132,
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
            'line_nr' => 131,
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
          'cmdname' => 'defop',
          'contents' => [
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
                              'text' => 'A1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 134,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'class'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 134,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A3'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 134,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A4'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 134,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A5'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 134,
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
                'def_command' => 'defop',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'defop',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'defop',
                  'number' => 27
                },
                'original_def_cmdname' => 'defop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 134,
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
                      'text' => 'defop'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'defop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 135,
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
            'line_nr' => 134,
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
          'cmdname' => 'defop',
          'contents' => [
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
                              'text' => 'A1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 137,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'class'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 137,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A3'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 137,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A4'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 137,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A5'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 137,
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
                'def_command' => 'defop',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'defop',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'defop',
                  'number' => 28
                },
                'original_def_cmdname' => 'defop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 137,
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
                      'text' => 'defop'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'defop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 138,
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
            'line_nr' => 137,
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
          'cmdname' => 'deftypeop',
          'contents' => [
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
                              'text' => 'A1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 140,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'class'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 140,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A3'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 140,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A4'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 140,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A5'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 140,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A6'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 140,
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
                'def_command' => 'deftypeop',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypeop',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypeop',
                  'number' => 29
                },
                'original_def_cmdname' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 140,
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
                      'text' => 'deftypeop'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 141,
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
            'line_nr' => 140,
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
          'cmdname' => 'deftypeop',
          'contents' => [
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
                              'text' => 'A1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 143,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'class'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 143,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A3'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 143,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A4'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 143,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A5'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 143,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A6'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 143,
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
                'def_command' => 'deftypeop',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypeop',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypeop',
                  'number' => 30
                },
                'original_def_cmdname' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 143,
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
                      'text' => 'deftypeop'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypeop'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 144,
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
            'line_nr' => 143,
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
          'cmdname' => 'deftypefn',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'code then var'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 146,
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
                          'text' => 'ret_type'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 146,
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
                          'text' => 'fun_name'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 146,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 146,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 146,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A3'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 146,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A4'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 146,
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
                'def_command' => 'deftypefn',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {},
                  'type' => {}
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
                  'index_at_command' => 'deftypefn',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypefn',
                  'number' => 31
                },
                'original_def_cmdname' => 'deftypefn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 146,
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
                      'text' => 'deftypefn'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypefn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 147,
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
            'line_nr' => 146,
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
          'cmdname' => 'deftypefn',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'var then code'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 149,
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
                          'text' => 'ret_type1'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 149,
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
                          'text' => 'fun_name1'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 149,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 149,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 149,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A3'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 149,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'A4'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 149,
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
                'def_command' => 'deftypefn',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {},
                  'type' => {}
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
                  'index_at_command' => 'deftypefn',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypefn',
                  'number' => 32
                },
                'original_def_cmdname' => 'deftypefn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 149,
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
                      'text' => 'deftypefn'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypefn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 150,
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
            'line_nr' => 149,
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
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[17]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[18]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[19]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[20]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[21]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[21]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[21]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[21];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[21]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[22]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[23]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[24]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[24]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[24]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[24];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[24]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[25]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[26]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[26];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[26]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[27]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[28]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[29]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[29]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[29]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[29];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[29]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[30]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[31]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[32]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[33]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[34]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[35]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[36]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[17]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[18]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[19]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[19]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[19]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[19];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[19]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[20]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[21]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[22]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[22]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[22]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[22];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[22]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[23]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[24]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[24];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[24]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[25]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[26]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[27]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[27]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[27]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[27];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[27]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[28]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[29]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[30]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[31]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[32]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[33]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[34]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[9];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[14];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[9];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[14];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[17]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[18]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[19]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[20]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[21]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[22]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[23]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[24]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[25]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[25];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[25]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[26]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[27]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[27]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[27]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[27];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[27]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[28]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[29]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[30]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[30]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[30]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[30];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[30]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[31]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[32]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[32];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[32]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[33]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[34]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[35]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[35]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[35]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[35];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[35]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[36]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[37]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[38]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[39]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[40]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[41]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[42]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[43]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[44]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[45]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[46]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[7]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[7];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[14];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[17]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[18]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[19]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[20]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[21]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[22]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[23]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[24]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[25]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[26]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[27]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[28]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[29]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[17]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[17]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[17]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[17];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[17]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[18]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[19]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[20]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[20]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[20]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[20];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[20]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[21]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[22]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[22];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[22]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[23]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[24]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[25]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[25]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[25]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[25];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[25]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[26]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[27]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[28]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[29]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[30]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[31]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[32]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[17]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[18]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[19]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[19]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[19]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[19];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[19]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[20]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[21]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[22]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[22]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[22]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[22];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[22]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[23]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[24]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[24];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[24]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[25]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[26]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[27]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[27]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[27]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[27];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[27]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[28]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[29]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[30]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[31]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[32]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[33]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[34]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[17]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[17]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[17]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[17];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[17]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[18]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[19]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[20]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[20]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[20]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[20];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[20]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[21]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[22]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[22];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[22]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[23]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[24]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[25]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[25]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[25]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[25];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[25]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[26]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[27]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[28]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[29]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[30]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[31]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[32]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[16]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[17]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[17]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[18]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[19]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[19]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[19]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[19];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[19]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[20]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[21]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[22]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[22]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[22]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[22];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[22]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[23]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[24]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[24];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[24]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[25]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[26]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[27]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[27]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[27]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[27];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[27]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[28]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[29]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[30]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[31]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[32]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[33]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[34]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[18]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[19]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[17]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[17]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[17]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[17];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[17]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[18]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[19]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[20]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[20]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[20]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[20];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[20]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[21]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[22]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[22];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[22]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[23]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[24]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[25]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[25]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[25]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[25];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[25]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[26]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[27]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[28]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[29]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[30]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[31]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[32]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[20]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[21]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[17]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[18]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[19]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[19]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[19]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[19];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[19]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[20]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[21]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[22]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[22]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[22]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[22];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[22]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[23]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[24]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[24];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[24]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[25]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[26]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[27]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[27]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[27]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[27];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[27]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[28]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[29]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[30]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[31]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[32]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[33]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[34]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[22]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[23]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[24]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[25]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[26]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[27]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[28]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[29]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[30]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[31]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[32]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[33]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[34]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[35]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[36]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[37]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[38]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[39]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[40]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[41]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[42]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[43]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[44]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[45]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[46]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[47]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[48]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[49]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[50]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[51]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[52]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[53]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[54]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[55]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[56]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[57]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[58]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[59]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[60]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[61]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[62]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[63]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[64]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[65]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[66]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[67]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[68]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[69]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[70]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[71]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[72]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[73]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[74]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[75]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[76]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[77]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[10];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[78]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[79]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[10];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[80]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[81]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[82]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[83]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[84]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[85]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[10];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[86]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[87]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[10];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[88]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[89]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[10];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[12]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[12];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[90]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[91]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[10];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[12]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[12];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[1]{'args'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[1];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'contents'}[1]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'contents'}[92]{'parent'} = $result_trees{'all_commands_delimiters'}{'contents'}[0];
$result_trees{'all_commands_delimiters'}{'contents'}[0]{'parent'} = $result_trees{'all_commands_delimiters'};

$result_texis{'all_commands_delimiters'} = '@deffn Command @var{forward--char} @var{nchars} {argument2} {argument3}         (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end deffn

@defvr Variable fill-column {argument1} {argument2}         (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end defvr

@deftypefn {Library Function} int foobar (int @var{foo}, float @var{bar})
@end deftypefn

@deftypefn {Library Function} int foobar (int @var{foo}, float @var{bar})         (arg in brace, {[something} @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) ct@*@* last
@end deftypefn

@deftypefn {Library Function} int foobug {[something}
@end deftypefn

@deftypefn stacks private push (@var{s}:in out stack;                  @var{n}:in integer) ; ;barg aarg; ; end
@end deftypefn

@deftypevr {Global Flag} int enable         (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end deftypevr

@deftp {Data type} pair car cdr         (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end deftp

@defcv {Class Option} Window border-pattern         (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end defcv

@deftypecv {Class Option2} Window @code{int} border-pattern         (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end deftypecv

@defop Operation windows expose         (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end defop

@deftypeop Operation2 W,indow @code{int} expose         (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end deftypeop

@deftypeop Operation5 Window @code{int} expose type arg
@end deftypeop

@deftypeop Operation3 {W,indow} @code{int} {e,xpose} type arg
@end deftypeop

@deftypeop Operation4 {,Window} @code{int} {,expose} type arg
@end deftypeop

@deftypeop Operation6 W,indow @code{int} e,xpose type arg
@end deftypeop

@deftypeop Operation7 ,Window @code{int} ,expose type arg
@end deftypeop

@deftypeop Operation13 {W)indow} @code{int} {e)xpose} type arg
@end deftypeop

@deftypeop Operation14 {)Window} @code{int} {)expose} type arg
@end deftypeop

@deftypeop Operation16 W)indow @code{int} e)xpose type arg
@end deftypeop

@deftypeop Operation17 )Window @code{int} )expose type arg
@end deftypeop

@deftypeop Operation18 {W;indow} @code{int} {e;xpose} type arg
@end deftypeop

@deftypeop Operation19 {;Window} @code{int} {;expose} type arg
@end deftypeop

@deftypeop Operation20 W;indow @code{int} e;xpose type arg
@end deftypeop

@deftypeop Operation21 ;Window @code{int} ;expose type arg
@end deftypeop

@deftypeop Command@code{com} {Window@code{int}} expose@var{exp} name
@end deftypeop

@defun apply function &rest arguments
@end defun

@deffn @var{A1} @var{A2} @var{A3} @var{A4}
@end deffn

@deffn @code{A1} @code{A2} @code{A3} @code{A4}
@end deffn

@defvr @var{A1} @var{A2} @var{A3} @var{A4}
@end defvr

@defvr @code{A1} @code{A2} @code{A3} @code{A4}
@end defvr

@deftypefn @var{A1} @var{A2} @var{A3} @var{A4} @var{A5}
@end deftypefn

@deftypefn @code{A1} @code{A2} @code{A3} @code{A4} @code{A5}
@end deftypefn

@deftypevr @var{A1} @var{A2} @var{A3} @var{A4} @var{A5}
@end deftypevr

@deftypevr @code{A1} @t{A2} @code{A3} @code{A4} @code{A5}
@end deftypevr

@deftp @var{A1} @var{A2} @var{A3} @var{A4}
@end deftp

@deftp @code{A1} @code{A2} @code{A3} @code{A4}
@end deftp

@defcv @var{A1} @var{A2} @var{A3} @var{A4} @var{A5}
@end defcv

@deftp @code{A1} @code{A2} @code{A3} @code{A4} @code{A5}
@end deftp

@deftypecv @var{A1} @var{A2} @var{A3} @var{A4} @var{A5} @var{A6}
@end deftypecv

@deftypecv @code{A1} @code{A2} @option{A3} @code{A4} @code{A5} @code{A6}
@end deftypecv

@defop @var{A1} @var{A2} @var{A3} @var{A4} @var{A5}
@end defop

@defop @code{A1} @code{A2} @code{A3} @code{A4} @code{A5}
@end defop

@deftypeop @var{A1} @var{A2} @var{A3} @var{A4} @var{A5} @var{A6}
@end deftypeop

@deftypeop @code{A1} @code{A2} @code{A3} @code{A4} @code{A5} @code{A6}
@end deftypeop

@deftypefn {code then var} {ret_type} {fun_name} @code{A1} @var{A2} @code{A3} @var{A4}
@end deftypefn

@deftypefn {var then code} {ret_type1} {fun_name1} @var{A1} @code{A2} @var{A3} @code{A4}
@end deftypefn
';


$result_texts{'all_commands_delimiters'} = 'Command: forward--char nchars argument2 argument3         (arg in brace, [something in v--ar, in, b , comma apref p]) last

Variable: fill-column argument1 argument2         (arg in brace, [something in v--ar, in, b , comma apref p]) last

Library Function: int foobar (int foo, float bar)

Library Function: int foobar (int foo, float bar)         (arg in brace, [something in v--ar, in, b , comma apref p]) ct

 last

Library Function: int foobug [something

stacks: private push (s:in out stack;                  n:in integer) ; ;barg aarg; ; end

Global Flag: int enable (arg in brace, [something in v--ar, in, b , comma apref p]) last

Data type: pair car cdr         (arg in brace, [something in v--ar, in, b , comma apref p]) last

Class Option of Window: border-pattern (arg in brace, [something in v--ar, in, b , comma apref p]) last

Class Option2 of Window: int border-pattern (arg in brace, [something in v--ar, in, b , comma apref p]) last

Operation on windows: expose (arg in brace, [something in v--ar, in, b , comma apref p]) last

Operation2 on W,indow: int expose (arg in brace, [something in v--ar, in, b , comma apref p]) last

Operation5 on Window: int expose type arg

Operation3 on W,indow: int e,xpose type arg

Operation4 on ,Window: int ,expose type arg

Operation6 on W,indow: int e,xpose type arg

Operation7 on ,Window: int ,expose type arg

Operation13 on W)indow: int e)xpose type arg

Operation14 on )Window: int )expose type arg

Operation16 on W)indow: int e)xpose type arg

Operation17 on )Window: int )expose type arg

Operation18 on W;indow: int e;xpose type arg

Operation19 on ;Window: int ;expose type arg

Operation20 on W;indow: int e;xpose type arg

Operation21 on ;Window: int ;expose type arg

Commandcom on Windowint: exposeexp name

Function: apply function &rest arguments

A1: A2 A3 A4

A1: A2 A3 A4

A1: A2 A3 A4

A1: A2 A3 A4

A1: A2 A3 A4 A5

A1: A2 A3 A4 A5

A1: A2 A3 A4 A5

A1: A2 A3 A4 A5

A1: A2 A3 A4

A1: A2 A3 A4

A1 of A2: A3 A4 A5

A1: A2 A3 A4 A5

A1 of A2: A3 A4 A5 A6

A1 of A2: A3 A4 A5 A6

A1 on A2: A3 A4 A5

A1 on A2: A3 A4 A5

A1 on A2: A3 A4 A5 A6

A1 on A2: A3 A4 A5 A6

code then var: ret_type fun_name A1 A2 A3 A4

var then code: ret_type1 fun_name1 A1 A2 A3 A4
';

$result_errors{'all_commands_delimiters'} = [
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
    'error_line' => 'warning: entry for index `vr\' outside of any node
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'entry for index `vr\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 9,
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
    'line_nr' => 16,
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
    'error_line' => 'warning: entry for index `vr\' outside of any node
',
    'file_name' => '',
    'line_nr' => 24,
    'macro' => '',
    'text' => 'entry for index `vr\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `tp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 28,
    'macro' => '',
    'text' => 'entry for index `tp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `vr\' outside of any node
',
    'file_name' => '',
    'line_nr' => 32,
    'macro' => '',
    'text' => 'entry for index `vr\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `vr\' outside of any node
',
    'file_name' => '',
    'line_nr' => 36,
    'macro' => '',
    'text' => 'entry for index `vr\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 40,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 44,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 47,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 50,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 53,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 56,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 59,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 62,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 65,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 68,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 71,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 74,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 77,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 80,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 83,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 86,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 89,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 92,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 95,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `vr\' outside of any node
',
    'file_name' => '',
    'line_nr' => 98,
    'macro' => '',
    'text' => 'entry for index `vr\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `vr\' outside of any node
',
    'file_name' => '',
    'line_nr' => 101,
    'macro' => '',
    'text' => 'entry for index `vr\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 104,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 107,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `vr\' outside of any node
',
    'file_name' => '',
    'line_nr' => 110,
    'macro' => '',
    'text' => 'entry for index `vr\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `vr\' outside of any node
',
    'file_name' => '',
    'line_nr' => 113,
    'macro' => '',
    'text' => 'entry for index `vr\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `tp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 116,
    'macro' => '',
    'text' => 'entry for index `tp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `tp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 119,
    'macro' => '',
    'text' => 'entry for index `tp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `vr\' outside of any node
',
    'file_name' => '',
    'line_nr' => 122,
    'macro' => '',
    'text' => 'entry for index `vr\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `tp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 125,
    'macro' => '',
    'text' => 'entry for index `tp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `vr\' outside of any node
',
    'file_name' => '',
    'line_nr' => 128,
    'macro' => '',
    'text' => 'entry for index `vr\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `vr\' outside of any node
',
    'file_name' => '',
    'line_nr' => 131,
    'macro' => '',
    'text' => 'entry for index `vr\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 134,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 137,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 140,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 143,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 146,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 149,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'all_commands_delimiters'} = {};


$result_indices_sort_strings{'all_commands_delimiters'} = {
  'fn' => [
    ')expose on )Window',
    ')expose on )Window',
    ',expose on ,Window',
    ',expose on ,Window',
    ';expose on ;Window',
    ';expose on ;Window',
    'A2',
    'A2',
    'A3',
    'A3',
    'A3 on A2',
    'A3 on A2',
    'A4 on A2',
    'A4 on A2',
    'apply',
    'e)xpose on W)indow',
    'e)xpose on W)indow',
    'e,xpose on W,indow',
    'e,xpose on W,indow',
    'e;xpose on W;indow',
    'e;xpose on W;indow',
    'expose on W,indow',
    'expose on Window',
    'expose on windows',
    'foobar',
    'foobar',
    'foobug',
    'forward--char',
    'fun_name',
    'fun_name1',
    'name on Windowint',
    'push'
  ],
  'tp' => [
    'A2',
    'A2',
    'A2',
    'pair'
  ],
  'vr' => [
    'A2',
    'A2',
    'A3',
    'A3',
    'A3',
    'A4 of A2',
    'A4 of A2',
    'border-pattern',
    'border-pattern of Window',
    'enable',
    'fill-column'
  ]
};



$result_converted{'plaintext'}->{'all_commands_delimiters'} = ' -- Command: FORWARD--CHAR NCHARS argument2 argument3 (arg in brace,
          [something IN V--AR, in, b , comma aPREF p]) last

 -- Variable: fill-column argument1 argument2 (arg in brace, [something
          IN V--AR, in, b , comma aPREF p]) last

 -- Library Function: int foobar (int FOO, float BAR)

 -- Library Function: int foobar (int FOO, float BAR) (arg in brace,
          [something IN V--AR, in, b , comma aPREF p]) ct

          last

 -- Library Function: int foobug [something

 -- stacks: private push (S:in out stack; N:in integer) ; ;barg aarg; ;
          end

 -- Global Flag: int enable (arg in brace, [something IN V--AR, in, b ,
          comma aPREF p]) last

 -- Data type: pair car cdr (arg in brace, [something IN V--AR, in, b ,
          comma aPREF p]) last

 -- Class Option of Window: border-pattern (arg in brace, [something IN
          V--AR, in, b , comma aPREF p]) last

 -- Class Option2 of Window: int border-pattern (arg in brace,
          [something IN V--AR, in, b , comma aPREF p]) last

 -- Operation on windows: expose (arg in brace, [something IN V--AR, in,
          b , comma aPREF p]) last

 -- Operation2 on W,indow: int expose (arg in brace, [something IN
          V--AR, in, b , comma aPREF p]) last

 -- Operation5 on Window: int expose type arg

 -- Operation3 on W,indow: int e,xpose type arg

 -- Operation4 on ,Window: int ,expose type arg

 -- Operation6 on W,indow: int e,xpose type arg

 -- Operation7 on ,Window: int ,expose type arg

 -- Operation13 on W)indow: int e)xpose type arg

 -- Operation14 on )Window: int )expose type arg

 -- Operation16 on W)indow: int e)xpose type arg

 -- Operation17 on )Window: int )expose type arg

 -- Operation18 on W;indow: int e;xpose type arg

 -- Operation19 on ;Window: int ;expose type arg

 -- Operation20 on W;indow: int e;xpose type arg

 -- Operation21 on ;Window: int ;expose type arg

 -- Commandcom on Windowint: exposeEXP name

 -- Function: apply function &rest arguments

 -- A1: A2 A3 A4

 -- A1: A2 A3 A4

 -- A1: A2 A3 A4

 -- A1: A2 A3 A4

 -- A1: A2 A3 A4 A5

 -- A1: A2 A3 A4 A5

 -- A1: A2 A3 A4 A5

 -- A1: A2 A3 A4 A5

 -- A1: A2 A3 A4

 -- A1: A2 A3 A4

 -- A1 of A2: A3 A4 A5

 -- A1: A2 A3 A4 A5

 -- A1 of A2: A3 A4 A5 A6

 -- A1 of A2: A3 A4 A5 A6

 -- A1 on A2: A3 A4 A5

 -- A1 on A2: A3 A4 A5

 -- A1 on A2: A3 A4 A5 A6

 -- A1 on A2: A3 A4 A5 A6

 -- code then var: ret_type fun_name A1 A2 A3 A4

 -- var then code: ret_type1 fun_name1 A1 A2 A3 A4
';

1;
