use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_in_misc_commands'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'text',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'atext
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
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
            'arg_line' => ' text 
'
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
          'args' => [
            {
              'parent' => {},
              'text' => 'Top',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
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
            'arg_line' => ' Top
'
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
      'extra' => {
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
        'line_nr' => 9,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'top atext'
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
      'cmdname' => 'top',
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Comment like: atext'
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
          'cmdname' => 'subheading',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'Text line followed by a comment on the same line and another below '
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' comment @text{}
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' comment @text{}
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' comment @text{}
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' comment @text{}
'
                ]
              },
              'parent' => {}
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
              'parent' => {},
              'text' => 'en',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'en
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
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
            'arg_line' => ' en 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 16,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'documentlanguagecommand',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '@documentlanguage
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
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
            'arg_line' => ' documentlanguagecommand 
'
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'documentlanguage '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'en'
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
              'cmdname' => 'documentlanguage',
              'extra' => {
                'spaces_before_argument' => '  ',
                'text_arg' => 'en'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 23,
                'macro' => ''
              }
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
              'parent' => {},
              'text' => 'documentlanguage on its line
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'en'
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
              'cmdname' => 'documentlanguage',
              'extra' => {
                'spaces_before_argument' => '  ',
                'text_arg' => 'en'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 26,
                'macro' => 'documentlanguagecommand'
              }
            },
            {
              'parent' => {},
              'text' => 'line following documentlanguage
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
              'parent' => {},
              'text' => 'pagesizesarg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '200mm,150mm
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 31,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' pagesizesarg
'
          },
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
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'afourpapermacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '@afourpaper
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 35,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' afourpapermacro 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 33,
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
                  'parent' => {},
                  'text' => '200mm,150mm'
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
          'cmdname' => 'pagesizes',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 37,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'afourpaper',
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 38,
            'macro' => 'afourpapermacro'
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'on line following headings atext'
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
          'cmdname' => 'headings',
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'on line following oddfooting atext'
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
          'cmdname' => 'oddfooting',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 40,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'on line following everyheading atext'
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
          'cmdname' => 'everyheading',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 41,
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
              'parent' => {},
              'text' => 'needarg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '0.1
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
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
            'arg_line' => ' needarg
'
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '0.1'
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
          'cmdname' => 'need',
          'extra' => {
            'misc_args' => [
              '0.1'
            ],
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
          'args' => [
            {
              'parent' => {},
              'text' => 'raisesectionsmacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '@raisesections
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
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
            'arg_line' => ' raisesectionsmacro 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 49,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'raisesections',
          'parent' => {}
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'lowersectionsmacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '@lowersections
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 55,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' lowersectionsmacro 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 53,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'lowersections',
          'parent' => {}
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
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'definfoenclose phoo,//,\\\\  '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'phoo,//,\\\\'
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
              'cmdname' => 'definfoenclose',
              'extra' => {
                'misc_args' => [
                  'phoo',
                  '//',
                  '\\\\'
                ],
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 58,
                'macro' => ''
              }
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
                      'text' => 'bar'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'phoo',
              'extra' => {
                'begin' => '//',
                'end' => '\\\\'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 60,
                'macro' => ''
              },
              'type' => 'definfoenclose_command'
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
          'args' => [
            {
              'parent' => {},
              'text' => 'definfoenclosename',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'phi
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 64,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' definfoenclosename 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 62,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'phi,:,:'
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
          'cmdname' => 'definfoenclose',
          'extra' => {
            'misc_args' => [
              'phi',
              ':',
              ':'
            ],
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
          'contents' => [
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
              'cmdname' => 'phi',
              'extra' => {
                'begin' => ':',
                'end' => ':'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 67,
                'macro' => ''
              },
              'type' => 'definfoenclose_command'
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
          'args' => [
            {
              'parent' => {},
              'text' => 'strongmacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '@strong
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 71,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' strongmacro 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 69,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'strongname',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'strong
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 74,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' strongname 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 72,
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'very strong'
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
                'line_nr' => 76,
                'macro' => 'strongmacro'
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'strong,(strong:,:)'
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
          'cmdname' => 'definfoenclose',
          'extra' => {
            'misc_args' => [
              'strong',
              '(strong:',
              ':)'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 78,
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => ' is it really strong? '
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'strong',
              'extra' => {
                'begin' => '(strong:',
                'end' => ':)'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 80,
                'macro' => 'strongmacro'
              },
              'type' => 'definfoenclose_command'
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
                      'parent' => {},
                      'text' => 'something before kbdinputstyle'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'kbd',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 82,
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
          'args' => [
            {
              'parent' => {},
              'text' => 'kbdinputstylearg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'code
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 86,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' kbdinputstylearg 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 84,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'code'
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
          'cmdname' => 'kbdinputstyle',
          'extra' => {
            'misc_args' => [
              'code'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 87,
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'truc'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'kbd',
              'extra' => {
                'code' => 1
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
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'example',
          'contents' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'example'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'kbd',
                  'extra' => {
                    'code' => 1
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
'
                }
              ],
              'parent' => {},
              'type' => 'preformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'example'
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
                'text_arg' => 'example'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 93,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 91,
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
              'parent' => {},
              'text' => 'asisarg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'asis
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 97,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' asisarg 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 95,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'zero',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '0
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 100,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' zero 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 98,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'nonearg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'none
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 103,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' nonearg 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 101,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'four',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '4
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 106,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' four 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 104,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'six',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '6
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 109,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' six 
'
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'asis'
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
          'cmdname' => 'paragraphindent',
          'extra' => {
            'misc_args' => [
              'asis'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 111,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '0'
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
          'cmdname' => 'paragraphindent',
          'extra' => {
            'misc_args' => [
              '0'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 112,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'none'
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
          'cmdname' => 'paragraphindent',
          'extra' => {
            'misc_args' => [
              'none'
            ],
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '4'
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
          'cmdname' => 'paragraphindent',
          'extra' => {
            'misc_args' => [
              '4'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 114,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'none'
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
          'cmdname' => 'firstparagraphindent',
          'extra' => {
            'misc_args' => [
              'none'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 115,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '6'
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
          'cmdname' => 'exampleindent',
          'extra' => {
            'misc_args' => [
              '6'
            ],
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
          'args' => [
            {
              'parent' => {},
              'text' => 'endarg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'end
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
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
            'arg_line' => ' endarg 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 118,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'separatearg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'separate 
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
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
            'arg_line' => ' separatearg 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 121,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'end'
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
          'cmdname' => 'footnotestyle',
          'extra' => {
            'misc_args' => [
              'end'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 124,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'separate'
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
          'cmdname' => 'footnotestyle',
          'extra' => {
            'misc_args' => [
              'separate'
            ],
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
          'args' => [
            {
              'parent' => {},
              'text' => 'onarg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'on
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
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
            'arg_line' => ' onarg 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 127,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'offarg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'off
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
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
            'arg_line' => ' offarg 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 130,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'on'
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
          'cmdname' => 'frenchspacing',
          'extra' => {
            'misc_args' => [
              'on'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 133,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'off'
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
          'cmdname' => 'frenchspacing',
          'extra' => {
            'misc_args' => [
              'off'
            ],
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
          'args' => [
            {
              'parent' => {},
              'text' => ' accepts 10 or 11
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'c',
          'extra' => {
            'misc_args' => [
              ' accepts 10 or 11
'
            ]
          },
          'parent' => {}
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'ten',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '10
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 139,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' ten 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 137,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '10'
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
          'cmdname' => 'fonttextsize',
          'extra' => {
            'misc_args' => [
              '10'
            ],
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
          'args' => [
            {
              'parent' => {},
              'text' => ' accept false or true
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'c',
          'extra' => {
            'misc_args' => [
              ' accept false or true
'
            ]
          },
          'parent' => {}
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'falsearg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'false
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
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
            'arg_line' => ' falsearg 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 142,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'truearg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'true
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
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
            'arg_line' => ' truearg
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 145,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'false'
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
          'cmdname' => 'allowcodebreaks',
          'extra' => {
            'misc_args' => [
              'false'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 148,
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
                  'parent' => {},
                  'text' => 'true'
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
          'cmdname' => 'allowcodebreaks',
          'extra' => {
            'misc_args' => [
              'true'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 150,
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
              'parent' => {},
              'text' => 'pagemacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '@page
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 154,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' pagemacro 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 152,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'noindentmacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '@noindent
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 157,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' noindentmacro 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 155,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'refillmacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '@refill
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 160,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' refillmacro 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 158,
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
          'contents' => [
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'page '
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => ' on page line
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'page',
          'parent' => {}
        },
        {
          'contents' => [
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'noindent '
            },
            {
              'cmdname' => 'noindent',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 163,
                'macro' => 'noindentmacro'
              }
            },
            {
              'parent' => {},
              'text' => ' ',
              'type' => 'ignorable_spaces_after_command'
            },
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'refill '
            },
            {
              'cmdname' => 'refill',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' something
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
          'cmdname' => 'noindent',
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 165,
            'macro' => 'noindentmacro'
          }
        },
        {
          'parent' => {},
          'text' => '     ',
          'type' => 'ignorable_spaces_after_command'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'noindent at beginning of line
'
            },
            {
              'cmdname' => 'noindent',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 166,
                'macro' => 'noindentmacro'
              }
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'ignorable_spaces_after_command'
            },
            {
              'parent' => {},
              'text' => 'noindent on the preceding line
'
            },
            {
              'parent' => {},
              'text' => '  '
            },
            {
              'cmdname' => 'noindent',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 168,
                'macro' => 'noindentmacro'
              }
            },
            {
              'parent' => {},
              'text' => '    ',
              'type' => 'ignorable_spaces_after_command'
            },
            {
              'parent' => {},
              'text' => 'noindent after space at beginning of line
'
            }
          ],
          'extra' => {
            'noindent' => 1
          },
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => '         page at beginning of line
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'page',
          'parent' => {}
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'page',
          'parent' => {}
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'After page on its own line.
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
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'page '
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'page',
          'parent' => {}
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'two spaces   '
            },
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'noindent '
            },
            {
              'cmdname' => 'noindent',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 174,
                'macro' => 'noindentmacro'
              }
            },
            {
              'parent' => {},
              'text' => '    ',
              'type' => 'ignorable_spaces_after_command'
            },
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'refill '
            },
            {
              'cmdname' => 'refill',
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
          'args' => [
            {
              'parent' => {},
              'text' => 'contentsmacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '@contents
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 178,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' contentsmacro 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 176,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'contents',
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 179,
            'macro' => 'contentsmacro'
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
              'parent' => {},
              'text' => ' @atext{}
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'vskip',
          'extra' => {
            'misc_args' => [
              ' @atext{}
'
            ]
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
          'args' => [
            {
              'parent' => {},
              'text' => 'exdentmacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '@exdent
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 185,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' exdentmacro 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 183,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'line after exdent'
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
          'cmdname' => 'exdent',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 186,
            'macro' => 'exdentmacro'
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
              'parent' => {},
              'text' => 'two',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '2
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 190,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' two 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 188,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '2'
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
          'cmdname' => 'sp',
          'extra' => {
            'misc_args' => [
              '2'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 191,
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
              'parent' => {},
              'text' => 'resultmacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '@result
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 195,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' resultmacro 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 193,
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
              'parent' => {},
              'text' => '@resultmacro',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'clickstyle',
          'extra' => {
            'arg_line' => ' @resultmacro{}
',
            'misc_args' => [
              '@resultmacro'
            ]
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 197,
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
          'cmdname' => 'menu',
          'contents' => [
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'node atext'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'node-atext'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 200,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'menu'
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
                'text_arg' => 'menu'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 201,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 199,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
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
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'node atext'
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
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'node-atext'
          }
        ],
        'normalized' => 'node-atext',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 203,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'chapter'
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
      'cmdname' => 'chapter',
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
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'contents',
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 206,
            'macro' => 'contentsmacro'
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
              'parent' => {},
              'text' => 'shortcontentsmacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '@shortcontents
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 210,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' shortcontentsmacro 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 208,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'shortcontents',
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 211,
            'macro' => 'shortcontentsmacro'
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
              'parent' => {},
              'text' => 'byemacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '@bye
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 215,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' byemacro
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 213,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 204,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'misc_arg'
        }
      ],
      'cmdname' => 'bye',
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'};
$result_trees{'macro_in_misc_commands'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'macro_in_misc_commands'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'macro_in_misc_commands'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'};
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[2]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[2]{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[4];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[4];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[4]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[4];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[5];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[5];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[5];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[7];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[7];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[7]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[8]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[9];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[9]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[9]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[9]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[9]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[9];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[9];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[9]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[10]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[11];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[11];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[11]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[11]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[11]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[11]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[11];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[11]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[12]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[13];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[13]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[13];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[13]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[13]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[13]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[13]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[13]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[13];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[13]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[14]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[15]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[15]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[15]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[15];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[15]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[16];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[16]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[17]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[17]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[17]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[17];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[17]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[18]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[18]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[18];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[18]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[19]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[19]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[19]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[19];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[19]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[20]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[21]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[21];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[21]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[21];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[21]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[21]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[21]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[21]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[21]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[21];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[21]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[22]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[23]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[23]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[23]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[23];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[23]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[24]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[25]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[25];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[25]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[25];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[25]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[25]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[25]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[25]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[25]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[25];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[25]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[26]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[26];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[26]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[27]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[27];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[27];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[27]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[27]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[27]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[27]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[27]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[27];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[27]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[28]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[28];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[28]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[29]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[30]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[30];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[30]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[30];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[30]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[30]{'contents'}[2]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[30]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[30]{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[30]{'contents'}[2]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[30];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[30]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[31]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[32]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[32]{'contents'}[0]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[32]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[32]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[32]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[32];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[32]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[32];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[32]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[33]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[34]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[34];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[34]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[34];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[34]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[34]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[34]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[34]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[34]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[34];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[34]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[35]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[35]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[35]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[35];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[35]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[36]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[37]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[37]{'contents'}[0]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[37]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[37]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[37]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[37];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[37]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[37];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[37]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[38]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[39]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[39];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[39]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[39];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[39]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[39]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[39]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[39]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[39]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[39];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[39]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[40]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[40];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[40]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[40];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[40]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[40]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[40]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[40]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[40]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[40];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[40]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[41]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[42]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[42]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[42]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[42];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[42]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[42];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[42]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[43]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[44]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[44]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[44]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[44];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[44]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[45]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[46]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[46]{'contents'}[0]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[46]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[46]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[46]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[46];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[46]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[46];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[46]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[47]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[48]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[48]{'contents'}[0]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[48]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[48]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[48]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[48];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[48]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[48];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[48]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[49]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[50]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[50];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[50]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[50];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[50]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[50]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[50]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[50]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[50]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[50];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[50]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[51]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[51]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[51]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[51];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[51]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[52]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[53]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[53]{'contents'}[0]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[53]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[53]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[53]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[53];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[53]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[53];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[53]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[54]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[55]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[55];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[55]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[55]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[55]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[55]{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[55]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[55]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[55]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[55]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[55]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[55];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[55]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[55]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[55]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[55]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[55]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[55];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[55]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[56]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[57]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[57];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[57]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[57];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[57]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[57]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[57]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[57]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[57]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[57];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[57]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[58]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[58];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[58]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[58];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[58]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[58]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[58]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[58]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[58]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[58];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[58]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[59]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[59];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[59]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[59];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[59]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[59]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[59]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[59]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[59]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[59];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[59]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[60]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[60];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[60]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[60];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[60]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[60]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[60]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[60]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[60]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[60];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[60]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[61]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[61];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[61]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[61];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[61]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[61]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[61]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[61]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[61]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[61];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[61]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[62]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[63]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[63]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[63]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[63];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[63]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[64]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[64]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[64]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[64];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[64]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[65]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[65]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[65]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[65];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[65]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[66]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[66]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[66]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[66];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[66]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[67]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[67]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[67]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[67];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[67]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[68]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[68]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[68]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[68];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[68]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[69]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[70]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[70];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[70]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[70];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[70]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[70]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[70]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[70]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[70]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[70];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[70]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[71]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[71];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[71]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[71];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[71]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[71]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[71]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[71]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[71]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[71];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[71]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[72]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[72]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[72]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[72];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[72]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[73]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[73]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[73]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[73];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[73]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[74]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[75]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[75];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[75]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[75];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[75]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[75]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[75]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[75]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[75]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[75];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[75]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[76]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[76];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[76]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[76];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[76]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[76]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[76]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[76]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[76]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[76];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[76]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[77]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[77]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[77]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[77];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[77]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[78]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[78]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[78]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[78];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[78]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[79]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[80]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[80];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[80]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[81]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[81];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[81]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[81];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[81]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[81]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[81]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[81]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[81]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[81];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[81]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[82]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[82]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[82]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[82];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[82]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[83]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[83];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[83]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[84]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[84];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[84]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[84];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[84]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[84]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[84]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[84]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[84]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[84];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[84]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[85]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[85];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[85]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[85];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[85]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[85]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[85]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[85]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[85]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[85];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[85]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[86]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[86]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[86]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[86];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[86]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[87]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[88]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[88]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[88]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[88];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[88]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[89]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[90]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[90];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[90]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[90];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[90]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[90]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[90]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[90]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[90]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[90];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[90]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[91]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[91];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[91]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[91];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[91]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[91]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[91]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[91]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[91]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[91];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[91]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[92]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[92];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[92]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[92];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[92]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[92]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[92]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[92]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[92]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[92];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[92]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[93]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[94]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[94];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[94]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[94];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[94]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[95]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[95];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[95]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[96]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[96];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[96]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[96];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[96]{'contents'}[2]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[96];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[96]{'contents'}[3]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[96];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[96]{'contents'}[4]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[96];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[96]{'contents'}[5]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[96];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[96]{'contents'}[6]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[96];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[96]{'contents'}[7]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[96];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[96]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[97]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[98]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[99]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[100]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[100];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[100]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[100];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[100]{'contents'}[2]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[100];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[100]{'contents'}[3]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[100];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[100]{'contents'}[4]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[100];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[100]{'contents'}[5]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[100];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[100]{'contents'}[6]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[100];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[100]{'contents'}[7]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[100];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[100]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[101]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[101];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[101]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[102]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[102];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[102]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[103]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[103];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[103]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[104]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[105]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[105];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[105]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[105];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[105]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[106]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[106];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[106]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[107]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[107];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[107]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[107];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[107]{'contents'}[2]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[107];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[107]{'contents'}[3]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[107];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[107]{'contents'}[4]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[107];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[107]{'contents'}[5]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[107];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[107]{'contents'}[6]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[107];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[107]{'contents'}[7]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[107];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[107]{'contents'}[8]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[107];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[107]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[108]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[109]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[109];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[109]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[109];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[109]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[109]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[109]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[109]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[109]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[109];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[109]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[110]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[110];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[110]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[111]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[112]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[112];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[112]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[113]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[114]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[114];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[114]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[114];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[114]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[114]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[114]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[114]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[114]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[114];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[114]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[115]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[115]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[115]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[115];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[115]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[116]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[117]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[117];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[117]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[117];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[117]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[117]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[117]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[117]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[117]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[117];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[117]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[118]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[118]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[118]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[118];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[118]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[119]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[120]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[120];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[120]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[120];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[120]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[120]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[120]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[120]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[120]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[120];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[120]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[121]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[122]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[122];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[122]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[123]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0]{'args'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0]{'args'}[3];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0]{'args'}[3];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[125]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'parent'} = $result_trees{'macro_in_misc_commands'};
$result_trees{'macro_in_misc_commands'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[3]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[3];
$result_trees{'macro_in_misc_commands'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'macro_in_misc_commands'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'macro_in_misc_commands'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[3]{'parent'} = $result_trees{'macro_in_misc_commands'};
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[3];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[3];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[3];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[4];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[6];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[6];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[1];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[6];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[4];
$result_trees{'macro_in_misc_commands'}{'contents'}[4]{'parent'} = $result_trees{'macro_in_misc_commands'};
$result_trees{'macro_in_misc_commands'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'macro_in_misc_commands'}{'contents'}[5];
$result_trees{'macro_in_misc_commands'}{'contents'}[5]{'parent'} = $result_trees{'macro_in_misc_commands'};

$result_texis{'macro_in_misc_commands'} = '@macro text 
atext
@end macro

@macro Top
Top
@end macro

@node Top
@top top atext
@subheading Comment like: atext

Text line followed by a comment on the same line and another below @c comment @text{}
@c comment @text{}

@macro en 
en
@end macro
@macro documentlanguagecommand 
@documentlanguage
@end macro

documentlanguage @documentlanguage  en

documentlanguage on its line
@documentlanguage  en
line following documentlanguage

@macro pagesizesarg
200mm,150mm
@end macro

@macro afourpapermacro 
@afourpaper
@end macro

@pagesizes 200mm,150mm
@afourpaper
@headings on line following headings atext
@oddfooting on line following oddfooting atext
@everyheading on line following everyheading atext

@macro needarg
0.1
@end macro

@need 0.1

@macro raisesectionsmacro 
@raisesections
@end macro
@raisesections
@macro lowersectionsmacro 
@lowersections
@end macro
@lowersections

@@definfoenclose phoo,//,\\\\  @definfoenclose phoo,//,\\\\

@phoo{bar}

@macro definfoenclosename 
phi
@end macro
@definfoenclose phi,:,:

@phi{bar}

@macro strongmacro 
@strong
@end macro
@macro strongname 
strong
@end macro

@strong{very strong}

@definfoenclose strong,(strong:,:)

@strong{ is it really strong? }

@kbd{something before kbdinputstyle}

@macro kbdinputstylearg 
code
@end macro
@kbdinputstyle code

@kbd{truc}

@example
@kbd{example}
@end example

@macro asisarg 
asis
@end macro
@macro zero 
0
@end macro
@macro nonearg 
none
@end macro
@macro four 
4
@end macro
@macro six 
6
@end macro

@paragraphindent asis
@paragraphindent 0
@paragraphindent none
@paragraphindent 4
@firstparagraphindent none
@exampleindent 6

@macro endarg 
end
@end macro
@macro separatearg 
separate 
@end macro
@footnotestyle end
@footnotestyle separate 

@macro onarg 
on
@end macro
@macro offarg 
off
@end macro
@frenchspacing on
@frenchspacing off

@c accepts 10 or 11
@macro ten 
10
@end macro
@fonttextsize 10
@c accept false or true
@macro falsearg 
false
@end macro
@macro truearg
true
@end macro
@allowcodebreaks false

@allowcodebreaks true

@macro pagemacro 
@page
@end macro
@macro noindentmacro 
@noindent
@end macro
@macro refillmacro 
@refill
@end macro

@@page @page on page line
@@noindent @noindent @@refill @refill something

@noindent     noindent at beginning of line
@noindent
noindent on the preceding line
  @noindent    noindent after space at beginning of line
@page         page at beginning of line
@page
After page on its own line.

@@page @page
two spaces   @@noindent @noindent    @@refill @refill

@macro contentsmacro 
@contents
@end macro
@contents

@vskip @atext{}

@macro exdentmacro 
@exdent
@end macro
@exdent line after exdent

@macro two 
2
@end macro
@sp 2

@macro resultmacro 
@result
@end macro

@clickstyle @resultmacro{}

@menu
* node atext::
@end menu

@node node atext
@chapter chapter

@contents

@macro shortcontentsmacro 
@shortcontents
@end macro
@shortcontents

@macro byemacro
@bye
@end macro

@bye
';


$result_texts{'macro_in_misc_commands'} = '

top atext
*********
Comment like: atext
-------------------

Text line followed by a comment on the same line and another below 

documentlanguage 
documentlanguage on its line
line following documentlanguage







@definfoenclose phoo,//,\\\\  
bar


bar


very strong


 is it really strong? 

something before kbdinputstyle


truc

example








@page 
@noindent @refill  something

noindent at beginning of line
noindent on the preceding line
  noindent after space at beginning of line


After page on its own line.

@page 
two spaces   @noindent @refill 



line after exdent






* node atext::

1 chapter
*********




';

$result_sectioning{'macro_in_misc_commands'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            },
            'structure' => {}
          }
        },
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'node-atext'
                  },
                  'structure' => {}
                }
              },
              'structure' => {
                'section_level' => 1,
                'section_number' => 1,
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'macro_in_misc_commands'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'macro_in_misc_commands'}{'structure'}{'section_childs'}[0];
$result_sectioning{'macro_in_misc_commands'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'macro_in_misc_commands'}{'structure'}{'section_childs'}[0];
$result_sectioning{'macro_in_misc_commands'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'macro_in_misc_commands'}{'structure'}{'section_childs'}[0];
$result_sectioning{'macro_in_misc_commands'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'macro_in_misc_commands'};

$result_nodes{'macro_in_misc_commands'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'menus' => [
      {
        'cmdname' => 'menu'
      }
    ],
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'normalized' => 'node-atext'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'macro_in_misc_commands'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'macro_in_misc_commands'};
$result_nodes{'macro_in_misc_commands'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'macro_in_misc_commands'};
$result_nodes{'macro_in_misc_commands'}{'structure'}{'node_next'} = $result_nodes{'macro_in_misc_commands'}{'structure'}{'menu_child'};

$result_menus{'macro_in_misc_commands'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'node-atext'
      },
      'structure' => {
        'menu_up' => {},
        'menu_up_hash' => {
          'Top' => 1
        }
      }
    }
  }
};
$result_menus{'macro_in_misc_commands'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'macro_in_misc_commands'};

$result_errors{'macro_in_misc_commands'} = [
  {
    'error_line' => 'warning: @documentlanguage should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 23,
    'macro' => '',
    'text' => '@documentlanguage should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @headings: on line following headings atext
',
    'file_name' => '',
    'line_nr' => 39,
    'macro' => '',
    'text' => 'bad argument to @headings: on line following headings atext',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'file_name' => '',
    'line_nr' => 58,
    'macro' => '',
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @definfoenclose should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 58,
    'macro' => '',
    'text' => '@definfoenclose should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'file_name' => '',
    'line_nr' => 65,
    'macro' => '',
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'file_name' => '',
    'line_nr' => 78,
    'macro' => '',
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: multiple @footnotestyle
',
    'file_name' => '',
    'line_nr' => 125,
    'macro' => '',
    'text' => 'multiple @footnotestyle',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @page should only appear at the beginning of a line (possibly involving @pagemacro)
',
    'file_name' => '',
    'line_nr' => 162,
    'macro' => 'pagemacro',
    'text' => '@page should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @refill is obsolete (possibly involving @refillmacro)
',
    'file_name' => '',
    'line_nr' => 163,
    'macro' => 'refillmacro',
    'text' => '@refill is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @page should only appear at the beginning of a line (possibly involving @pagemacro)
',
    'file_name' => '',
    'line_nr' => 173,
    'macro' => 'pagemacro',
    'text' => '@page should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @refill is obsolete (possibly involving @refillmacro)
',
    'file_name' => '',
    'line_nr' => 174,
    'macro' => 'refillmacro',
    'text' => '@refill is obsolete',
    'type' => 'warning'
  }
];


$result_floats{'macro_in_misc_commands'} = {};


1;
