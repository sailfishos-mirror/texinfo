use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'commands_in_math'} = {
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
          'args' => [
            {
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'displaymath',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '``simple-double--three---four----\'\''
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'strong',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
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
                      'text' => 'aa'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'w',
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
            },
            {
              'parent' => {},
              'text' => '`'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'w',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '`simple-double-'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'w',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '-three---four----\''
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'w',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '\''
            },
            {
              'cmdname' => '*',
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'displaymath'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              }
            }
          ],
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
          'args' => [
            {
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'displaymath',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'u'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => '"',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
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
                      'text' => 'U'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => '"',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
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
                      'text' => 'n'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => '~',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => '^',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
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
                      'text' => 'e'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => '\'',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
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
                      'text' => 'o'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => '=',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
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
                      'text' => 'i'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => '`',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
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
                      'text' => 'e'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => '\'',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
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
                      'text' => 'i'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'dotless',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
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
                      'text' => 'j'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'dotless',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'E'
                            }
                          ],
                          'parent' => {},
                          'type' => 'following_arg'
                        }
                      ],
                      'cmdname' => '=',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 8,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => '`',
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
'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'l',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'C'
                            }
                          ],
                          'parent' => {},
                          'type' => 'following_arg'
                        }
                      ],
                      'cmdname' => '\'',
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
              'cmdname' => ',',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'C'
                            }
                          ],
                          'parent' => {},
                          'type' => 'following_arg'
                        }
                      ],
                      'cmdname' => '\'',
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
              'cmdname' => ',',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
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
                      'text' => 'c'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => ',',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'H',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'dotaccent',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ringaccent',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'tieaccent',
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
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'u',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              }
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ubaraccent',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              }
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'udotaccent',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              }
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'v',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              }
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ogonek',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' a'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'h'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'sup',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'l'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'sub',
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
'
            },
            {
              'cmdname' => '*',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => ' ',
              'parent' => {}
            },
            {
              'cmdname' => ' ',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '
',
              'parent' => {}
            },
            {
              'cmdname' => '-',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '|',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => ':',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '!',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '?',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '.',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '}',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '{',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '/',
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
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'today',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 13,
                'macro' => ''
              }
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'displaymath'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 14,
                'macro' => ''
              }
            }
          ],
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
          'args' => [
            {
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'displaymath',
          'contents' => [
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'click',
              'extra' => {
                'clickstyle' => 'arrow'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 17,
                'macro' => ''
              }
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
                      'text' => '0075'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'U',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 18,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'TeX',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 19,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'LaTeX',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 19,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'bullet',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 19,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'copyright',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 19,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'dots',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 19,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'enddots',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 19,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'equiv',
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
'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'error',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 20,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'expansion',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 20,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'minus',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 20,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'point',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 20,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'print',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 20,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'result',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 20,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'aa',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'AA',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ae',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'oe',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'AE',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'OE',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'o',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'O',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ss',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'l',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'L',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'DH',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'TH',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 22,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'dh',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 22,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'th',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 22,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'exclamdown',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 22,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'questiondown',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 22,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'pounds',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 22,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'registeredsymbol',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 23,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ordf',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 23,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ordm',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 23,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'comma',
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'displaymath'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 24,
                'macro' => ''
              }
            }
          ],
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
          'args' => [
            {
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'displaymath',
          'contents' => [
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'quotedblleft',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 27,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'quotedblright',
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
'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'quoteleft',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 28,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'quoteright',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 28,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'quotedblbase',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 28,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'quotesinglbase',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 28,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'guillemetleft',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 28,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'guillemetright',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 29,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'guillemotleft',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 29,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'guillemotright',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 29,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'guilsinglleft',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 29,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'guilsinglright',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 30,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'textdegree',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 30,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'euro',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 30,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'arrow',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 30,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'leq',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 30,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'geq',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 30,
                'macro' => ''
              }
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'displaymath'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 31,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 26,
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
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[8]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[9];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[9]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[11]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[12]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[13]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[13]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[13];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'contents'}[13]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[4]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[4];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[4]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[5]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[6]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[6];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[6]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[7]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[8]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[8];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[8]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[9]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[10]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[10];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[10]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[11]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[12]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[12];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[12]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[13]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[14]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[14];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[14]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[15]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[16]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[16];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[16]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[17]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[18]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[18]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[18];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[18]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[19]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[20]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[20]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[20]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[20]{'args'}[0]{'contents'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[20]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[20]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[20]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[20];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[20]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[21]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[22]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[22];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[22]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[23]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[24]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[24]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[24]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[24]{'args'}[0]{'contents'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[24]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[24]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[24]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[24];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[24]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[25]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[26]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[26]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[26]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[26]{'args'}[0]{'contents'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[26]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[26]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[26]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[26];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[26]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[27]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[28]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[28]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[28]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[28];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[28]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[29]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[30]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[30]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[30]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[30];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[30]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[31]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[32]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[32]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[32]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[32];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[32]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[33]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[34]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[34]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[34]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[34];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[34]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[35]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[36]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[36]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[36]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[36];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[36]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[37]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[38]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[38]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[38]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[38];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[38]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[39]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[40]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[40]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[40]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[40];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[40]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[41]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[42]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[42]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[42]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[42];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[42]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[43]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[44]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[44]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[44]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[44];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[44]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[45]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[46]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[46]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[46]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[46];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[46]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[47]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[48]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[48]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[48]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[48];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[48]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[49]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[49]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[49]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[49];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[49]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[50]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[51]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[52]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[53]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[54]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[55]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[56]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[57]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[58]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[59]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[60]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[61]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[62]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[63]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[64]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[65]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[66]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[67]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[68]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[69]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[70]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[71]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[72]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[73]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[74]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[75]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[76]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[77]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[77];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[77]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[78]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[79]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[79]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[79]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[79];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'contents'}[79]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[2];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[4];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[6];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[7]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[8];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[10];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[11]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[12];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[12]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[13]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[14];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[14]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[15]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[16];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[16]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[17]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[18];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[18]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[19]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[20]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[20];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[20]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[21]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[22]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[22];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[22]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[23]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[24]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[24];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[24]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[25]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[26]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[26];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[26]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[27]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[28]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[28];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[28]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[29]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[30]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[30];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[30]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[31]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[32]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[32];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[32]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[33]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[34]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[34];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[34]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[35]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[36]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[36];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[36]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[37]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[38]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[38];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[38]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[39]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[40]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[40];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[40]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[41]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[42]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[42];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[42]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[43]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[44]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[44];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[44]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[45]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[46]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[46];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[46]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[47]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[48]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[48];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[48]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[49]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[50]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[50];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[50]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[51]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[52]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[52];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[52]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[53]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[54]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[54];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[54]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[55]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[56]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[56];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[56]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[57]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[58]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[58];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[58]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[59]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[60]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[60];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[60]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[61]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[62]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[62];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[62]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[63]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[64]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[64];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[64]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[65]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[66]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[66];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[66]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[67]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[68]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[68];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[68]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[69]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[70]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[70];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[70]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[71]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[72]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[72];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[72]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[73]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[74]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[74]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[74]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[74];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'contents'}[74]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[2];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[3]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[4];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[4]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[5]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[6];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[6]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[7]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[8];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[8]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[9]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[10];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[10]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[11]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[12];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[12]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[13]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[14];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[14]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[15]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[16];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[16]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[17]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[18];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[18]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[19]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[20]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[20];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[20]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[21]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[22]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[22];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[22]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[23]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[24]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[24];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[24]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[25]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[26]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[26];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[26]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[27]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[28]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[28];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[28]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[29]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[30]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[30];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[30]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[31]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[32]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[32];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[32]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[33]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[34]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[34]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[34]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[34];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'contents'}[34]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[0];
$result_trees{'commands_in_math'}{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'};

$result_texis{'commands_in_math'} = '
@displaymath
@strong{``simple-double--three---four----\'\'} @w{aa}
`@w{}`simple-double-@w{}-three---four----\'@w{}\'@*
@end displaymath

@displaymath
@"u @"{U} @~n @^a @\'e @=o @`i @\'{e} @dotless{i} @dotless{j} @`{@=E}
@l{} @,{@\'C} @,{@\'C} @,c @H{a} @dotaccent{a} @ringaccent{a} @tieaccent{a}
@u{a} @ubaraccent{a} @udotaccent{a} @v{a} @ogonek{a} a@sup{h}@sub{l}
@* @ @  @
@- @| @: @! @? @. @@ @} @{ @/
@today{}
@end displaymath

@displaymath
@click{}
@U{0075}
@TeX{} @LaTeX{} @bullet{} @copyright{} @dots{} @enddots{} @equiv{}
@error{} @expansion{} @minus{} @point{} @print{} @result{}
@aa{} @AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{}
@TH{} @dh{} @th{} @exclamdown{} @questiondown{} @pounds{}
@registeredsymbol{} @ordf{} @ordm{} @comma{} 
@end displaymath

@displaymath
@quotedblleft{} @quotedblright{} 
@quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{} @guillemetleft{}
@guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{}
@guilsinglright{} @textdegree{} @euro{} @arrow{} @leq{} @geq{}
@end displaymath
';


$result_texts{'commands_in_math'} = '
``simple-double--three---four----\'\' aa
``simple-double--three---four----\'\'


u" U" n~ a^ e\' o= i` e\' i j E=`
/l C\', C\', c, a\'\' a. a* a[
a( a_ .a a< a; ahl

        ! ? . @ } { 
a sunny day

->
0075
TeX LaTeX * (C) ... ... ==
error--> ==> - -!- -| =>
aa AA ae oe AE OE /o /O ss /l /L D
TH d th ! ? #
(R) a o , 

" " 
` \' ,, , <<
>> << >> <
> o Euro -> <= >=
';

$result_errors{'commands_in_math'} = [
  {
    'error_line' => '@| should only appear in heading or footing
',
    'file_name' => '',
    'line_nr' => 12,
    'macro' => '',
    'text' => '@| should only appear in heading or footing',
    'type' => 'error'
  }
];


$result_floats{'commands_in_math'} = {};



$result_converted{'plaintext'}->{'commands_in_math'} = '*``simple-double--three---four----\'\'* aa
``simple-double--three---four----\'\'


ü Ü ñ â é ō ì é ı ȷ Ḕ
ł Ḉ Ḉ ç a̋ ȧ å a͡
ă a̲ ạ ǎ ą a^{h}_{l}

        ! ? . @ } {
a sunny day

→
u
TeX LaTeX • © ... ... ≡
error→ ↦ − ★ ⊣ ⇒
å Å æ œ Æ Œ ø Ø ß ł Ł Ð
Þ ð þ ¡ ¿ £
® ª º ,

“ ”
‘ ’ „ ‚ «
» « » ‹
› ° € → ≤ ≥
';


$result_converted{'html_text'}->{'commands_in_math'} = '
<div class="displaymath"><em><strong class="strong">``simple-double--three---four----\'\'</strong> aa<!-- /@w -->
`<!-- /@w -->`simple-double-<!-- /@w -->-three---four----\'<!-- /@w -->\'

</em></div>
<div class="displaymath"><em>&uuml; &Uuml; &ntilde; &acirc; &eacute; &#333; &igrave; &eacute; &inodot; &#567; &#274;&#768;
&#322; &#262;&#807; &#262;&#807; &ccedil; a&#779; &#551; &aring; a&#865;
&#259; a&#818; &#7841; &#462; &#261; a<sup class="sup">h</sup><sub class="sub">l</sub>

 &nbsp;&nbsp; &nbsp;   ! ? . @ } { 
a sunny day
</em></div>
<div class="displaymath"><em>&rarr;
&#x0075;
TeX LaTeX &bull; &copy; &hellip; ... &equiv;
error&rarr; &rarr; &minus; &lowast; -| &rArr;
&aring; &Aring; &aelig; &oelig; &AElig; &OElig; &oslash; &Oslash; &szlig; &#322; &#321; &ETH;
&THORN; &eth; &thorn; &iexcl; &iquest; &pound;
&reg; &ordf; &ordm; , 
</em></div>
<div class="displaymath"><em>&ldquo; &rdquo; 
&lsquo; &rsquo; &bdquo; &sbquo; &laquo;
&raquo; &laquo; &raquo; &lsaquo;
&rsaquo; &deg; &euro; &rarr; &le; &ge;
</em></div>';


$result_converted{'xml'}->{'commands_in_math'} = '
<displaymath endspaces=" ">
<strong>``simple-double--three---four----\'\'</strong> <w>aa</w>
`<w></w>`simple-double-<w></w>-three---four----\'<w></w>\'&linebreak;
</displaymath>

<displaymath endspaces=" ">
<accent type="uml" bracketed="off">u</accent> <accent type="uml">U</accent> <accent type="tilde" bracketed="off">n</accent> <accent type="circ" bracketed="off">a</accent> <accent type="acute" bracketed="off">e</accent> <accent type="macr" bracketed="off">o</accent> <accent type="grave" bracketed="off">i</accent> <accent type="acute">e</accent> <dotless>i</dotless> <dotless>j</dotless> <accent type="grave"><accent type="macr" bracketed="off">E</accent></accent>
&lslash; <accent type="cedil"><accent type="acute" bracketed="off">C</accent></accent> <accent type="cedil"><accent type="acute" bracketed="off">C</accent></accent> <accent type="cedil" bracketed="off">c</accent> <accent type="doubleacute">a</accent> <accent type="dotaccent">a</accent> <accent type="ring">a</accent> <accent type="tieaccent">a</accent>
<accent type="breve">a</accent> <accent type="ubaraccent">a</accent> <accent type="udotaccent">a</accent> <accent type="caron">a</accent> <accent type="ogon">a</accent> a<sup>h</sup><sub>l</sub>
&linebreak; <spacecmd type="spc"/><spacecmd type="spc"/> <spacecmd type="nl"/>&hyphenbreak; <divideheading/> &noeos; &eosexcl; &eosquest; &eosperiod; &arobase; &rbrace; &lbrace; &slashbreak;
<today/>
</displaymath>

<displaymath endspaces=" ">
<click command="arrow"/>
<U>0075</U>
&tex; &latex; &bullet; &copyright; &dots; &enddots; &equiv;
&errorglyph; &expansion; &minus; &point; &printglyph; &result;
&aring; &Aring; &aelig; &oelig; &AElig; &OElig; &oslash; &Oslash; &szlig; &lslash; &Lslash; &ETH;
&THORN; &eth; &thorn; &iexcl; &iquest; &pound;
&registered; &ordf; &ordm; &comma; 
</displaymath>

<displaymath endspaces=" ">
&ldquo; &rdquo; 
&lsquo; &rsquo; &bdquo; &sbquo; &laquo;
&raquo; &guillemotleft; &guillemotright; &lsaquo;
&rsaquo; &deg; &euro; &rarr; &le; &ge;
</displaymath>
';


$result_converted{'latex_text'}->{'commands_in_math'} = '
$$
\\mathbf{``simple-double--three---four----\'\'} \\hbox{aa}
`\\hbox{}`simple-double-\\hbox{}-three---four----\'\\hbox{}\'
$$

$$
\\ddot{u} \\ddot{U} \\tilde{n} \\hat{a} \\acute{e} \\bar{o} \\grave{i} \\acute{e} \\imath{} \\jmath{} \\grave{\\bar{E}}
\\mathord{\\text{\\l{}}} \\textsl{\\c{\\\'{C}}} \\textsl{\\c{\\\'{C}}} \\textsl{\\c{c}} \\textsl{\\H{a}} \\dot{a} \\mathring{a} \\textsl{\\t{a}}
\\breve{a} \\textsl{\\b{a}} \\textsl{\\d{a}} \\check{a} \\textsl{\\k{a}} a^{h}_{l}
 \\ {}\\ {} \\ {}\\-{}   ! ? . @ \\} \\{ 
\\today{}
$$

$$
\\rightarrow{}
u
TeX LaTeX \\bullet{} \\copyright{} \\dots{} \\dots{} \\equiv{}
\\fbox{error} \\mapsto{} - \\star{} \\dashv{} \\Rightarrow{}
\\mathord{\\text{\\aa{}}} \\mathord{\\text{\\AA{}}} \\mathord{\\text{\\ae{}}} \\mathord{\\text{\\oe{}}} \\mathord{\\text{\\AE{}}} \\mathord{\\text{\\OE{}}} \\mathord{\\text{\\o{}}} \\mathord{\\text{\\O{}}} \\mathord{\\text{\\ss{}}} \\mathord{\\text{\\l{}}} \\mathord{\\text{\\L{}}} \\mathord{\\text{\\DH{}}}
\\mathord{\\text{\\TH{}}} \\mathord{\\text{\\dh{}}} \\mathord{\\text{\\th{}}} \\mathord{\\text{\\textexclamdown{}}} \\mathord{\\text{\\textquestiondown{}}} \\mathsterling{}
\\circledR{} \\mathord{\\text{\\textordfeminine{}}} \\mathord{\\text{\\textordmasculine{}}} , 
$$

$$
\\mathord{\\text{\\textquotedblleft{}}} \\mathord{\\text{\\textquotedblright{}}} 
\\mathord{\\text{\\textquoteleft{}}} \\mathord{\\text{\\textquoteright{}}} \\mathord{\\text{\\quotedblbase{}}} \\mathord{\\text{\\quotesinglbase{}}} \\mathord{\\text{\\guillemotleft{}}}
\\mathord{\\text{\\guillemotright{}}} \\mathord{\\text{\\guillemotleft{}}} \\mathord{\\text{\\guillemotright{}}} \\mathord{\\text{\\guilsinglleft{}}}
\\mathord{\\text{\\guilsinglright{}}} ^{\\circ{}} \\euro{} \\rightarrow{} \\leq{} \\geq{}
$$
';


$result_converted{'docbook'}->{'commands_in_math'} = '
<informalequation><mathphrase><emphasis role="bold">``simple-double--three---four----\'\'</emphasis> aa<!-- /@w -->
`<!-- /@w -->`simple-double-<!-- /@w -->-three---four----\'<!-- /@w -->\'

</mathphrase></informalequation>
<informalequation><mathphrase>&#252; &#220; &#241; &#226; &#233; &#333; &#236; &#233; &#305; &#567; &#274;&#768;
&#322; &#262;&#807; &#262;&#807; &#231; a&#779; &#551; &#229; a&#865;
&#259; a&#818; &#7841; &#462; &#261; a<superscript>h</superscript><subscript>l</subscript>

 &#160;&#160; &#160;   ! ? . @ } { 
a sunny day
</mathphrase></informalequation>
<informalequation><mathphrase>&#8594;
&#x0075;
&tex; &latex; &#8226; &#169; &#8230; ... &#8801;
error&#8594; &#8614; &#8722; &#9733; &#8867; &#8658;
&#229; &#197; &#230; &#339; &#198; &#338; &#248; &#216; &#223; &#322; &#321; &#208;
&#222; &#240; &#254; &#161; &#191; &#163;
&#174; &#170; &#186; &#44; 
</mathphrase></informalequation>
<informalequation><mathphrase>&#8220; &#8221; 
&#8216; &#8217; &#8222; &#8218; &#171;
&#187; &#171; &#187; &#8249;
&#8250; &#176; &#8364; &#8594; &#8804; &#8805;
</mathphrase></informalequation>';

1;
