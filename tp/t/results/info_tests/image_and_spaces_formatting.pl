use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'image_and_spaces_formatting'} = {
  'contents' => [
    {
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
                  'text' => 'Top'
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
          'cmdname' => 'image',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'words'
                }
              ],
              'type' => 'brace_arg'
            }
          ],
          'extra' => {
            'input_encoding_name' => 'utf-8'
          },
          'source_info' => {
            'line_nr' => 3
          }
        },
        {
          'text' => ' '
        },
        {
          'cmdname' => 'image',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'words'
                }
              ],
              'type' => 'brace_arg'
            }
          ],
          'extra' => {
            'input_encoding_name' => 'utf-8'
          },
          'source_info' => {
            'line_nr' => 3
          }
        },
        {
          'text' => ' '
        },
        {
          'cmdname' => 'image',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'words'
                }
              ],
              'type' => 'brace_arg'
            }
          ],
          'extra' => {
            'input_encoding_name' => 'utf-8'
          },
          'source_info' => {
            'line_nr' => 3
          }
        },
        {
          'text' => ' '
        },
        {
          'cmdname' => 'image',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'words'
                }
              ],
              'type' => 'brace_arg'
            }
          ],
          'extra' => {
            'input_encoding_name' => 'utf-8'
          },
          'source_info' => {
            'line_nr' => 3
          }
        },
        {
          'text' => ' '
        },
        {
          'cmdname' => 'image',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'words'
                }
              ],
              'type' => 'brace_arg'
            }
          ],
          'extra' => {
            'input_encoding_name' => 'utf-8'
          },
          'source_info' => {
            'line_nr' => 3
          }
        },
        {
          'text' => ' '
        },
        {
          'cmdname' => 'image',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'words'
                }
              ],
              'type' => 'brace_arg'
            }
          ],
          'extra' => {
            'input_encoding_name' => 'utf-8'
          },
          'source_info' => {
            'line_nr' => 3
          }
        },
        {
          'text' => ' '
        },
        {
          'cmdname' => 'image',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'words'
                }
              ],
              'type' => 'brace_arg'
            }
          ],
          'extra' => {
            'input_encoding_name' => 'utf-8'
          },
          'source_info' => {
            'line_nr' => 3
          }
        },
        {
          'text' => '
'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'Some text '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'words'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 5
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'words'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 5
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'words'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 5
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'words'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 5
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'words'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 5
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'words'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 5
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'words'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 5
              }
            },
            {
              'text' => '.
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
              'text' => 'Some text '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'words'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 7
              }
            },
            {
              'text' => ' text aaaaaaaaa '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'words'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 7
              }
            },
            {
              'text' => ' text bbbbbbbbbbb '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'words'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 7
              }
            },
            {
              'text' => ' text ccccccccccccc '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'words'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 7
              }
            },
            {
              'text' => ' text ddddddddddddd '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'words'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 7
              }
            },
            {
              'text' => ' text eeeeeeeeeeeeeee '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'words'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 7
              }
            },
            {
              'text' => ' text fffffffffff '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'words'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 7
              }
            },
            {
              'text' => '.
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
              'text' => 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'words'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 9
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
              'text' => 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBBBBBB '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'words'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 11
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
              'text' => 'Text. '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'words'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 13
              }
            },
            {
              'text' => '       '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'words'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 13
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 1
      }
    }
  ],
  'type' => 'document_root'
};

$result_texis{'image_and_spaces_formatting'} = '@node Top

@image{words} @image{words} @image{words} @image{words} @image{words} @image{words} @image{words}

Some text @image{words} @image{words} @image{words} @image{words} @image{words} @image{words} @image{words}.

Some text @image{words} text aaaaaaaaa @image{words} text bbbbbbbbbbb @image{words} text ccccccccccccc @image{words} text ddddddddddddd @image{words} text eeeeeeeeeeeeeee @image{words} text fffffffffff @image{words}.

AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA @image{words}

AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBBBBBB @image{words}

Text. @image{words}       @image{words}.

';


$result_texts{'image_and_spaces_formatting'} = '
words words words words words words words

Some text words words words words words words words.

Some text words text aaaaaaaaa words text bbbbbbbbbbb words text ccccccccccccc words text ddddddddddddd words text eeeeeeeeeeeeeee words text fffffffffff words.

AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA words

AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBBBBBB words

Text. words       words.

';

$result_nodes{'image_and_spaces_formatting'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_menus{'image_and_spaces_formatting'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'image_and_spaces_formatting'} = [];


$result_floats{'image_and_spaces_formatting'} = {};



$result_converted{'info'}->{'image_and_spaces_formatting'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

This is an image words. This is an image words. This is an image words. This is an image words. This is an image words. This is an image words. This is an image words.

Some text This is an image words. This is an image words. This is an image words. This is an image words. This is an image words. This is an image words. This is an image words..

   Some text This is an image words. text aaaaaaaaa This is an image words. text bbbbbbbbbbb This is an image words. text ccccccccccccc This is an image words. text
ddddddddddddd This is an image words. text eeeeeeeeeeeeeee This is an image words. text fffffffffff This is an image words..

   AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA This is an image words.

   AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBBBBBB
This is an image words.
   Text.  This is an image words.  This is an image words..


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
