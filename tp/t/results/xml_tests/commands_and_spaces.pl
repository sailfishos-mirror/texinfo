use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'commands_and_spaces'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'foo',
              'type' => 'misc_arg'
            },
            {
              'parent' => {},
              'text' => 'some @value',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'arg_line' => '  foo   some @value
',
            'misc_args' => [
              'foo',
              'some @value'
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'commands_and_spaces.info'
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
          'cmdname' => 'setfilename',
          'extra' => {
            'spaces_before_argument' => '  ',
            'text_arg' => 'commands_and_spaces.info'
          },
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
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'ggg',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'unmacro',
          'extra' => {
            'arg_line' => '  ggg
',
            'misc_args' => [
              'ggg'
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
              'text' => '@arrow',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'clickstyle',
          'extra' => {
            'arg_line' => '  @arrow
',
            'misc_args' => [
              '@arrow'
            ]
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
              'text' => 'a'
            }
          ],
          'extra' => {
            'spaces_after_argument' => ' '
          },
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '('
            },
            {
              'parent' => {},
              'text' => 'b'
            },
            {
              'parent' => {},
              'text' => ')'
            }
          ],
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '('
            },
            {
              'parent' => {},
              'text' => 'c'
            },
            {
              'parent' => {},
              'text' => ')'
            }
          ],
          'extra' => {
            'spaces_after_argument' => ' '
          },
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '('
            },
            {
              'parent' => {},
              'text' => 'd'
            },
            {
              'parent' => {},
              'text' => ')'
            }
          ],
          'extra' => {
            'spaces_after_argument' => '   
',
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'centered'
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
          'cmdname' => 'center',
          'extra' => {
            'spaces_before_argument' => '  '
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
          'cmdname' => 'indent',
          'extra' => {
            'spaces_before_argument' => '  '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 13,
            'macro' => ''
          }
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'after indent.
'
            }
          ],
          'extra' => {
            'indent' => 1
          },
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
          'cmdname' => 'indent',
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 15,
            'macro' => ''
          }
        },
        {
          'extra' => {
            'spaces_associated_command' => {}
          },
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line_after_command'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'line after indent
'
            }
          ],
          'extra' => {
            'indent' => 1
          },
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
          'cmdname' => 'indent',
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 18,
            'macro' => ''
          }
        },
        {
          'extra' => {
            'spaces_associated_command' => {}
          },
          'parent' => {},
          'text' => '  
',
          'type' => 'empty_line_after_command'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'endof line with spaces line after indent
'
            }
          ],
          'extra' => {
            'indent' => 1
          },
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
                  'text' => 'a'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' ',
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'type' => 'brace_command_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'b'
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'c'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
              },
              'parent' => {},
              'type' => 'brace_command_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'd'
                }
              ],
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'type' => 'brace_command_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'e'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
              },
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'image',
          'contents' => [],
          'extra' => {
            'input_perl_encoding' => 'utf-8'
          },
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
                  'text' => 'a'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' ',
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'type' => 'brace_command_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'b'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' 
'
              },
              'parent' => {},
              'type' => 'brace_command_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'c'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
              },
              'parent' => {},
              'type' => 'brace_command_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'd'
                }
              ],
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'type' => 'brace_command_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'e'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
              },
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'image',
          'contents' => [],
          'extra' => {
            'input_perl_encoding' => 'utf-8'
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
'
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
                  'text' => 'Note'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '  
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'quotation',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Q
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'quotation'
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
                'text_arg' => 'quotation'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 28,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'spaces_before_argument' => '  '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 26,
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
                  'text' => 'ff'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
              },
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'b'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '   
',
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'float',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'f
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'In caption '
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'caption',
              'contents' => [],
              'extra' => {
                'float' => {},
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 32,
                'macro' => ''
              }
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'j.
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Short'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'shortcaption',
              'contents' => [],
              'extra' => {
                'float' => {}
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 33,
                'macro' => ''
              }
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '  g.
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'float'
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
                'text_arg' => 'float'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 34,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'caption' => {},
            'node_content' => [
              {}
            ],
            'normalized' => 'b',
            'shortcaption' => {},
            'spaces_before_argument' => '  ',
            'type' => {
              'content' => [
                {}
              ],
              'normalized' => 'ff'
            }
          },
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
',
          'type' => 'empty_line'
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
                          'text' => '0.4  0.6'
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
                  'cmdname' => 'columnfractions',
                  'extra' => {
                    'misc_args' => [
                      '0.4',
                      '0.6'
                    ],
                    'spaces_before_argument' => '  '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 36,
                    'macro' => ''
                  }
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'multitable',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'multitable'
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
                'text_arg' => 'multitable'
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
            'columnfractions' => {},
            'max_columns' => 2,
            'spaces_before_argument' => '  '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 36,
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
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'aa b'
                    }
                  ],
                  'parent' => {},
                  'type' => 'bracketed'
                },
                {
                  'parent' => {},
                  'text' => '  '
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'r '
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'bracketed'
                },
                {
                  'parent' => {},
                  'text' => '  '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'cmd'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'var',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 39,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => 'gg hh j'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' 
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'multitable',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'multitable'
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
                'text_arg' => 'multitable'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 40,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'max_columns' => 5,
            'prototypes' => [
              {
                'contents' => [
                  {}
                ],
                'type' => 'bracketed_multitable_prototype'
              },
              {
                'contents' => [
                  {}
                ],
                'type' => 'bracketed_multitable_prototype'
              },
              {
                'text' => 'gg',
                'type' => 'row_prototype'
              },
              {
                'text' => 'hh',
                'type' => 'row_prototype'
              },
              {
                'text' => 'j',
                'type' => 'row_prototype'
              }
            ],
            'prototypes_line' => [
              {},
              {
                'text' => '  ',
                'type' => 'prototype_space'
              },
              {},
              {
                'text' => '  ',
                'type' => 'prototype_space'
              },
              {},
              {
                'text' => 'gg',
                'type' => 'row_prototype'
              },
              {
                'text' => ' ',
                'type' => 'prototype_space'
              },
              {
                'text' => 'hh',
                'type' => 'row_prototype'
              },
              {
                'text' => ' ',
                'type' => 'prototype_space'
              },
              {
                'text' => 'j',
                'type' => 'row_prototype'
              }
            ],
            'spaces_before_argument' => '  '
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
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'extra' => {
                'spaces_associated_command' => {}
              },
              'parent' => {},
              'text' => '  
',
              'type' => 'empty_line_after_command'
            },
            {
              'parent' => {},
              'text' => 'in verbatim @g 
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'verbatim'
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
                'text_arg' => 'verbatim'
              },
              'parent' => {}
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 42,
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
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '  
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'tex',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in tex
'
                }
              ],
              'parent' => {},
              'type' => 'rawpreformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'tex'
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
                'spaces_before_argument' => '  ',
                'text_arg' => 'tex'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 48,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 46,
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
              'contents' => [],
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
                  'parent' => {},
                  'text' => 'in example
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
                'spaces_before_argument' => '  ',
                'text_arg' => 'example'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 52,
                'macro' => ''
              }
            }
          ],
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
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'strong',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 54,
                    'macro' => ''
                  },
                  'type' => 'command_as_argument'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '  
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'table',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in item'
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
                      'cmdname' => 'item',
                      'extra' => {
                        'spaces_before_argument' => '  '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 55,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_term'
                }
              ],
              'parent' => {},
              'type' => 'table_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'table'
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
                'spaces_before_argument' => '   ',
                'text_arg' => 'table'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 56,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'spaces_before_argument' => '  '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 54,
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
              'text' => 'T'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'a'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'footnote',
              'contents' => [],
              'extra' => {
                'spaces_before_argument' => '  '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 58,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
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
              'parent' => {},
              'text' => 'Math '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '\\underline'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ' a, b'
                        }
                      ],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 60,
                        'macro' => ''
                      },
                      'type' => 'bracketed'
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'math',
              'contents' => [],
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 60,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
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
                      'text' => 'http://ggg'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => ' ',
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'indicateurl',
              'contents' => [],
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
                          'text' => 'truc'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category',
                        'spaces_after_argument' => ' ',
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 64,
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
                          'text' => 'machin'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'name',
                        'spaces_after_argument' => ' ',
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 64,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'bidule'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg',
                        'spaces_after_argument' => ' ',
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 64,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'chose'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg',
                        'spaces_after_argument' => ' ',
                        'spaces_before_argument' => '  '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 64,
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
                          'text' => 'arg'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg',
                        'spaces_after_argument' => ' ',
                        'spaces_before_argument' => '  '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 64,
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
                  'node' => {},
                  'number' => 1
                },
                'original_def_cmdname' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 64,
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
                      'text' => 'T
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deffn'
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
            'line_nr' => 64,
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
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'a'
          },
          {
            'manual_content' => [
              {}
            ]
          },
          {
            'manual_content' => [
              {}
            ]
          },
          {
            'manual_content' => [
              {}
            ]
          }
        ],
        'normalized' => 'a',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 9,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'commands_and_spaces'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[0]{'contents'}[2];
$result_trees{'commands_and_spaces'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[0]{'contents'}[4];
$result_trees{'commands_and_spaces'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[0]{'contents'}[6];
$result_trees{'commands_and_spaces'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'};
$result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[1]{'contents'}[2]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[2];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[2]{'contents'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[2];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[2]{'contents'}[2]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[2];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[3];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[3];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[3]{'contents'}[2]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[3];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[4];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[7]{'extra'}{'spaces_associated_command'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[6];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[8];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[8]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[9]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[10]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[11]{'extra'}{'spaces_associated_command'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[10];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[11]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[12]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[12];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[12]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[13]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[14]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[14];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[14]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[14]{'args'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[14]{'args'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[14];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[14]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[14]{'args'}[2];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[14]{'args'}[2]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[14];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[14]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[14]{'args'}[3];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[14]{'args'}[3]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[14];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[14]{'args'}[4]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[14]{'args'}[4];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[14]{'args'}[4]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[14];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[14]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[15]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[16]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[17]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[17]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[17]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[17];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[17]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[17]{'args'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[17]{'args'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[17];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[17]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[17]{'args'}[2];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[17]{'args'}[2]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[17];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[17]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[17]{'args'}[3];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[17]{'args'}[3]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[17];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[17]{'args'}[4]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[17]{'args'}[4];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[17]{'args'}[4]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[17];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[17]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[18]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[19]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[20]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[20]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[20]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[20];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[20]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[20]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[20];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[20]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[20]{'contents'}[1]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[20]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[20]{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[20]{'contents'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[20];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[20]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[21]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'args'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'args'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[1]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[1]{'extra'}{'float'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[2];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[2]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[3]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[3]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[3];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[3]{'extra'}{'float'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[3]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[4];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[4]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[5]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[5];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[5]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'extra'}{'caption'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'extra'}{'node_content'}[0] = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'args'}[1]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'extra'}{'shortcaption'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'contents'}[3];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'extra'}{'type'}{'content'}[0] = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'args'}[0]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[22]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[23]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[24]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[24]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[24]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[24]{'args'}[0]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[24]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[24]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[24]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[24];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[24]{'contents'}[0]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[24]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[24]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[24]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[24];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[24]{'extra'}{'columnfractions'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[24]{'args'}[0]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[24]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[25]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[2];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[4];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'extra'}{'prototypes'}[0]{'contents'}[0] = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'extra'}{'prototypes'}[1]{'contents'}[0] = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'extra'}{'prototypes_line'}[0] = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'extra'}{'prototypes_line'}[2] = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[2];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'extra'}{'prototypes_line'}[4] = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[4];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[26]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[27]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[28]{'contents'}[0]{'extra'}{'spaces_associated_command'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[28];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[28]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[28];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[28]{'contents'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[28];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[28]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[28]{'contents'}[2]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[28]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[28]{'contents'}[2];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[28]{'contents'}[2]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[28];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[28]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[29]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[30]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[30];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[30]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[30]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[30]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[30];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[30]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[30]{'contents'}[1]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[30]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[30]{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[30]{'contents'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[30];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[30]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[31]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[32]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[32];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[32]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[32]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[32]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[32];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[32]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[32]{'contents'}[1]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[32]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[32]{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[32]{'contents'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[32];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[32]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[33]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34]{'contents'}[0]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34]{'contents'}[1]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34]{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34]{'contents'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34]{'extra'}{'command_as_argument'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34]{'args'}[0]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[34]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[35]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[36]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[36];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[36]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[36]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[36]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[36]{'contents'}[1]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[36]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[36]{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[36]{'contents'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[36];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[36]{'contents'}[2]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[36];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[36]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[37]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[38]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[38];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[38]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[38]{'contents'}[1]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[38]{'contents'}[1]{'args'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[38]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[38]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[38]{'contents'}[1]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[38]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[38]{'contents'}[1]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[38]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[38]{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[38]{'contents'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[38];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[38]{'contents'}[2]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[38];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[38]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[39]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[40]{'contents'}[0]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[40]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[40]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[40]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[40];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[40]{'contents'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[40];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[40]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[41]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[1]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[1]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[2]{'args'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[2];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'contents'}[2]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[42]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'contents'}[43]{'parent'} = $result_trees{'commands_and_spaces'}{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'extra'}{'nodes_manuals'}[1]{'manual_content'}[0] = $result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[1]{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'extra'}{'nodes_manuals'}[2]{'manual_content'}[0] = $result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[2]{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'extra'}{'nodes_manuals'}[3]{'manual_content'}[0] = $result_trees{'commands_and_spaces'}{'contents'}[1]{'args'}[3]{'contents'}[1];
$result_trees{'commands_and_spaces'}{'contents'}[1]{'parent'} = $result_trees{'commands_and_spaces'};

$result_texis{'commands_and_spaces'} = '@set  foo   some @value

@setfilename  commands_and_spaces.info  

@unmacro  ggg

@clickstyle  @arrow

@node a ,(b),(c) , (d)   

@center  centered  

@indent  after indent.

@indent
line after indent

@indent  
endof line with spaces line after indent

@image{ a ,b,c , d,e }

@image{ a ,b 
,c , d,e }

@quotation  Note  
Q
@end quotation

@float  ff , b   
f
@caption{ In caption }j.
@shortcaption{Short}  g.
@end float

@multitable  @columnfractions  0.4  0.6  
@end multitable

@multitable  {aa b}  { r }  @var{cmd}gg hh j 
@end multitable

@verbatim  
in verbatim @g 
@end verbatim 

@tex  
in tex
@end  tex  

@example  
in example
@end  example  

@table  @strong  
@item  in item 
@end   table   

T@footnote{  a}.

Math @math{ \\underline{ a, b} }.

@indicateurl{ http://ggg }

@deffn { truc } { machin }  { bidule }  {  chose } {  arg }
T
@end deffn

';


$result_texts{'commands_and_spaces'} = '




centered

after indent.

line after indent

endof line with spaces line after indent

a

a

Note
Q

ff, b
f
j.
  g.



in verbatim @g 


in example

in item

T.

Math \\underline{ a, b} .

http://ggg

truc: machin bidule  chose arg
T

';

$result_nodes{'commands_and_spaces'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'a'
  },
  'structure' => {
    'node_next' => {
      'extra' => {
        'manual_content' => [
          {
            'text' => 'b'
          }
        ]
      }
    },
    'node_prev' => {
      'extra' => {
        'manual_content' => [
          {
            'text' => 'c'
          }
        ]
      }
    },
    'node_up' => {
      'extra' => {
        'manual_content' => [
          {
            'text' => 'd'
          }
        ]
      }
    }
  }
};

$result_menus{'commands_and_spaces'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'a'
  },
  'structure' => {}
};

$result_errors{'commands_and_spaces'} = [
  {
    'error_line' => 'warning: unexpected argument on @multitable line: @var{cmd}
',
    'file_name' => '',
    'line_nr' => 39,
    'macro' => '',
    'text' => 'unexpected argument on @multitable line: @var{cmd}',
    'type' => 'warning'
  }
];


$result_floats{'commands_and_spaces'} = {
  'ff' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'normalized' => 'b',
        'shortcaption' => {
          'cmdname' => 'shortcaption',
          'extra' => {
            'float' => {}
          }
        },
        'type' => {
          'content' => [
            {
              'text' => 'ff'
            }
          ],
          'normalized' => 'ff'
        }
      },
      'structure' => {
        'float_number' => 1
      }
    }
  ]
};
$result_floats{'commands_and_spaces'}{'ff'}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'commands_and_spaces'}{'ff'}[0];
$result_floats{'commands_and_spaces'}{'ff'}[0]{'extra'}{'shortcaption'}{'extra'}{'float'} = $result_floats{'commands_and_spaces'}{'ff'}[0];


$result_indices_sort_strings{'commands_and_spaces'} = {
  'fn' => [
    'machin'
  ]
};



$result_converted{'xml'}->{'commands_and_spaces'} = '<set name="foo" line="  foo   some @value">some @value</set>

<setfilename file="commands_and_spaces.info" spaces="  ">commands_and_spaces.info  </setfilename>

<unmacro name="ggg" line="  ggg"></unmacro>

<clickstyle command="arrow" line="  @arrow">@arrow</clickstyle>

<node name="a" spaces=" "><nodename trailingspaces=" ">a</nodename><nodenext>(b)</nodenext><nodeprev trailingspaces=" ">(c)</nodeprev><nodeup spaces=" " trailingspaces="   ">(d)</nodeup></node>

<center spaces="  ">centered  </center>

<indent></indent><para>after indent.
</para>
<indent></indent>
<para>line after indent
</para>
<indent></indent>  
<para>endof line with spaces line after indent
</para>
<image><imagefile spaces=" ">a </imagefile><imagewidth>b</imagewidth><imageheight>c </imageheight><alttext spaces=" ">d</alttext><imageextension>e </imageextension></image>

<image><imagefile spaces=" ">a </imagefile><imagewidth>b 
</imagewidth><imageheight>c </imageheight><alttext spaces=" ">d</alttext><imageextension>e </imageextension></image>

<quotation spaces="  " endspaces=" "><quotationtype>Note  </quotationtype>
<para>Q
</para></quotation>

<float name="b" type="ff" number="1" spaces="  " endspaces=" "><floattype>ff</floattype><floatname spaces=" ">b   </floatname>
<para>f
</para><caption spaces=" "><para>In caption </para></caption><para>j.
</para><shortcaption><para>Short</para></shortcaption><para>  g.
</para></float>

<multitable spaces="  " endspaces=" "><columnfractions line="0.4  0.6  "><columnfraction value="0.4"></columnfraction><columnfraction value="0.6"></columnfraction></columnfractions>
</multitable>

<multitable spaces="  " endspaces=" "><columnprototypes><columnprototype bracketed="on">aa b</columnprototype>  <columnprototype bracketed="on" spaces=" ">r </columnprototype>  <columnprototype><var>cmd</var></columnprototype><columnprototype>gg</columnprototype> <columnprototype>hh</columnprototype> <columnprototype>j</columnprototype></columnprototypes>
</multitable>

<verbatim xml:space="preserve" endspaces=" ">  
in verbatim @g 
</verbatim> 

<tex endspaces="  ">  
in tex
</tex>  

<example endspaces="  ">  
<pre xml:space="preserve">in example
</pre></example>  

<table commandarg="strong" spaces="  " endspaces="   ">  
<tableentry><tableterm><item spaces="  "><itemformat command="strong">in item </itemformat></item>
</tableterm></tableentry></table>   

<para>T<footnote spaces="  "><para>a</para></footnote>.
</para>
<para>Math <math spaces=" ">\\underline{ a, b} </math>.
</para>
<para><indicateurl spaces=" ">http://ggg </indicateurl>
</para>
<deffn spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="1">machin</indexterm><defcategory bracketed="on" spaces=" ">truc</defcategory> <deffunction bracketed="on" spaces=" ">machin</deffunction>  <defparam bracketed="on" spaces=" ">bidule</defparam>  <defparam bracketed="on" spaces="  ">chose</defparam> <defparam bracketed="on" spaces="  ">arg</defparam></definitionterm>
<definitionitem><para>T
</para></definitionitem></deffn>

';

1;
