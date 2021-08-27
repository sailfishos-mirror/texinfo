use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'commands_in_math'} = {
  'contents' => [
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 3,
            'macro' => ''
          },
          'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 3,
            'macro' => ''
          },
          'parent' => {}
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
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'w',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 4,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => '`simple-double-'
        },
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 4,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => '-three---four----\''
        },
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 4,
            'macro' => ''
          },
          'parent' => {}
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
            'command_argument' => 'displaymath',
            'spaces_before_argument' => ' ',
            'text_arg' => 'displaymath'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 5,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'end_command' => {}
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 2,
        'macro' => ''
      },
      'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 8,
            'macro' => ''
          },
          'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 8,
            'macro' => ''
          },
          'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 8,
            'macro' => ''
          },
          'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 8,
            'macro' => ''
          },
          'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 8,
            'macro' => ''
          },
          'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 8,
            'macro' => ''
          },
          'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 8,
            'macro' => ''
          },
          'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 8,
            'macro' => ''
          },
          'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 8,
            'macro' => ''
          },
          'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 8,
            'macro' => ''
          },
          'parent' => {}
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
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 8,
                    'macro' => ''
                  },
                  'parent' => {}
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => '`',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 8,
            'macro' => ''
          },
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
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'l',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
          'parent' => {}
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
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 9,
                    'macro' => ''
                  },
                  'parent' => {}
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => ',',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
          'parent' => {}
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
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 9,
                    'macro' => ''
                  },
                  'parent' => {}
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => ',',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
          'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
          'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
          'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
          'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
          'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
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
                  'text' => 'a'
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'u',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          },
          'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          },
          'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          },
          'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          },
          'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          },
          'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          },
          'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          },
          'parent' => {}
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
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'today',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 13,
            'macro' => ''
          },
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 14,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'end_command' => {}
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 7,
        'macro' => ''
      },
      'parent' => {}
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
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'click',
          'contents' => [],
          'extra' => {
            'clickstyle' => 'arrow'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 17,
            'macro' => ''
          },
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
                  'text' => '0075'
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'U',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 18,
            'macro' => ''
          },
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
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'TeX',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 19,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'LaTeX',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 19,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'bullet',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 19,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'copyright',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 19,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'dots',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 19,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'enddots',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 19,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'equiv',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 19,
            'macro' => ''
          },
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
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'error',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 20,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'expansion',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 20,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'minus',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 20,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'point',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 20,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'print',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 20,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'result',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 20,
            'macro' => ''
          },
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
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'aa',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 21,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'AA',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 21,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'ae',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 21,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'oe',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 21,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'AE',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 21,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'OE',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 21,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'o',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 21,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'O',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 21,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'ss',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 21,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'l',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 21,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'L',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 21,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'DH',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 21,
            'macro' => ''
          },
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
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'TH',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 22,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'dh',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 22,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'th',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 22,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'exclamdown',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 22,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'questiondown',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 22,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'pounds',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 22,
            'macro' => ''
          },
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
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'registeredsymbol',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 23,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'ordf',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 23,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'ordm',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 23,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'comma',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 23,
            'macro' => ''
          },
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 24,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'end_command' => {}
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 16,
        'macro' => ''
      },
      'parent' => {}
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
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'quotedblleft',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 27,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'quotedblright',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 27,
            'macro' => ''
          },
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
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'quoteleft',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 28,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'quoteright',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 28,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'quotedblbase',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 28,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'quotesinglbase',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 28,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'guillemetleft',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 28,
            'macro' => ''
          },
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
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'guillemetright',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 29,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'guillemotleft',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 29,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'guillemotright',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 29,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'guilsinglleft',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 29,
            'macro' => ''
          },
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
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'guilsinglright',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 30,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'textdegree',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 30,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'euro',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 30,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'arrow',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 30,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'leq',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 30,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'geq',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 30,
            'macro' => ''
          },
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 31,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'end_command' => {}
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 26,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'text_root'
};
$result_trees{'commands_in_math'}{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'};
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'commands_in_math'}{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[6];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[8];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[8]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[9]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[10];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[10]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[11]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[12]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[13]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[14]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[14];
$result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[14]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'commands_in_math'}{'contents'}[1]{'contents'}[14];
$result_trees{'commands_in_math'}{'contents'}[1]{'parent'} = $result_trees{'commands_in_math'};
$result_trees{'commands_in_math'}{'contents'}[2]{'parent'} = $result_trees{'commands_in_math'};
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[0]{'extra'}{'command'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[3]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[4]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[5]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[5]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[6]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[7]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[7]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[8]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[9]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[9];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[9]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[10]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[11]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[11];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[11]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[12]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[13]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[13]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[13];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[13]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[14]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[15]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[15]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[15]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[15];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[15]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[16]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[17]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[17]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[17]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[17];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[17]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[18]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[19]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[19]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[19]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[19];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[19]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[20]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[21]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[21]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[21]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[21]{'args'}[0]{'contents'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[21]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[21]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[21]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[21];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[21]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[22]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[23]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[23];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[23]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[24]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[25]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[25]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[25]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[25]{'args'}[0]{'contents'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[25]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[25]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[25]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[25];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[25]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[26]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[27]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[27]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[27]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[27]{'args'}[0]{'contents'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[27]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[27]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[27]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[27];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[27]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[28]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[29]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[29]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[29]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[29];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[29]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[30]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[31]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[31]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[31]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[31];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[31]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[32]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[33]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[33]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[33]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[33];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[33]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[34]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[35]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[35]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[35]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[35];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[35]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[36]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[37]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[37]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[37]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[37];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[37]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[38]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[39]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[39]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[39]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[39];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[39]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[40]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[41]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[41]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[41]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[41];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[41]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[42]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[43]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[43]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[43]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[43];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[43]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[44]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[45]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[45]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[45]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[45];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[45]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[46]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[47]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[47]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[47]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[47];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[47]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[48]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[49]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[49]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[49]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[49];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[49]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[50]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[50]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[50]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[50];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[50]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[51]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[52]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[53]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[54]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[55]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[56]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[57]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[58]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[59]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[60]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[61]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[62]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[63]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[64]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[65]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[66]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[67]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[68]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[69]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[70]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[71]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[72]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[73]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[74]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[75]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[76]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[77]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[78]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[78];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[78]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[79]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[80]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[80]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[80]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[80];
$result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[80]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'commands_in_math'}{'contents'}[3]{'contents'}[80];
$result_trees{'commands_in_math'}{'contents'}[3]{'parent'} = $result_trees{'commands_in_math'};
$result_trees{'commands_in_math'}{'contents'}[4]{'parent'} = $result_trees{'commands_in_math'};
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[0]{'extra'}{'command'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[3]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[3]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[4]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[5]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[6]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[7]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[8]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[9];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[9]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[10]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[11];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[11]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[12]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[13];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[13]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[14]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[15]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[15];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[15]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[16]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[17]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[17];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[17]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[18]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[19]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[19];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[19]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[20]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[21]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[21];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[21]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[22]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[23]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[23];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[23]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[24]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[25]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[25];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[25]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[26]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[27]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[27];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[27]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[28]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[29]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[29];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[29]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[30]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[31]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[31];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[31]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[32]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[33]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[33];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[33]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[34]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[35]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[35];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[35]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[36]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[37]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[37];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[37]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[38]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[39]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[39];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[39]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[40]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[41]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[41];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[41]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[42]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[43]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[43];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[43]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[44]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[45]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[45];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[45]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[46]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[47]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[47];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[47]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[48]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[49]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[49];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[49]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[50]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[51]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[51];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[51]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[52]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[53]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[53];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[53]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[54]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[55]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[55];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[55]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[56]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[57]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[57];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[57]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[58]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[59]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[59];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[59]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[60]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[61]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[61];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[61]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[62]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[63]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[63];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[63]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[64]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[65]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[65];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[65]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[66]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[67]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[67];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[67]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[68]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[69]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[69];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[69]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[70]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[71]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[71];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[71]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[72]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[73]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[73];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[73]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[74]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[75]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[75]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[75]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[75];
$result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[75]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[5]{'extra'}{'end_command'} = $result_trees{'commands_in_math'}{'contents'}[5]{'contents'}[75];
$result_trees{'commands_in_math'}{'contents'}[5]{'parent'} = $result_trees{'commands_in_math'};
$result_trees{'commands_in_math'}{'contents'}[6]{'parent'} = $result_trees{'commands_in_math'};
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[0]{'extra'}{'command'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[1];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[3];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[3]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[4]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[5];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[5]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[6]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[7]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[8]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[9];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[9]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[10]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[11];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[11]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[12]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[13];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[13]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[14]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[15]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[15];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[15]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[16]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[17]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[17];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[17]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[18]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[19]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[19];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[19]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[20]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[21]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[21];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[21]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[22]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[23]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[23];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[23]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[24]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[25]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[25];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[25]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[26]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[27]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[27];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[27]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[28]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[29]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[29];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[29]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[30]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[31]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[31];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[31]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[32]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[33]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[33];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[33]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[34]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[35]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[35]{'args'}[0];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[35]{'args'}[0]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[35];
$result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[35]{'parent'} = $result_trees{'commands_in_math'}{'contents'}[7];
$result_trees{'commands_in_math'}{'contents'}[7]{'extra'}{'end_command'} = $result_trees{'commands_in_math'}{'contents'}[7]{'contents'}[35];
$result_trees{'commands_in_math'}{'contents'}[7]{'parent'} = $result_trees{'commands_in_math'};

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

`` \'\' 
` \' ,, , <<
>> << >> <
> o Euro -> <= >=
';

$result_errors{'commands_in_math'} = [];


$result_floats{'commands_in_math'} = {};



$result_converted{'plaintext'}->{'commands_in_math'} = '*``simple-double--three---four----\'\'* aa
``simple-double--three---four----\'\'


ü Ü ñ â é ō ì é ı j Ḕ
ł Ḉ Ḉ ç a̋ ȧ å a͡
ă a̲ ạ ǎ ą a^{h}_{l}

        ! ? . @ } {
a sunny day

->
u
TeX LaTeX * (C) ... ... ==
error-> ==> - -!- -| =>
å Å æ œ Æ Œ ø Ø ß ł Ł Ð
Þ ð þ ¡ ¿ £
(R) ª º ,

“ ”
‘ ’ „ ‚ «
» « » ‹
› ° € -> ≤ ≥
';


$result_converted{'html_text'}->{'commands_in_math'} = '
<div class="displaymath"><em><strong>``simple-double--three---four----\'\'</strong> aa<!-- /@w -->
`<!-- /@w -->`simple-double-<!-- /@w -->-three---four----\'<!-- /@w -->\'

</em></div>
<div class="displaymath"><em>&uuml; &Uuml; &ntilde; &acirc; &eacute; &#333; &igrave; &eacute; i j &#274;&#768;
&#322; &#262;&#807; &#262;&#807; &ccedil; a&#779; &#551; &aring; a&#865;
&#259; a&#818; &#7841; &#462; &#261; a<sup>h</sup><sub>l</sub>

 &nbsp;&nbsp; &nbsp;   ! ? . @ } { 
a sunny day
</em></div>
<div class="displaymath"><em>&rarr;
&#x0075;
TeX LaTeX &bull; &copy; &hellip; ... &equiv;
error&rarr; &rarr; - &lowast; -| &rArr;
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


$result_converted{'docbook'}->{'commands_in_math'} = '
<informalequation><mathphrase><emphasis role="bold">``simple-double--three---four----\'\'</emphasis> aa<!-- /@w -->
`<!-- /@w -->`simple-double-<!-- /@w -->-three---four----\'<!-- /@w -->\'

</mathphrase></informalequation>
<informalequation><mathphrase>&#252; &#220; &#241; &#226; &#233; &#333; &#236; &#233; i j &#274;`
&#322; &#262;, &#262;, &#231; a\'\' &#551; &#229; a[
&#259; a_ &#7841; &#462; &#261; a<superscript>h</superscript><subscript>l</subscript>

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
