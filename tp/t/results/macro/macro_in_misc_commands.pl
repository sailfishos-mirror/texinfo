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
              'text' => 'text',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => 'atext
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' text 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
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
              'text' => 'Top',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => 'Top
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' Top
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 5,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Top'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
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
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
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
              'text' => 'top atext'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
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
                  'text' => 'Comment like: atext'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'subheading',
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'Text line followed by a comment on the same line and another below '
            },
            {
              'args' => [
                {
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
              }
            },
            {
              'args' => [
                {
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
              }
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
          'args' => [
            {
              'text' => 'en',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => 'en
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 18,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' en 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 16,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'text' => 'documentlanguagecommand',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '@documentlanguage
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' documentlanguagecommand 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 19,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'documentlanguage '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'en'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'documentlanguage',
              'extra' => {
                'text_arg' => 'en'
              },
              'info' => {
                'spaces_before_argument' => '  '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 23,
                'macro' => ''
              }
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
              'text' => 'documentlanguage on its line
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'en'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'documentlanguage',
              'extra' => {
                'text_arg' => 'en'
              },
              'info' => {
                'spaces_before_argument' => '  '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 26,
                'macro' => 'documentlanguagecommand'
              }
            },
            {
              'text' => 'line following documentlanguage
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
          'args' => [
            {
              'text' => 'pagesizesarg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '200mm,150mm
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 31,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' pagesizesarg
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 29,
            'macro' => ''
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
              'text' => 'afourpapermacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '@afourpaper
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 35,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' afourpapermacro 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 33,
            'macro' => ''
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
              'contents' => [
                {
                  'text' => '200mm,150mm'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'pagesizes',
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 37,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'afourpaper',
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
                  'text' => 'on line following headings atext'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'headings',
          'info' => {
            'spaces_before_argument' => ' '
          },
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
                  'text' => 'on line following oddfooting atext'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'oddfooting',
          'info' => {
            'spaces_before_argument' => ' '
          },
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
                  'text' => 'on line following everyheading atext'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'everyheading',
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 41,
            'macro' => ''
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
              'text' => 'needarg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '0.1
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' needarg
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 43,
            'macro' => ''
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
              'contents' => [
                {
                  'text' => '0.1'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'need',
          'extra' => {
            'misc_args' => [
              '0.1'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 47,
            'macro' => ''
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
              'text' => 'raisesectionsmacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '@raisesections
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 51,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' raisesectionsmacro 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 49,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'raisesections'
        },
        {
          'args' => [
            {
              'text' => 'lowersectionsmacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '@lowersections
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 55,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' lowersectionsmacro 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 53,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'lowersections'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => '@'
            },
            {
              'text' => 'definfoenclose phoo,//,\\\\  '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'phoo,//,\\\\'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'definfoenclose',
              'extra' => {
                'misc_args' => [
                  'phoo',
                  '//',
                  '\\\\'
                ]
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 58,
                'macro' => ''
              }
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
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'bar'
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'phoo',
              'extra' => {
                'begin' => '//',
                'end' => '\\\\'
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 60,
                'macro' => ''
              },
              'type' => 'definfoenclose_command'
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
          'args' => [
            {
              'text' => 'definfoenclosename',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => 'phi
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 64,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' definfoenclosename 
'
          },
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
                  'text' => 'phi,:,:'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'definfoenclose',
          'extra' => {
            'misc_args' => [
              'phi',
              ':',
              ':'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 65,
            'macro' => ''
          }
        },
        {
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
                      'text' => 'bar'
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'phi',
              'extra' => {
                'begin' => ':',
                'end' => ':'
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 67,
                'macro' => ''
              },
              'type' => 'definfoenclose_command'
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
          'args' => [
            {
              'text' => 'strongmacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '@strong
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 71,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' strongmacro 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 69,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'text' => 'strongname',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => 'strong
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 74,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' strongname 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 72,
            'macro' => ''
          }
        },
        {
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
                      'text' => 'very strong'
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'strong',
              'source_info' => {
                'file_name' => '',
                'line_nr' => 76,
                'macro' => 'strongmacro'
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
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'strong,(strong:,:)'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'definfoenclose',
          'extra' => {
            'misc_args' => [
              'strong',
              '(strong:',
              ':)'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 78,
            'macro' => ''
          }
        },
        {
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
                      'text' => ' is it really strong? '
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'strong',
              'extra' => {
                'begin' => '(strong:',
                'end' => ':)'
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 80,
                'macro' => 'strongmacro'
              },
              'type' => 'definfoenclose_command'
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
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'something before kbdinputstyle'
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'kbd',
              'source_info' => {
                'file_name' => '',
                'line_nr' => 82,
                'macro' => ''
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
          'args' => [
            {
              'text' => 'kbdinputstylearg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => 'code
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 86,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' kbdinputstylearg 
'
          },
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
                  'text' => 'code'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'kbdinputstyle',
          'extra' => {
            'misc_args' => [
              'code'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 87,
            'macro' => ''
          }
        },
        {
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
                      'text' => 'truc'
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'kbd',
              'extra' => {
                'code' => 1
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 89,
                'macro' => ''
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
          'args' => [
            {
              'info' => {
                'spaces_after_argument' => '
'
              },
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
                          'text' => 'example'
                        }
                      ],
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'kbd',
                  'extra' => {
                    'code' => 1
                  },
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 92,
                    'macro' => ''
                  }
                },
                {
                  'text' => '
'
                }
              ],
              'type' => 'preformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'example'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'example'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 93,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => '',
            'line_nr' => 91,
            'macro' => ''
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
              'text' => 'asisarg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => 'asis
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 97,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' asisarg 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 95,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'text' => 'zero',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '0
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 100,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' zero 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 98,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'text' => 'nonearg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => 'none
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 103,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' nonearg 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 101,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'text' => 'four',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '4
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 106,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' four 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 104,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'text' => 'six',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '6
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 109,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' six 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 107,
            'macro' => ''
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
              'contents' => [
                {
                  'text' => 'asis'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'paragraphindent',
          'extra' => {
            'misc_args' => [
              'asis'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
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
                  'text' => '0'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'paragraphindent',
          'extra' => {
            'misc_args' => [
              '0'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
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
                  'text' => 'none'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'paragraphindent',
          'extra' => {
            'misc_args' => [
              'none'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
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
                  'text' => '4'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'paragraphindent',
          'extra' => {
            'misc_args' => [
              '4'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
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
                  'text' => 'none'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'firstparagraphindent',
          'extra' => {
            'misc_args' => [
              'none'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
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
                  'text' => '6'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'exampleindent',
          'extra' => {
            'misc_args' => [
              '6'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 116,
            'macro' => ''
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
              'text' => 'endarg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => 'end
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 120,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' endarg 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 118,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'text' => 'separatearg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => 'separate 
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 123,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' separatearg 
'
          },
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
                  'text' => 'end'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'footnotestyle',
          'extra' => {
            'misc_args' => [
              'end'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
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
                  'text' => 'separate'
                }
              ],
              'info' => {
                'spaces_after_argument' => ' 
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'footnotestyle',
          'extra' => {
            'misc_args' => [
              'separate'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 125,
            'macro' => ''
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
              'text' => 'onarg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => 'on
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 129,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' onarg 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 127,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'text' => 'offarg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => 'off
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 132,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' offarg 
'
          },
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
                  'text' => 'on'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'frenchspacing',
          'extra' => {
            'misc_args' => [
              'on'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
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
                  'text' => 'off'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'frenchspacing',
          'extra' => {
            'misc_args' => [
              'off'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 134,
            'macro' => ''
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
          }
        },
        {
          'args' => [
            {
              'text' => 'ten',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '10
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 139,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' ten 
'
          },
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
                  'text' => '10'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'fonttextsize',
          'extra' => {
            'misc_args' => [
              '10'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 140,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
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
          }
        },
        {
          'args' => [
            {
              'text' => 'falsearg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => 'false
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 144,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' falsearg 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 142,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'text' => 'truearg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => 'true
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 147,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' truearg
'
          },
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
                  'text' => 'false'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'allowcodebreaks',
          'extra' => {
            'misc_args' => [
              'false'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 148,
            'macro' => ''
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
              'contents' => [
                {
                  'text' => 'true'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'allowcodebreaks',
          'extra' => {
            'misc_args' => [
              'true'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 150,
            'macro' => ''
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
              'text' => 'pagemacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '@page
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 154,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' pagemacro 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 152,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'text' => 'noindentmacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '@noindent
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 157,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' noindentmacro 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 155,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'text' => 'refillmacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '@refill
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 160,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' refillmacro 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 158,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => '@'
            },
            {
              'text' => 'page '
            }
          ],
          'type' => 'paragraph'
        },
        {
          'args' => [
            {
              'text' => ' on page line
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'page'
        },
        {
          'contents' => [
            {
              'cmdname' => '@'
            },
            {
              'text' => 'noindent '
            },
            {
              'cmdname' => 'noindent',
              'source_info' => {
                'file_name' => '',
                'line_nr' => 163,
                'macro' => 'noindentmacro'
              }
            },
            {
              'text' => ' ',
              'type' => 'ignorable_spaces_after_command'
            },
            {
              'cmdname' => '@'
            },
            {
              'text' => 'refill '
            },
            {
              'cmdname' => 'refill'
            },
            {
              'text' => ' something
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
          'cmdname' => 'noindent',
          'source_info' => {
            'file_name' => '',
            'line_nr' => 165,
            'macro' => 'noindentmacro'
          }
        },
        {
          'text' => '     ',
          'type' => 'ignorable_spaces_after_command'
        },
        {
          'contents' => [
            {
              'text' => 'noindent at beginning of line
'
            },
            {
              'cmdname' => 'noindent',
              'source_info' => {
                'file_name' => '',
                'line_nr' => 166,
                'macro' => 'noindentmacro'
              }
            },
            {
              'text' => '
',
              'type' => 'ignorable_spaces_after_command'
            },
            {
              'text' => 'noindent on the preceding line
'
            },
            {
              'text' => '  '
            },
            {
              'cmdname' => 'noindent',
              'source_info' => {
                'file_name' => '',
                'line_nr' => 168,
                'macro' => 'noindentmacro'
              }
            },
            {
              'text' => '    ',
              'type' => 'ignorable_spaces_after_command'
            },
            {
              'text' => 'noindent after space at beginning of line
'
            }
          ],
          'extra' => {
            'noindent' => 1
          },
          'type' => 'paragraph'
        },
        {
          'args' => [
            {
              'text' => '         page at beginning of line
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'page'
        },
        {
          'args' => [
            {
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'page'
        },
        {
          'contents' => [
            {
              'text' => 'After page on its own line.
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
              'cmdname' => '@'
            },
            {
              'text' => 'page '
            }
          ],
          'type' => 'paragraph'
        },
        {
          'args' => [
            {
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'page'
        },
        {
          'contents' => [
            {
              'text' => 'two spaces   '
            },
            {
              'cmdname' => '@'
            },
            {
              'text' => 'noindent '
            },
            {
              'cmdname' => 'noindent',
              'source_info' => {
                'file_name' => '',
                'line_nr' => 174,
                'macro' => 'noindentmacro'
              }
            },
            {
              'text' => '    ',
              'type' => 'ignorable_spaces_after_command'
            },
            {
              'cmdname' => '@'
            },
            {
              'text' => 'refill '
            },
            {
              'cmdname' => 'refill'
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
          'args' => [
            {
              'text' => 'contentsmacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '@contents
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 178,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' contentsmacro 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 176,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'contents',
          'source_info' => {
            'file_name' => '',
            'line_nr' => 179,
            'macro' => 'contentsmacro'
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
              'text' => 'exdentmacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '@exdent
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 185,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' exdentmacro 
'
          },
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
                  'text' => 'line after exdent'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'exdent',
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 186,
            'macro' => 'exdentmacro'
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
              'text' => 'two',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '2
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 190,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' two 
'
          },
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
                  'text' => '2'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'sp',
          'extra' => {
            'misc_args' => [
              '2'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 191,
            'macro' => ''
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
              'text' => 'resultmacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '@result
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 195,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' resultmacro 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 193,
            'macro' => ''
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
              'text' => '@resultmacro',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'clickstyle',
          'extra' => {
            'misc_args' => [
              '@resultmacro'
            ]
          },
          'info' => {
            'arg_line' => ' @resultmacro{}
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 197,
            'macro' => ''
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
                'spaces_after_argument' => '
'
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
            {
              'args' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'node atext'
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
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
                      'text' => 'menu'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 201,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => '',
            'line_nr' => 199,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
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
              'text' => 'node atext'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
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
        'normalized' => 'node-atext'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
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
              'text' => 'chapter'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'chapter',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'contents',
          'source_info' => {
            'file_name' => '',
            'line_nr' => 206,
            'macro' => 'contentsmacro'
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
              'text' => 'shortcontentsmacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '@shortcontents
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 210,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' shortcontentsmacro 
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 208,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'shortcontents',
          'source_info' => {
            'file_name' => '',
            'line_nr' => 211,
            'macro' => 'shortcontentsmacro'
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
              'text' => 'byemacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '@bye
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 215,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' byemacro
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 213,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 204,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'text' => '
',
          'type' => 'misc_arg'
        }
      ],
      'cmdname' => 'bye'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'macro_in_misc_commands'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'macro_in_misc_commands'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'macro_in_misc_commands'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0]{'args'}[3];
$result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'macro_in_misc_commands'}{'contents'}[2]{'contents'}[124]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'macro_in_misc_commands'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'macro_in_misc_commands'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'macro_in_misc_commands'}{'contents'}[3]{'args'}[0]{'contents'}[0];

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
            'info' => {},
            'structure' => {}
          }
        },
        'info' => {},
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
                  'info' => {},
                  'structure' => {}
                }
              },
              'info' => {},
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
      'info' => {},
      'structure' => {}
    },
    'menus' => [
      {
        'cmdname' => 'menu'
      }
    ],
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'info' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'normalized' => 'node-atext'
      },
      'info' => {},
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
  'info' => {},
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'node-atext'
      },
      'info' => {},
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
    'error_line' => 'warning: @noindent is useless inside of a paragraph (possibly involving @noindentmacro)
',
    'file_name' => '',
    'line_nr' => 163,
    'macro' => 'noindentmacro',
    'text' => '@noindent is useless inside of a paragraph',
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
    'error_line' => 'warning: @noindent is useless inside of a paragraph (possibly involving @noindentmacro)
',
    'file_name' => '',
    'line_nr' => 166,
    'macro' => 'noindentmacro',
    'text' => '@noindent is useless inside of a paragraph',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @noindent is useless inside of a paragraph (possibly involving @noindentmacro)
',
    'file_name' => '',
    'line_nr' => 168,
    'macro' => 'noindentmacro',
    'text' => '@noindent is useless inside of a paragraph',
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
    'error_line' => 'warning: @noindent is useless inside of a paragraph (possibly involving @noindentmacro)
',
    'file_name' => '',
    'line_nr' => 174,
    'macro' => 'noindentmacro',
    'text' => '@noindent is useless inside of a paragraph',
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
