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
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'displaymath',
          'contents' => [
            {
              'cmdname' => 'strong',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '``simple-double--three---four----\'\''
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'w',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'aa'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => '
'
            },
            {
              'text' => '`'
            },
            {
              'cmdname' => 'w',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 4
              }
            },
            {
              'text' => '`simple-double-'
            },
            {
              'cmdname' => 'w',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 4
              }
            },
            {
              'text' => '-three---four----\''
            },
            {
              'cmdname' => 'w',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 4
              }
            },
            {
              'text' => '\''
            },
            {
              'cmdname' => '*'
            },
            {
              'text' => '
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'displaymath'
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
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'displaymath'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 5
              }
            }
          ],
          'source_info' => {
            'line_nr' => 2
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'displaymath',
          'contents' => [
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
                'line_nr' => 8
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
                      'text' => 'U'
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
                'line_nr' => 8
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
                      'text' => 'a'
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
              'text' => ' '
            },
            {
              'cmdname' => '=',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'o'
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
                'line_nr' => 8
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
                'line_nr' => 8
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
                      'cmdname' => '=',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'E'
                            }
                          ],
                          'type' => 'following_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 8
                      }
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
              'text' => '
'
            },
            {
              'cmdname' => 'l',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 9
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
                      'cmdname' => '\'',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'C'
                            }
                          ],
                          'type' => 'following_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 9
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 9
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
                      'cmdname' => '\'',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'C'
                            }
                          ],
                          'type' => 'following_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 9
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 9
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
                'line_nr' => 9
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
                      'text' => 'a'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 9
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
                      'text' => 'a'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 9
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
                      'text' => 'a'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 9
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'tieaccent',
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
                'line_nr' => 9
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'u',
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
                'line_nr' => 10
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
                      'text' => 'a'
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
              'cmdname' => 'udotaccent',
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
                'line_nr' => 10
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
                      'text' => 'a'
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
                'line_nr' => 10
              }
            },
            {
              'text' => ' a'
            },
            {
              'cmdname' => 'sup',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'h'
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
              'cmdname' => 'sub',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'l'
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
              'text' => '
'
            },
            {
              'cmdname' => '*'
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => ' '
            },
            {
              'cmdname' => ' '
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '
'
            },
            {
              'cmdname' => '-'
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '|'
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => ':'
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '!'
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '?'
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '.'
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '@'
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '}'
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '{'
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '/'
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'today',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 13
              }
            },
            {
              'text' => '
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'displaymath'
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
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'displaymath'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 14
              }
            }
          ],
          'source_info' => {
            'line_nr' => 7
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'displaymath',
          'contents' => [
            {
              'cmdname' => 'click',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'extra' => {
                'clickstyle' => 'arrow'
              },
              'source_info' => {
                'line_nr' => 17
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'U',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '0075'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 18
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'TeX',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 19
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'LaTeX',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 19
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'bullet',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 19
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'copyright',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 19
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'dots',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 19
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'enddots',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 19
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'equiv',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 19
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'error',
              'contents' => [
                {
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
              'cmdname' => 'expansion',
              'contents' => [
                {
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
              'cmdname' => 'minus',
              'contents' => [
                {
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
              'cmdname' => 'point',
              'contents' => [
                {
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
              'cmdname' => 'print',
              'contents' => [
                {
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
              'cmdname' => 'result',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 20
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'aa',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 21
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'AA',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 21
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'ae',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 21
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
                'line_nr' => 21
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
                'line_nr' => 21
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
                'line_nr' => 21
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'o',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 21
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
                'line_nr' => 21
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'ss',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 21
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'l',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 21
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
                'line_nr' => 21
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'DH',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 21
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'TH',
              'contents' => [
                {
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
              'cmdname' => 'dh',
              'contents' => [
                {
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
              'cmdname' => 'th',
              'contents' => [
                {
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
              'cmdname' => 'exclamdown',
              'contents' => [
                {
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
              'cmdname' => 'questiondown',
              'contents' => [
                {
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
              'cmdname' => 'pounds',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 22
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'registeredsymbol',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 23
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'ordf',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 23
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'ordm',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 23
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'comma',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 23
              }
            },
            {
              'text' => ' 
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'displaymath'
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
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'displaymath'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 24
              }
            }
          ],
          'source_info' => {
            'line_nr' => 16
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'displaymath',
          'contents' => [
            {
              'cmdname' => 'quotedblleft',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 27
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'quotedblright',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 27
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'quoteleft',
              'contents' => [
                {
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
              'cmdname' => 'quoteright',
              'contents' => [
                {
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
              'cmdname' => 'quotedblbase',
              'contents' => [
                {
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
              'cmdname' => 'quotesinglbase',
              'contents' => [
                {
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
              'cmdname' => 'guillemetleft',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 28
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'guillemetright',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 29
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'guillemotleft',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 29
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'guillemotright',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 29
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'guilsinglleft',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 29
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'guilsinglright',
              'contents' => [
                {
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
              'cmdname' => 'textdegree',
              'contents' => [
                {
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
              'cmdname' => 'euro',
              'contents' => [
                {
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
              'cmdname' => 'arrow',
              'contents' => [
                {
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
              'cmdname' => 'leq',
              'contents' => [
                {
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
              'cmdname' => 'geq',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 30
              }
            },
            {
              'text' => '
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'displaymath'
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
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'displaymath'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 31
              }
            }
          ],
          'source_info' => {
            'line_nr' => 26
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

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
    'line_nr' => 12,
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
error→ ↦ − ⋆ ⊣ ⇒
å Å æ œ Æ Œ ø Ø ß ł Ł Ð
Þ ð þ ¡ ¿ £
® ª º ,

“ ”
‘ ’ „ ‚ «
» « » ‹
› ° € → ≤ ≥
';


$result_converted{'html_text'}->{'commands_in_math'} = '
<pre class="displaymath"><strong class="strong">``simple-double--three---four----\'\'</strong> aa<!-- /@w -->
`<!-- /@w -->`simple-double-<!-- /@w -->-three---four----\'<!-- /@w -->\'

</pre>
<pre class="displaymath">&uuml; &Uuml; &ntilde; &acirc; &eacute; &#333; &igrave; &eacute; &inodot; &#567; &#274;&#768;
&#322; &#262;&#807; &#262;&#807; &ccedil; a&#779; &#551; &aring; a&#865;
&#259; a&#818; &#7841; &#462; &#261; a<sup class="sup">h</sup><sub class="sub">l</sub>

 &nbsp;&nbsp; &nbsp;   ! ? . @ } { 
a sunny day
</pre>
<pre class="displaymath">&rarr;
&#x0075;
TeX LaTeX &bull; &copy; ... ... &equiv;
error&rarr; &rarr; &minus; &lowast; -| &rArr;
&aring; &Aring; &aelig; &oelig; &AElig; &OElig; &oslash; &Oslash; &szlig; &#322; &#321; &ETH;
&THORN; &eth; &thorn; &iexcl; &iquest; &pound;
&reg; &ordf; &ordm; , 
</pre>
<pre class="displaymath">&ldquo; &rdquo;
&lsquo; &rsquo; &bdquo; &sbquo; &laquo;
&raquo; &laquo; &raquo; &lsaquo;
&rsaquo; &deg; &euro; &rarr; &le; &ge;
</pre>';


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
\\[
\\mathbf{``simple-double--three---four----\'\'} \\hbox{aa}
`\\hbox{}`simple-double-\\hbox{}-three---four----\'\\hbox{}\'
\\]

\\[
\\ddot{u} \\ddot{U} \\tilde{n} \\hat{a} \\acute{e} \\bar{o} \\grave{i} \\acute{e} \\imath{} \\jmath{} \\grave{\\bar{E}}
\\mathord{\\text{\\l{}}} \\textsl{\\c{\\\'{C}}} \\textsl{\\c{\\\'{C}}} \\textsl{\\c{c}} \\textsl{\\H{a}} \\dot{a} \\mathring{a} \\textsl{\\t{a}}
\\breve{a} \\textsl{\\b{a}} \\textsl{\\d{a}} \\check{a} \\textsl{\\k{a}} a^{h}_{l}
 \\ {}\\ {} \\ {}\\-{}   ! ? . @ \\} \\{ 
\\today{}
\\]

\\[
\\rightarrow{}
u
TeX LaTeX \\bullet{} \\copyright{} \\dots{} \\dots{} \\equiv{}
\\fbox{error} \\mapsto{} - \\star{} \\dashv{} \\Rightarrow{}
\\mathord{\\text{\\aa{}}} \\mathord{\\text{\\AA{}}} \\mathord{\\text{\\ae{}}} \\mathord{\\text{\\oe{}}} \\mathord{\\text{\\AE{}}} \\mathord{\\text{\\OE{}}} \\mathord{\\text{\\o{}}} \\mathord{\\text{\\O{}}} \\mathord{\\text{\\ss{}}} \\mathord{\\text{\\l{}}} \\mathord{\\text{\\L{}}} \\mathord{\\text{\\DH{}}}
\\mathord{\\text{\\TH{}}} \\mathord{\\text{\\dh{}}} \\mathord{\\text{\\th{}}} \\mathord{\\text{\\textexclamdown{}}} \\mathord{\\text{\\textquestiondown{}}} \\mathsterling{}
\\circledR{} \\mathord{\\text{\\textordfeminine{}}} \\mathord{\\text{\\textordmasculine{}}} , 
\\]

\\[
\\mathord{\\text{\\textquotedblleft{}}} \\mathord{\\text{\\textquotedblright{}}}
\\mathord{\\text{\\textquoteleft{}}} \\mathord{\\text{\\textquoteright{}}} \\mathord{\\text{\\quotedblbase{}}} \\mathord{\\text{\\quotesinglbase{}}} \\mathord{\\text{\\guillemotleft{}}}
\\mathord{\\text{\\guillemotright{}}} \\mathord{\\text{\\guillemotleft{}}} \\mathord{\\text{\\guillemotright{}}} \\mathord{\\text{\\guilsinglleft{}}}
\\mathord{\\text{\\guilsinglright{}}} ^{\\circ{}} \\euro{} \\rightarrow{} \\leq{} \\geq{}
\\]
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
error&#8594; &#8614; &#8722; &#8902; &#8867; &#8658;
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
