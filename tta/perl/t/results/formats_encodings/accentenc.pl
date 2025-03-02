use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'accentenc'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'documentencoding',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'ISO-8859-1'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'iso-8859-1',
                'text_arg' => 'ISO-8859-1'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 1
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            }
          ],
          'type' => 'preamble_before_content'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'first'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'first'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 3
      }
    },
    {
      'cmdname' => 'top',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'top'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be e`: '
            },
            {
              'cmdname' => '`',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 6
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '`',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 6
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be e\': '
            },
            {
              'cmdname' => '\'',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 8
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '\'',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 8
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be e^: '
            },
            {
              'cmdname' => '^',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 10
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '^',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 10
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be u": '
            },
            {
              'cmdname' => '"',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'u'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 12
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '"',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'u'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 12
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be i`: '
            },
            {
              'cmdname' => '`',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'i'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 14
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '`',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'i'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 14
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be i\': '
            },
            {
              'cmdname' => '\'',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'i'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 16
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '\'',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'i'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 16
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be i^: '
            },
            {
              'cmdname' => '^',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'i'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 18
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '^',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'i'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 18
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be u": '
            },
            {
              'cmdname' => '"',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'u'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 20
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '"',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'u'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 20
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be c,: '
            },
            {
              'cmdname' => ',',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'c'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 22
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => ',',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'c'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 22
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be n~: '
            },
            {
              'cmdname' => '~',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'n'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 24
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '~',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'n'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 24
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be e=: '
            },
            {
              'cmdname' => '=',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 26
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '=',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 26
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be e'
            },
            {
              'cmdname' => 'w',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '\''
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 28
              }
            },
            {
              'text' => '\': '
            },
            {
              'cmdname' => 'H',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 28
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'H',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 28
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be e.: '
            },
            {
              'cmdname' => 'dotaccent',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 30
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'dotaccent',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 30
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be e*: '
            },
            {
              'cmdname' => 'ringaccent',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 32
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'ringaccent',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 32
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be ee[: '
            },
            {
              'cmdname' => 'tieaccent',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'ee'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 34
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be e(: '
            },
            {
              'cmdname' => 'u',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 36
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'u',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 36
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be e_: '
            },
            {
              'cmdname' => 'ubaraccent',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 38
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'ubaraccent',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 38
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be .e: '
            },
            {
              'cmdname' => 'udotaccent',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 40
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'udotaccent',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 40
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be e<: '
            },
            {
              'cmdname' => 'v',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 42
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'v',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 42
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be a; : '
            },
            {
              'cmdname' => 'ogonek',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 44
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'ogonek',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 44
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be e; : '
            },
            {
              'cmdname' => 'ogonek',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 46
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'ogonek',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 46
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'upside down: '
            },
            {
              'cmdname' => 'questiondown',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 48
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'exclamdown',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 48
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'A-with-circle: '
            },
            {
              'cmdname' => 'aa',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 50
              }
            },
            {
              'text' => ','
            },
            {
              'cmdname' => 'AA',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 50
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'AE, OE ligatures: '
            },
            {
              'cmdname' => 'ae',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 52
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'AE',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 52
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'oe',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 52
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'OE',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 52
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'dotless i, j: '
            },
            {
              'cmdname' => 'dotless',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'i'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 54
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'dotless',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'j'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 54
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'Polish suppressed-L: '
            },
            {
              'cmdname' => 'l',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 56
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'L',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 56
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'O-with-slash: '
            },
            {
              'cmdname' => 'o',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 58
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'O',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 58
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'es-zet or sharp S: '
            },
            {
              'cmdname' => 'ss',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 60
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'pounds sterling: '
            },
            {
              'cmdname' => 'pounds',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 62
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'c',
          'contents' => [
            {
              'text' => ' arg is command -- @dotless{i} is special-cased for HTML
',
              'type' => 'rawline_arg'
            }
          ]
        },
        {
          'contents' => [
            {
              'text' => 'should be dotless i`: '
            },
            {
              'cmdname' => '`',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'dotless',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'i'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 65
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 65
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be dotless i\': '
            },
            {
              'cmdname' => '\'',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'dotless',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'i'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 67
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 67
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be dotless i^: '
            },
            {
              'cmdname' => '^',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'dotless',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'i'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 69
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 69
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be dotless i": '
            },
            {
              'cmdname' => '"',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'dotless',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'i'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 71
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 71
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'c',
          'contents' => [
            {
              'text' => ' arg is command -- @dotless{j}
',
              'type' => 'rawline_arg'
            }
          ]
        },
        {
          'contents' => [
            {
              'text' => 'should be dotless j`: '
            },
            {
              'cmdname' => '`',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'dotless',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'j'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 74
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 74
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be dotless j\': '
            },
            {
              'cmdname' => '\'',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'dotless',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'j'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 76
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 76
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be dotless j^: '
            },
            {
              'cmdname' => '^',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'dotless',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'j'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 78
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 78
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'should be dotless j": '
            },
            {
              'cmdname' => '"',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'dotless',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'j'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 80
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 80
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 4
      }
    }
  ],
  'type' => 'document_root'
};

$result_texis{'accentenc'} = '@documentencoding ISO-8859-1

@node first
@top top

should be e`: @`{e} @`e

should be e\': @\'{e} @\'e

should be e^: @^{e} @^e

should be u": @"{u} @"u

should be i`: @`{i} @`i

should be i\': @\'{i} @\'i

should be i^: @^{i} @^i

should be u": @"{u} @"u

should be c,: @,{c} @,c

should be n~: @~{n} @~n

should be e=: @={e} @=e

should be e@w{\'}\': @H{e} @H e

should be e.: @dotaccent{e} @dotaccent e

should be e*: @ringaccent{e} @ringaccent e

should be ee[: @tieaccent{ee}

should be e(: @u{e} @u e

should be e_: @ubaraccent{e} @ubaraccent e

should be .e: @udotaccent{e} @udotaccent e

should be e<: @v{e} @v e

should be a; : @ogonek{a} @ogonek a

should be e; : @ogonek{e} @ogonek e

upside down: @questiondown{} @exclamdown{}

A-with-circle: @aa{},@AA{}

AE, OE ligatures: @ae{} @AE{} @oe{} @OE{}

dotless i, j: @dotless{i} @dotless{j}

Polish suppressed-L: @l{} @L{}

O-with-slash: @o{} @O{}

es-zet or sharp S: @ss{}

pounds sterling: @pounds{}

@c arg is command -- @dotless{i} is special-cased for HTML
should be dotless i`: @`{@dotless{i}}

should be dotless i\': @\'{@dotless{i}}

should be dotless i^: @^{@dotless{i}}

should be dotless i": @"{@dotless{i}}

@c arg is command -- @dotless{j}
should be dotless j`: @`{@dotless{j}}

should be dotless j\': @\'{@dotless{j}}

should be dotless j^: @^{@dotless{j}}

should be dotless j": @"{@dotless{j}}
';


$result_texts{'accentenc'} = '
top
***

should be e`: e` e`

should be e\': e\' e\'

should be e^: e^ e^

should be u": u" u"

should be i`: i` i`

should be i\': i\' i\'

should be i^: i^ i^

should be u": u" u"

should be c,: c, c,

should be n~: n~ n~

should be e=: e= e=

should be e\'\': e\'\' e\'\'

should be e.: e. e.

should be e*: e* e*

should be ee[: ee[

should be e(: e( e(

should be e_: e_ e_

should be .e: .e .e

should be e<: e< e<

should be a; : a; a;

should be e; : e; e;

upside down: ? !

A-with-circle: aa,AA

AE, OE ligatures: ae AE oe OE

dotless i, j: i j

Polish suppressed-L: /l /L

O-with-slash: /o /O

es-zet or sharp S: ss

pounds sterling: #

should be dotless i`: i`

should be dotless i\': i\'

should be dotless i^: i^

should be dotless i": i"

should be dotless j`: j`

should be dotless j\': j\'

should be dotless j^: j^

should be dotless j": j"
';

$result_sectioning{'accentenc'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'first'
            }
          },
          'section_level' => 0,
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'accentenc'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'accentenc'};

$result_nodes{'accentenc'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'normalized' => 'first'
    }
  }
];

$result_menus{'accentenc'} = [
  {
    'extra' => {
      'normalized' => 'first'
    }
  }
];

$result_errors{'accentenc'} = [];


$result_floats{'accentenc'} = {};



$result_converted{'plaintext'}->{'accentenc'} = 'top
***

should be e\': è è

   should be e\': é é

   should be e^: ê ê

   should be u": ü ü

   should be i\': ì ì

   should be i\': í í

   should be i^: î î

   should be u": ü ü

   should be c,: ç ç

   should be n~: ñ ñ

   should be e=: e= e=

   should be e\'\': e\'\' e\'\'

   should be e.: e. e.

   should be e*: e* e*

   should be ee[: ee[

   should be e(: e( e(

   should be e_: e_ e_

   should be .e: .e .e

   should be e<: e< e<

   should be a; : a; a;

   should be e; : e; e;

   upside down: ¿  ¡

   A-with-circle: å,Å

   AE, OE ligatures: æ Æ oe OE

   dotless i, j: i j

   Polish suppressed-L: /l /L

   O-with-slash: ø Ø

   es-zet or sharp S: ß

   pounds sterling: £

   should be dotless i\': ì

   should be dotless i\': í

   should be dotless i^: î

   should be dotless i": ï

   should be dotless j\': j`

   should be dotless j\': j\'

   should be dotless j^: j^

   should be dotless j": j"
';


$result_converted{'html_text'}->{'accentenc'} = '
<div class="top-level-extent" id="first">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<p>should be e&lsquo;: &egrave; &egrave;
</p>
<p>should be e&rsquo;: &eacute; &eacute;
</p>
<p>should be e^: &ecirc; &ecirc;
</p>
<p>should be u&quot;: &uuml; &uuml;
</p>
<p>should be i&lsquo;: &igrave; &igrave;
</p>
<p>should be i&rsquo;: &iacute; &iacute;
</p>
<p>should be i^: &icirc; &icirc;
</p>
<p>should be u&quot;: &uuml; &uuml;
</p>
<p>should be c,: &ccedil; &ccedil;
</p>
<p>should be n~: &ntilde; &ntilde;
</p>
<p>should be e=: &#275; &#275;
</p>
<p>should be e&rsquo;<!-- /@w -->&rsquo;: e&#779; e&#779;
</p>
<p>should be e.: &#279; &#279;
</p>
<p>should be e*: e&#778; e&#778;
</p>
<p>should be ee[: e&#865;e
</p>
<p>should be e(: &#277; &#277;
</p>
<p>should be e_: e&#818; e&#818;
</p>
<p>should be .e: &#7865; &#7865;
</p>
<p>should be e&lt;: &#283; &#283;
</p>
<p>should be a; : &#261; &#261;
</p>
<p>should be e; : &#281; &#281;
</p>
<p>upside down: &iquest; &iexcl;
</p>
<p>A-with-circle: &aring;,&Aring;
</p>
<p>AE, OE ligatures: &aelig; &AElig; &oelig; &OElig;
</p>
<p>dotless i, j: &inodot; &#567;
</p>
<p>Polish suppressed-L: &#322; &#321;
</p>
<p>O-with-slash: &oslash; &Oslash;
</p>
<p>es-zet or sharp S: &szlig;
</p>
<p>pounds sterling: &pound;
</p>
<p>should be dotless i&lsquo;: &igrave;
</p>
<p>should be dotless i&rsquo;: &iacute;
</p>
<p>should be dotless i^: &icirc;
</p>
<p>should be dotless i&quot;: &iuml;
</p>
<p>should be dotless j&lsquo;: j&#768;
</p>
<p>should be dotless j&rsquo;: j&#769;
</p>
<p>should be dotless j^: &#309;
</p>
<p>should be dotless j&quot;: j&#776;
</p></div>
';


$result_converted{'xml'}->{'accentenc'} = '<documentencoding encoding="ISO-8859-1" spaces=" ">ISO-8859-1</documentencoding>

<node identifier="first" spaces=" "><nodename>first</nodename></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<para>should be e&textlsquo;: <accent type="grave">e</accent> <accent type="grave" bracketed="off">e</accent>
</para>
<para>should be e&textrsquo;: <accent type="acute">e</accent> <accent type="acute" bracketed="off">e</accent>
</para>
<para>should be e^: <accent type="circ">e</accent> <accent type="circ" bracketed="off">e</accent>
</para>
<para>should be u&quot;: <accent type="uml">u</accent> <accent type="uml" bracketed="off">u</accent>
</para>
<para>should be i&textlsquo;: <accent type="grave">i</accent> <accent type="grave" bracketed="off">i</accent>
</para>
<para>should be i&textrsquo;: <accent type="acute">i</accent> <accent type="acute" bracketed="off">i</accent>
</para>
<para>should be i^: <accent type="circ">i</accent> <accent type="circ" bracketed="off">i</accent>
</para>
<para>should be u&quot;: <accent type="uml">u</accent> <accent type="uml" bracketed="off">u</accent>
</para>
<para>should be c,: <accent type="cedil">c</accent> <accent type="cedil" bracketed="off">c</accent>
</para>
<para>should be n~: <accent type="tilde">n</accent> <accent type="tilde" bracketed="off">n</accent>
</para>
<para>should be e=: <accent type="macr">e</accent> <accent type="macr" bracketed="off">e</accent>
</para>
<para>should be e<w>&textrsquo;</w>&textrsquo;: <accent type="dblac">e</accent> <accent type="dblac" spacesaftercmd=" " bracketed="off">e</accent>
</para>
<para>should be e.: <accent type="dot">e</accent> <accent type="dot" spacesaftercmd=" " bracketed="off">e</accent>
</para>
<para>should be e*: <accent type="ring">e</accent> <accent type="ring" spacesaftercmd=" " bracketed="off">e</accent>
</para>
<para>should be ee[: <accent type="tieaccent">ee</accent>
</para>
<para>should be e(: <accent type="breve">e</accent> <accent type="breve" spacesaftercmd=" " bracketed="off">e</accent>
</para>
<para>should be e_: <accent type="ubaraccent">e</accent> <accent type="ubaraccent" spacesaftercmd=" " bracketed="off">e</accent>
</para>
<para>should be .e: <accent type="udotaccent">e</accent> <accent type="udotaccent" spacesaftercmd=" " bracketed="off">e</accent>
</para>
<para>should be e&lt;: <accent type="caron">e</accent> <accent type="caron" spacesaftercmd=" " bracketed="off">e</accent>
</para>
<para>should be a; : <accent type="ogon">a</accent> <accent type="ogon" spacesaftercmd=" " bracketed="off">a</accent>
</para>
<para>should be e; : <accent type="ogon">e</accent> <accent type="ogon" spacesaftercmd=" " bracketed="off">e</accent>
</para>
<para>upside down: &iquest; &iexcl;
</para>
<para>A-with-circle: &aring;,&Aring;
</para>
<para>AE, OE ligatures: &aelig; &AElig; &oelig; &OElig;
</para>
<para>dotless i, j: <dotless>i</dotless> <dotless>j</dotless>
</para>
<para>Polish suppressed-L: &lslash; &Lslash;
</para>
<para>O-with-slash: &oslash; &Oslash;
</para>
<para>es-zet or sharp S: &szlig;
</para>
<para>pounds sterling: &pound;
</para>
<!-- c arg is command - @dotless{i} is special-cased for HTML -->
<para>should be dotless i&textlsquo;: <accent type="grave"><dotless>i</dotless></accent>
</para>
<para>should be dotless i&textrsquo;: <accent type="acute"><dotless>i</dotless></accent>
</para>
<para>should be dotless i^: <accent type="circ"><dotless>i</dotless></accent>
</para>
<para>should be dotless i&quot;: <accent type="uml"><dotless>i</dotless></accent>
</para>
<!-- c arg is command - @dotless{j} -->
<para>should be dotless j&textlsquo;: <accent type="grave"><dotless>j</dotless></accent>
</para>
<para>should be dotless j&textrsquo;: <accent type="acute"><dotless>j</dotless></accent>
</para>
<para>should be dotless j^: <accent type="circ"><dotless>j</dotless></accent>
</para>
<para>should be dotless j&quot;: <accent type="uml"><dotless>j</dotless></accent>
</para></top>
';


$result_converted{'docbook'}->{'accentenc'} = '<chapter label="" id="first">
<title>top</title>

<para>should be e&#8216;: &#232; &#232;
</para>
<para>should be e&#8217;: &#233; &#233;
</para>
<para>should be e^: &#234; &#234;
</para>
<para>should be u&quot;: &#252; &#252;
</para>
<para>should be i&#8216;: &#236; &#236;
</para>
<para>should be i&#8217;: &#237; &#237;
</para>
<para>should be i^: &#238; &#238;
</para>
<para>should be u&quot;: &#252; &#252;
</para>
<para>should be c,: &#231; &#231;
</para>
<para>should be n~: &#241; &#241;
</para>
<para>should be e=: &#275; &#275;
</para>
<para>should be e&#8217;<!-- /@w -->&#8217;: e&#779; e&#779;
</para>
<para>should be e.: &#279; &#279;
</para>
<para>should be e*: e&#778; e&#778;
</para>
<para>should be ee[: e&#865;e
</para>
<para>should be e(: &#277; &#277;
</para>
<para>should be e_: e&#818; e&#818;
</para>
<para>should be .e: &#7865; &#7865;
</para>
<para>should be e&lt;: &#283; &#283;
</para>
<para>should be a; : &#261; &#261;
</para>
<para>should be e; : &#281; &#281;
</para>
<para>upside down: &#191; &#161;
</para>
<para>A-with-circle: &#229;,&#197;
</para>
<para>AE, OE ligatures: &#230; &#198; &#339; &#338;
</para>
<para>dotless i, j: &#305; &#567;
</para>
<para>Polish suppressed-L: &#322; &#321;
</para>
<para>O-with-slash: &#248; &#216;
</para>
<para>es-zet or sharp S: &#223;
</para>
<para>pounds sterling: &#163;
</para>
<!-- arg is command - @dotless{i} is special-cased for HTML -->
<para>should be dotless i&#8216;: &#236;
</para>
<para>should be dotless i&#8217;: &#237;
</para>
<para>should be dotless i^: &#238;
</para>
<para>should be dotless i&quot;: &#239;
</para>
<!-- arg is command - @dotless{j} -->
<para>should be dotless j&#8216;: j&#768;
</para>
<para>should be dotless j&#8217;: j&#769;
</para>
<para>should be dotless j^: &#309;
</para>
<para>should be dotless j&quot;: j&#776;
</para></chapter>
';


$result_converted{'latex_text'}->{'accentenc'} = '
\\begin{document}
\\part*{{top}}
\\label{anchor:first}%

should be e`: \\`{e} \\`{e}

should be e\': \\\'{e} \\\'{e}

should be e\\^{}: \\^{e} \\^{e}

should be u": \\"{u} \\"{u}

should be i`: \\`{i} \\`{i}

should be i\': \\\'{i} \\\'{i}

should be i\\^{}: \\^{i} \\^{i}

should be u": \\"{u} \\"{u}

should be c,: \\c{c} \\c{c}

should be n\\~{}: \\~{n} \\~{n}

should be e=: \\={e} \\={e}

should be e\\hbox{\'}\': \\H{e} \\H{e}

should be e.: \\.{e} \\.{e}

should be e*: \\r{e} \\r{e}

should be ee[: \\t{ee}

should be e(: \\u{e} \\u{e}

should be e\\_: \\b{e} \\b{e}

should be .e: \\d{e} \\d{e}

should be e<: \\v{e} \\v{e}

should be a; : \\k{a} \\k{a}

should be e; : \\k{e} \\k{e}

upside down: \\textquestiondown{} \\textexclamdown{}

A-with-circle: \\aa{},\\AA{}

AE, OE ligatures: \\ae{} \\AE{} \\oe{} \\OE{}

dotless i, j: \\i{} \\j{}

Polish suppressed-L: \\l{} \\L{}

O-with-slash: \\o{} \\O{}

es-zet or sharp S: \\ss{}

pounds sterling: \\textsterling{}

should be dotless i`: \\`{\\i{}}

should be dotless i\': \\\'{\\i{}}

should be dotless i\\^{}: \\^{\\i{}}

should be dotless i": \\"{\\i{}}

should be dotless j`: \\`{\\j{}}

should be dotless j\': \\\'{\\j{}}

should be dotless j\\^{}: \\^{\\j{}}

should be dotless j": \\"{\\j{}}
';

1;
