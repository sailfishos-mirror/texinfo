use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'at_commands_in_refs_latin1'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'setfilename',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'at_commands_in_refs_latin1.info'
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
                'text_arg' => 'at_commands_in_refs_latin1.info'
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
              'cmdname' => 'documentencoding',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'ISO-8859-15'
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
                'input_encoding_name' => 'iso-8859-15',
                'text_arg' => 'ISO-8859-15'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 2
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
        'line_nr' => 4
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
          'cmdname' => 'menu',
          'contents' => [
            {
              'contents' => [
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
              'type' => 'arguments_line'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => '-'
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
                      'cmdname' => '}'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '-_007b-_007d'
                  },
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
              'source_info' => {
                'line_nr' => 8
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => ' '
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => '	'
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
                      'cmdname' => '*'
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
                      'cmdname' => ':'
                    },
                    {
                      'text' => ' .'
                    },
                    {
                      'cmdname' => ':'
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
                      'cmdname' => '@'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '-_0021-_002e-_002e-_003f-_0040'
                  },
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
              'source_info' => {
                'line_nr' => 9
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'atchar',
                      'contents' => [
                        {
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
                      'cmdname' => 'lbracechar',
                      'contents' => [
                        {
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
                      'cmdname' => 'rbracechar',
                      'contents' => [
                        {
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
                      'cmdname' => 'backslashchar',
                      'contents' => [
                        {
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
                      'cmdname' => 'hashchar',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 10
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_0040-_007b-_007d-_005c-_0023'
                  },
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
              'source_info' => {
                'line_nr' => 10
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'LaTeX',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 11
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'TeX',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 11
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
                        'line_nr' => 11
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
                        'line_nr' => 11
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
                        'line_nr' => 11
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
                        'line_nr' => 11
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
                        'line_nr' => 11
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'LaTeX-TeX-_2022-_002c-_00a9-_2026-_002e_002e_002e'
                  },
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
              'source_info' => {
                'line_nr' => 11
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'equiv',
                      'contents' => [
                        {
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
                      'cmdname' => 'error',
                      'contents' => [
                        {
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
                      'cmdname' => 'euro',
                      'contents' => [
                        {
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
                      'cmdname' => 'exclamdown',
                      'contents' => [
                        {
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
                      'cmdname' => 'expansion',
                      'contents' => [
                        {
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
                      'cmdname' => 'minus',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 12
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_2261-error_002d_002d_003e-_20ac-_00a1-_21a6-_2212'
                  },
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
              'source_info' => {
                'line_nr' => 12
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'geq',
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
                        'line_nr' => 13
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
                        'line_nr' => 13
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_2265-_2264-_2192'
                  },
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
              'source_info' => {
                'line_nr' => 13
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'ordf',
                      'contents' => [
                        {
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
                      'cmdname' => 'ordm',
                      'contents' => [
                        {
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
                      'cmdname' => 'point',
                      'contents' => [
                        {
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
                      'cmdname' => 'pounds',
                      'contents' => [
                        {
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
                      'cmdname' => 'print',
                      'contents' => [
                        {
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
                      'cmdname' => 'questiondown',
                      'contents' => [
                        {
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
                      'cmdname' => 'registeredsymbol',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 14
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_00aa-_00ba-_22c6-_00a3-_22a3-_00bf-_00ae'
                  },
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
              'source_info' => {
                'line_nr' => 14
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'result',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 15
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
                        'line_nr' => 15
                      }
                    },
                    {
                      'text' => ' a'
                    },
                    {
                      'cmdname' => 'tie',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 15
                      }
                    },
                    {
                      'text' => 'b '
                    },
                    {
                      'cmdname' => 'today',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 15
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'aa',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 15
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_21d2-_00b0-a-b-_00e5'
                  },
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
              'source_info' => {
                'line_nr' => 15
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'AA',
                      'contents' => [
                        {
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
                      'cmdname' => 'ae',
                      'contents' => [
                        {
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
                      'cmdname' => 'oe',
                      'contents' => [
                        {
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
                      'cmdname' => 'AE',
                      'contents' => [
                        {
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
                      'cmdname' => 'OE',
                      'contents' => [
                        {
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
                      'cmdname' => 'o',
                      'contents' => [
                        {
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
                      'cmdname' => 'O',
                      'contents' => [
                        {
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
                      'cmdname' => 'ss',
                      'contents' => [
                        {
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
                      'cmdname' => 'l',
                      'contents' => [
                        {
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
                      'cmdname' => 'L',
                      'contents' => [
                        {
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
                      'cmdname' => 'DH',
                      'contents' => [
                        {
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
                      'cmdname' => 'dh',
                      'contents' => [
                        {
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
                      'cmdname' => 'TH',
                      'contents' => [
                        {
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
                      'cmdname' => 'th',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 16
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_00c5-_00e6-_0153-_00c6-_0152-_00f8-_00d8-_00df-_0142-_0141-_00d0-_00f0-_00de-_00fe'
                  },
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
              'source_info' => {
                'line_nr' => 16
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => '"',
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
                        'line_nr' => 17
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
                              'text' => 'e'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 17
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
                                'line_nr' => 17
                              }
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 17
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
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 17
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
                              'text' => 'a'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 17
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
                        'line_nr' => 17
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
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 17
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
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 17
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
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 17
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
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 17
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
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 17
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_00e4-_1ebd-_00ee-_00e2-_00e0-_00e9-_00e7-_0113-e_030a-e_030b-_0119'
                  },
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
              'source_info' => {
                'line_nr' => 17
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
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
                        'line_nr' => 18
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
                        'line_nr' => 18
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
                        'line_nr' => 18
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
                        'line_nr' => 18
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
                              'text' => 'ee'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 18
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_0117-_0115-e_0332-_1eb9-_011b-_0237-e_0361e'
                  },
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
              'source_info' => {
                'line_nr' => 18
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
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
                        'line_nr' => 19
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
                                'line_nr' => 19
                              }
                            }
                          ],
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
                                'line_nr' => 19
                              }
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 19
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_0131-_1e14-_1e08'
                  },
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
              'source_info' => {
                'line_nr' => 19
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'quotedblleft',
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
                      'cmdname' => 'quotedblright',
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
                      'cmdname' => 'quoteleft',
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
                      'cmdname' => 'quoteright',
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
                      'cmdname' => 'quotedblbase',
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
                      'cmdname' => 'quotesinglbase',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 20
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_201c-_201d-_2018-_2019-_201e-_201a'
                  },
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
              'source_info' => {
                'line_nr' => 20
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'guillemetleft',
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
                      'cmdname' => 'guillemetright',
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
                      'cmdname' => 'guillemotleft',
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
                      'cmdname' => 'guillemotright',
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
                      'cmdname' => 'guilsinglleft',
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
                      'cmdname' => 'guilsinglright',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 21
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_00ab-_00bb-_00ab-_00bb-_2039-_203a'
                  },
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
              'source_info' => {
                'line_nr' => 21
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => '`` \'\' --- -- ` \''
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => '_0060_0060-_0027_0027-_002d_002d_002d-_002d_002d-_0060-_0027'
                  },
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
              'source_info' => {
                'line_nr' => 22
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'acronym',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'AAA'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'fff'
                            }
                          ],
                          'info' => {
                            'spaces_before_argument' => {
                              'text' => ' '
                            }
                          },
                          'type' => 'brace_arg'
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
                      'cmdname' => 'acronym',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'AAA'
                            }
                          ],
                          'type' => 'brace_arg'
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
                      'cmdname' => 'acronym',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'BBB'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 23
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'AAA-AAA-BBB'
                  },
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
              'source_info' => {
                'line_nr' => 23
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'abbr',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'CCC'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'rrr'
                            }
                          ],
                          'info' => {
                            'spaces_before_argument' => {
                              'text' => ' '
                            }
                          },
                          'type' => 'brace_arg'
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
                      'cmdname' => 'abbr',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'CCC'
                            }
                          ],
                          'type' => 'brace_arg'
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
                      'cmdname' => 'abbr',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'DDD'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 24
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'CCC-CCC-DDD'
                  },
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
              'source_info' => {
                'line_nr' => 24
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'email',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'someone'
                            },
                            {
                              'cmdname' => '@'
                            },
                            {
                              'text' => 'somewher'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'the someone'
                            }
                          ],
                          'info' => {
                            'spaces_before_argument' => {
                              'text' => ' '
                            }
                          },
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 25
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'email',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'no_explain'
                            },
                            {
                              'cmdname' => '@'
                            },
                            {
                              'text' => 'there'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 25
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'someone_0040somewher-no_005fexplain_0040there'
                  },
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
              'source_info' => {
                'line_nr' => 25
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'image',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'f--ile1'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'extra' => {
                        'input_encoding_name' => 'iso-8859-15'
                      },
                      'source_info' => {
                        'line_nr' => 26
                      }
                    },
                    {
                      'text' => '  '
                    },
                    {
                      'cmdname' => 'image',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'f--ile'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'aze'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'az'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'alt'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'e--xt'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'extra' => {
                        'input_encoding_name' => 'iso-8859-15'
                      },
                      'source_info' => {
                        'line_nr' => 26
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'f_002d_002dile1-f_002d_002dile'
                  },
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
              'source_info' => {
                'line_nr' => 26
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'verb',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => ' @ {} . ',
                              'type' => 'raw'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'info' => {
                        'delimiter' => '.'
                      },
                      'source_info' => {
                        'line_nr' => 27
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => '-_0040-_007b_007d-_002e-'
                  },
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
              'source_info' => {
                'line_nr' => 27
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'cite',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'cite '
                            },
                            {
                              'cmdname' => 'asis',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'asis'
                                    }
                                  ],
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 28
                              }
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
                      'cmdname' => 'w',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'in '
                            },
                            {
                              'cmdname' => '@'
                            },
                            {
                              'text' => 'w '
                            },
                            {
                              'cmdname' => 'b',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'b'
                                    }
                                  ],
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 28
                              }
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
                      'cmdname' => 'r',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'in r'
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
                      'cmdname' => 'sc',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'sc'
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
                      'cmdname' => 'strong',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'str'
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
                      'cmdname' => 't',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 't'
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
                      'cmdname' => 'var',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'var'
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
                      'cmdname' => 'dfn',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'dfn'
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
                      'cmdname' => 'i',
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
                        'line_nr' => 28
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'cite-asis-in-_0040w-b-in-r-sc-str-t-var-dfn-i'
                  },
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
              'source_info' => {
                'line_nr' => 28
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'env',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'env'
                            }
                          ],
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
                      'cmdname' => 'code',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'code'
                            }
                          ],
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
                      'cmdname' => 'option',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'option'
                            }
                          ],
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
                      'cmdname' => 'samp',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'samp'
                            }
                          ],
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
                      'cmdname' => 'command',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'command'
                            }
                          ],
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
                      'cmdname' => 'file',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'file'
                            }
                          ],
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
                      'cmdname' => 'kbd',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'C-x '
                            },
                            {
                              'cmdname' => 'key',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'ESC'
                                    }
                                  ],
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 29
                              }
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 29
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'env-code-option-samp-command-file-C_002dx-ESC'
                  },
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
              'source_info' => {
                'line_nr' => 29
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => '8.27'
                    },
                    {
                      'cmdname' => 'dmn',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'in'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 30
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {}
                      ]
                    },
                    'normalized' => '8_002e27in'
                  },
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
              'source_info' => {
                'line_nr' => 30
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'sansserif',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'sansserif'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 31
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'slanted',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'slanted'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 31
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'sansserif-slanted'
                  },
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
              'source_info' => {
                'line_nr' => 31
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'indicateurl',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'indicateurl'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 32
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'indicateurl'
                  },
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
              'source_info' => {
                'line_nr' => 32
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'sub',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'g'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 33
                      }
                    },
                    {
                      'text' => 'H 3'
                    },
                    {
                      'cmdname' => 'sup',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'rd'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 33
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'gH-3rd'
                  },
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
              'source_info' => {
                'line_nr' => 33
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'url',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'http://somewhere_aaa'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 34
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'url',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'url'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'text'
                            }
                          ],
                          'info' => {
                            'spaces_before_argument' => {
                              'text' => ' '
                            }
                          },
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 34
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'uref',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => '/man.cgi/1/ls'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'ls'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 34
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'http_003a_002f_002fsomewhere_005faaa-url-_002fman_002ecgi_002f1_002fls'
                  },
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
              'source_info' => {
                'line_nr' => 34
              },
              'type' => 'menu_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'menu'
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
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 35
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
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 5
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => '-'
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
                  'cmdname' => '}'
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
        'normalized' => '-_007b-_007d'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 37
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => '-'
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
                  'cmdname' => '}'
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
        }
      ],
      'extra' => {
        'section_number' => '1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 38
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => ' '
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => '	'
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
                  'cmdname' => '*'
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
                  'cmdname' => ':'
                },
                {
                  'text' => ' .'
                },
                {
                  'cmdname' => ':'
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
                  'cmdname' => '@'
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
        'normalized' => '-_0021-_002e-_002e-_003f-_0040'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 40
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => ' '
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => '	'
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
                  'cmdname' => '*'
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
                  'cmdname' => ':'
                },
                {
                  'text' => ' .'
                },
                {
                  'cmdname' => ':'
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
                  'cmdname' => '@'
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
        }
      ],
      'extra' => {
        'section_number' => '2'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 41
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'atchar',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 43
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'lbracechar',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 43
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'rbracechar',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 43
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'backslashchar',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 43
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'hashchar',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 43
                  }
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
        'normalized' => '_0040-_007b-_007d-_005c-_0023'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 43
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'atchar',
                  'contents' => [
                    {
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
                  'cmdname' => 'lbracechar',
                  'contents' => [
                    {
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
                  'cmdname' => 'rbracechar',
                  'contents' => [
                    {
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
                  'cmdname' => 'backslashchar',
                  'contents' => [
                    {
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
                  'cmdname' => 'hashchar',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 44
                  }
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
        }
      ],
      'extra' => {
        'section_number' => '3'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 44
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'LaTeX',
                  'contents' => [
                    {
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
                  'cmdname' => 'TeX',
                  'contents' => [
                    {
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
                  'cmdname' => 'bullet',
                  'contents' => [
                    {
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
                  'cmdname' => 'comma',
                  'contents' => [
                    {
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
                  'cmdname' => 'copyright',
                  'contents' => [
                    {
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
                  'cmdname' => 'dots',
                  'contents' => [
                    {
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
                  'cmdname' => 'enddots',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 46
                  }
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
        'normalized' => 'LaTeX-TeX-_2022-_002c-_00a9-_2026-_002e_002e_002e'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 46
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'LaTeX',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 47
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'TeX',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 47
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
                    'line_nr' => 47
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
                    'line_nr' => 47
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
                    'line_nr' => 47
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
                    'line_nr' => 47
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
                    'line_nr' => 47
                  }
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
        }
      ],
      'extra' => {
        'section_number' => '4'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 47
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'equiv',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 49
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'error',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 49
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
                    'line_nr' => 49
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
                    'line_nr' => 49
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
                    'line_nr' => 49
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
                    'line_nr' => 49
                  }
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
        'normalized' => '_2261-error_002d_002d_003e-_20ac-_00a1-_21a6-_2212'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 49
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'equiv',
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
                  'text' => ' '
                },
                {
                  'cmdname' => 'error',
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
                    'line_nr' => 50
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
                    'line_nr' => 50
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
                    'line_nr' => 50
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
                    'line_nr' => 50
                  }
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
        }
      ],
      'extra' => {
        'section_number' => '5'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 50
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'geq',
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
                  'cmdname' => 'leq',
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
                  'cmdname' => 'arrow',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 52
                  }
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
        'normalized' => '_2265-_2264-_2192'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 52
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'geq',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 53
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
                    'line_nr' => 53
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
                    'line_nr' => 53
                  }
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
        }
      ],
      'extra' => {
        'section_number' => '6'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 53
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'ordf',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 55
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
                    'line_nr' => 55
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
                    'line_nr' => 55
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
                    'line_nr' => 55
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
                    'line_nr' => 55
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
                    'line_nr' => 55
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'registeredsymbol',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 55
                  }
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
        'normalized' => '_00aa-_00ba-_22c6-_00a3-_22a3-_00bf-_00ae'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 55
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'ordf',
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
                  'cmdname' => 'ordm',
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
                  'cmdname' => 'point',
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
                  'cmdname' => 'pounds',
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
                  'cmdname' => 'print',
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
                  'cmdname' => 'questiondown',
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
                  'cmdname' => 'registeredsymbol',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 56
                  }
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
        }
      ],
      'extra' => {
        'section_number' => '7'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 56
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'result',
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
                  'cmdname' => 'textdegree',
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
                  'text' => ' a'
                },
                {
                  'cmdname' => 'tie',
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
                  'text' => 'b '
                },
                {
                  'cmdname' => 'today',
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
                  'cmdname' => 'aa',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 58
                  }
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
        'normalized' => '_21d2-_00b0-a-b-_00e5'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 58
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'result',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 59
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
                    'line_nr' => 59
                  }
                },
                {
                  'text' => ' a'
                },
                {
                  'cmdname' => 'tie',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 59
                  }
                },
                {
                  'text' => 'b '
                },
                {
                  'cmdname' => 'today',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 59
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'aa',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 59
                  }
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
        }
      ],
      'extra' => {
        'section_number' => '8'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 59
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'AA',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 61
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
                    'line_nr' => 61
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
                    'line_nr' => 61
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
                    'line_nr' => 61
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
                    'line_nr' => 61
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
                    'line_nr' => 61
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
                    'line_nr' => 61
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
                    'line_nr' => 61
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
                    'line_nr' => 61
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
                    'line_nr' => 61
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
                    'line_nr' => 61
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
                    'line_nr' => 61
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'TH',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 61
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
                    'line_nr' => 61
                  }
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
        'normalized' => '_00c5-_00e6-_0153-_00c6-_0152-_00f8-_00d8-_00df-_0142-_0141-_00d0-_00f0-_00de-_00fe'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 61
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'AA',
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
                    'line_nr' => 62
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
                    'line_nr' => 62
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
                    'line_nr' => 62
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
                    'line_nr' => 62
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
                    'line_nr' => 62
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
                    'line_nr' => 62
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
                    'line_nr' => 62
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
                    'line_nr' => 62
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
                    'line_nr' => 62
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
                    'line_nr' => 62
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
                    'line_nr' => 62
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'TH',
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
                    'line_nr' => 62
                  }
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
        }
      ],
      'extra' => {
        'section_number' => '9'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 62
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => '"',
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
                    'line_nr' => 64
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
                          'text' => 'e'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 64
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
                            'line_nr' => 64
                          }
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 64
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
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 64
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
                          'text' => 'a'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 64
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
                    'line_nr' => 64
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
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 64
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
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 64
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
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 64
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
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 64
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
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 64
                  }
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
        'normalized' => '_00e4-_1ebd-_00ee-_00e2-_00e0-_00e9-_00e7-_0113-e_030a-e_030b-_0119'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 64
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => '"',
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
                    'line_nr' => 65
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
                          'text' => 'e'
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
                  'text' => ' '
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
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 65
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
                          'text' => 'a'
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
                    'line_nr' => 65
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
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 65
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
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 65
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
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 65
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
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 65
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
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 65
                  }
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
        }
      ],
      'extra' => {
        'section_number' => '10'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => '  '
        }
      },
      'source_info' => {
        'line_nr' => 65
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
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
                    'line_nr' => 67
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
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 67
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
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 67
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
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 67
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
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 67
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
                    'line_nr' => 67
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
                          'text' => 'ee'
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
        'normalized' => '_0117-_0115-e_0332-_1eb9-_011b-_0237-e_0361e'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 67
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
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
                    'line_nr' => 68
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
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 68
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
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 68
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
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 68
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
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 68
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
                    'line_nr' => 68
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
                          'text' => 'ee'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 68
                  }
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
        }
      ],
      'extra' => {
        'section_number' => '11'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 68
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
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
                    'line_nr' => 70
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
                            'line_nr' => 70
                          }
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 70
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
                            'line_nr' => 70
                          }
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 70
                  }
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
        'normalized' => '_0131-_1e14-_1e08'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 70
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
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
        }
      ],
      'extra' => {
        'section_number' => '12'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 71
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'quotedblleft',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 73
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
                    'line_nr' => 73
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'quoteleft',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 73
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
                    'line_nr' => 73
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
                    'line_nr' => 73
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
                    'line_nr' => 73
                  }
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
        'normalized' => '_201c-_201d-_2018-_2019-_201e-_201a'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 73
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'quotedblleft',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 74
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
                    'line_nr' => 74
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'quoteleft',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 74
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
                    'line_nr' => 74
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
                    'line_nr' => 74
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
                    'line_nr' => 74
                  }
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
        }
      ],
      'extra' => {
        'section_number' => '13'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 74
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'guillemetleft',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 76
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'guillemetright',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 76
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
                    'line_nr' => 76
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
                    'line_nr' => 76
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
                    'line_nr' => 76
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'guilsinglright',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 76
                  }
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
        'normalized' => '_00ab-_00bb-_00ab-_00bb-_2039-_203a'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 76
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'guillemetleft',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 77
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'guillemetright',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 77
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
                    'line_nr' => 77
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
                    'line_nr' => 77
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
                    'line_nr' => 77
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'guilsinglright',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 77
                  }
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
        }
      ],
      'extra' => {
        'section_number' => '14'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 77
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '`` \'\' --- -- ` \''
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
        'normalized' => '_0060_0060-_0027_0027-_002d_002d_002d-_002d_002d-_0060-_0027'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 79
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '`` \'\' --- -- ` \''
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
        }
      ],
      'extra' => {
        'section_number' => '15'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 80
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'acronym',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'AAA'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'fff'
                        }
                      ],
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 82
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'acronym',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'AAA'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 82
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'acronym',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'BBB'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 82
                  }
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
        'normalized' => 'AAA-AAA-BBB'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 82
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'acronym',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'AAA'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'fff'
                        }
                      ],
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 83
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'acronym',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'AAA'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 83
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'acronym',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'BBB'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 83
                  }
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
        }
      ],
      'extra' => {
        'section_number' => '16'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 83
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'abbr',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'CCC'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'rrr'
                        }
                      ],
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 85
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'abbr',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'CCC'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 85
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'abbr',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'DDD'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 85
                  }
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
          'source_marks' => [
            {
              'counter' => 1,
              'element' => {
                'cmdname' => 'ifnottex',
                'contents' => [
                  {
                    'contents' => [
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
                    'type' => 'arguments_line'
                  }
                ],
                'source_info' => {
                  'line_nr' => 86
                }
              },
              'sourcemark_type' => 'expanded_conditional_command',
              'status' => 'start'
            }
          ],
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'CCC-CCC-DDD'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 85
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'abbr',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'CCC'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'rrr'
                        }
                      ],
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 87
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'abbr',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'CCC'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 87
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'abbr',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'DDD'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 87
                  }
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
          'source_marks' => [
            {
              'counter' => 1,
              'element' => {
                'cmdname' => 'end',
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => 'ifnottex'
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
                  'text_arg' => 'ifnottex'
                },
                'info' => {
                  'spaces_before_argument' => {
                    'text' => ' '
                  }
                },
                'source_info' => {
                  'line_nr' => 88
                }
              },
              'sourcemark_type' => 'expanded_conditional_command',
              'status' => 'end'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => '17'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 87
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'email',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'someone'
                        },
                        {
                          'cmdname' => '@'
                        },
                        {
                          'text' => 'somewher'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'the someone'
                        }
                      ],
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 90
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'email',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'no_explain'
                        },
                        {
                          'cmdname' => '@'
                        },
                        {
                          'text' => 'there'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 90
                  }
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
        'normalized' => 'someone_0040somewher-no_005fexplain_0040there'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 90
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'email',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'someone'
                        },
                        {
                          'cmdname' => '@'
                        },
                        {
                          'text' => 'somewher'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'the someone'
                        }
                      ],
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 91
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'email',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'no_explain'
                        },
                        {
                          'cmdname' => '@'
                        },
                        {
                          'text' => 'there'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 91
                  }
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
        }
      ],
      'extra' => {
        'section_number' => '18'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 91
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'image',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'f--ile1'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'extra' => {
                    'input_encoding_name' => 'iso-8859-15'
                  },
                  'source_info' => {
                    'line_nr' => 93
                  }
                },
                {
                  'text' => '  '
                },
                {
                  'cmdname' => 'image',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'f--ile'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'aze'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'az'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'alt'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'e--xt'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'extra' => {
                    'input_encoding_name' => 'iso-8859-15'
                  },
                  'source_info' => {
                    'line_nr' => 93
                  }
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
          'source_marks' => [
            {
              'counter' => 2,
              'element' => {
                'cmdname' => 'ifnottex',
                'contents' => [
                  {
                    'contents' => [
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
                    'type' => 'arguments_line'
                  }
                ],
                'source_info' => {
                  'line_nr' => 94
                }
              },
              'sourcemark_type' => 'expanded_conditional_command',
              'status' => 'start'
            }
          ],
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'f_002d_002dile1-f_002d_002dile'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 93
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'image',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'f--ile1'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'extra' => {
                    'input_encoding_name' => 'iso-8859-15'
                  },
                  'source_info' => {
                    'line_nr' => 95
                  }
                },
                {
                  'text' => '  '
                },
                {
                  'cmdname' => 'image',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'f--ile'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'aze'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'az'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'alt'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'e--xt'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'extra' => {
                    'input_encoding_name' => 'iso-8859-15'
                  },
                  'source_info' => {
                    'line_nr' => 95
                  }
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
          'source_marks' => [
            {
              'counter' => 2,
              'element' => {
                'cmdname' => 'end',
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => 'ifnottex'
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
                  'text_arg' => 'ifnottex'
                },
                'info' => {
                  'spaces_before_argument' => {
                    'text' => ' '
                  }
                },
                'source_info' => {
                  'line_nr' => 96
                }
              },
              'sourcemark_type' => 'expanded_conditional_command',
              'status' => 'end'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => '19'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 95
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'verb',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => ' @ {} . ',
                          'type' => 'raw'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'info' => {
                    'delimiter' => '.'
                  },
                  'source_info' => {
                    'line_nr' => 98
                  }
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
          'source_marks' => [
            {
              'counter' => 3,
              'element' => {
                'cmdname' => 'ifnottex',
                'contents' => [
                  {
                    'contents' => [
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
                    'type' => 'arguments_line'
                  }
                ],
                'source_info' => {
                  'line_nr' => 99
                }
              },
              'sourcemark_type' => 'expanded_conditional_command',
              'status' => 'start'
            }
          ],
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => '-_0040-_007b_007d-_002e-'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 98
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'verb',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => ' @ {} . ',
                          'type' => 'raw'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'info' => {
                    'delimiter' => '.'
                  },
                  'source_info' => {
                    'line_nr' => 100
                  }
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
          'source_marks' => [
            {
              'counter' => 3,
              'element' => {
                'cmdname' => 'end',
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => 'ifnottex'
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
                  'text_arg' => 'ifnottex'
                },
                'info' => {
                  'spaces_before_argument' => {
                    'text' => ' '
                  }
                },
                'source_info' => {
                  'line_nr' => 101
                }
              },
              'sourcemark_type' => 'expanded_conditional_command',
              'status' => 'end'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => '20'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 100
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'cite',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'cite '
                        },
                        {
                          'cmdname' => 'asis',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'asis'
                                }
                              ],
                              'type' => 'brace_container'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 103
                          }
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 103
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
                          'text' => 'in '
                        },
                        {
                          'cmdname' => '@'
                        },
                        {
                          'text' => 'w '
                        },
                        {
                          'cmdname' => 'b',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'b'
                                }
                              ],
                              'type' => 'brace_container'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 103
                          }
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 103
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'r',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'in r'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 103
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'sc',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'sc'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 103
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'strong',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'str'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 103
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 't',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 't'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 103
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'var',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'var'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 103
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'dfn',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'dfn'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 103
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'i',
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
                    'line_nr' => 103
                  }
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
        'normalized' => 'cite-asis-in-_0040w-b-in-r-sc-str-t-var-dfn-i'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 103
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'cite',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'cite '
                        },
                        {
                          'cmdname' => 'asis',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'asis'
                                }
                              ],
                              'type' => 'brace_container'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 104
                          }
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 104
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
                          'text' => 'in '
                        },
                        {
                          'cmdname' => '@'
                        },
                        {
                          'text' => 'w '
                        },
                        {
                          'cmdname' => 'b',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'b'
                                }
                              ],
                              'type' => 'brace_container'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 104
                          }
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 104
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'r',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'in r'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 104
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'sc',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'sc'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 104
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'strong',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'str'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 104
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 't',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 't'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 104
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'var',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'var'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 104
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'dfn',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'dfn'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 104
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'i',
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
                    'line_nr' => 104
                  }
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
        }
      ],
      'extra' => {
        'section_number' => '21'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 104
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'env',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'env'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 106
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'code',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'code'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 106
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'option',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'option'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 106
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'samp',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'samp'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 106
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'command',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'command'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 106
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'file',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'file'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 106
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'kbd',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'C-x '
                        },
                        {
                          'cmdname' => 'key',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'ESC'
                                }
                              ],
                              'type' => 'brace_container'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 106
                          }
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 106
                  }
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
        'normalized' => 'env-code-option-samp-command-file-C_002dx-ESC'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 106
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'env',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'env'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 107
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'code',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'code'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 107
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'option',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'option'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 107
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'samp',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'samp'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 107
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'command',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'command'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 107
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'file',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'file'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 107
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'kbd',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'C-x '
                        },
                        {
                          'cmdname' => 'key',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'ESC'
                                }
                              ],
                              'type' => 'brace_container'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 107
                          }
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 107
                  }
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
        }
      ],
      'extra' => {
        'section_number' => '22'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 107
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '8.27'
                },
                {
                  'cmdname' => 'dmn',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'in'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 109
                  }
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
        'normalized' => '8_002e27in'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 109
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '8.27'
                },
                {
                  'cmdname' => 'dmn',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'in'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 110
                  }
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
        }
      ],
      'extra' => {
        'section_number' => '23'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 110
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'sansserif',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'sansserif'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 112
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'slanted',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'slanted'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 112
                  }
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
        'normalized' => 'sansserif-slanted'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 112
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'sansserif',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'sansserif'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 113
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'slanted',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'slanted'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 113
                  }
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
        }
      ],
      'extra' => {
        'section_number' => '24'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 113
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'indicateurl',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'indicateurl'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 115
                  }
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
        'normalized' => 'indicateurl'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 115
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'indicateurl',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'indicateurl'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 116
                  }
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
        }
      ],
      'extra' => {
        'section_number' => '25'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 116
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'sub',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'g'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 118
                  }
                },
                {
                  'text' => 'H 3'
                },
                {
                  'cmdname' => 'sup',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'rd'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 118
                  }
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
        'normalized' => 'gH-3rd'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 118
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'sub',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'g'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 119
                  }
                },
                {
                  'text' => 'H 3'
                },
                {
                  'cmdname' => 'sup',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'rd'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 119
                  }
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
        }
      ],
      'extra' => {
        'section_number' => '26'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 119
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'url',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'http://somewhere_aaa'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 121
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'url',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'url'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'text'
                        }
                      ],
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 121
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'uref',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '/man.cgi/1/ls'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'ls'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 121
                  }
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
        'normalized' => 'http_003a_002f_002fsomewhere_005faaa-url-_002fman_002ecgi_002f1_002fls'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 121
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'url',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'http://somewhere_aaa'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 122
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'url',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'url'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'text'
                        }
                      ],
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 122
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'uref',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '/man.cgi/1/ls'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'ls'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 122
                  }
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => '-'
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
                      'cmdname' => '}'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '-_007b-_007d'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 124
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => ' '
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => '	'
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
                      'cmdname' => '*'
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
                      'cmdname' => ':'
                    },
                    {
                      'text' => ' .'
                    },
                    {
                      'cmdname' => ':'
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
                      'cmdname' => '@'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '-_0021-_002e-_002e-_003f-_0040'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 126
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'atchar',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 128
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'lbracechar',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 128
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'rbracechar',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 128
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'backslashchar',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 128
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'hashchar',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 128
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_0040-_007b-_007d-_005c-_0023'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 128
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'LaTeX',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 130
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'TeX',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 130
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
                        'line_nr' => 130
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
                        'line_nr' => 130
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
                        'line_nr' => 130
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
                        'line_nr' => 130
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
                        'line_nr' => 130
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'LaTeX-TeX-_2022-_002c-_00a9-_2026-_002e_002e_002e'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 130
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'equiv',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 132
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'error',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 132
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
                        'line_nr' => 132
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
                        'line_nr' => 132
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
                        'line_nr' => 132
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
                        'line_nr' => 132
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_2261-error_002d_002d_003e-_20ac-_00a1-_21a6-_2212'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 132
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'geq',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 134
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
                        'line_nr' => 134
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
                        'line_nr' => 134
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_2265-_2264-_2192'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 134
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'ordf',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 136
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
                        'line_nr' => 136
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
                        'line_nr' => 136
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
                        'line_nr' => 136
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
                        'line_nr' => 136
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
                        'line_nr' => 136
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'registeredsymbol',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 136
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_00aa-_00ba-_22c6-_00a3-_22a3-_00bf-_00ae'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 136
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'result',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 138
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
                        'line_nr' => 138
                      }
                    },
                    {
                      'text' => ' a'
                    },
                    {
                      'cmdname' => 'tie',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 138
                      }
                    },
                    {
                      'text' => 'b '
                    },
                    {
                      'cmdname' => 'today',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 138
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'aa',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 138
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_21d2-_00b0-a-b-_00e5'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 138
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'AA',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 140
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
                        'line_nr' => 140
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
                        'line_nr' => 140
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
                        'line_nr' => 140
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
                        'line_nr' => 140
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
                        'line_nr' => 140
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
                        'line_nr' => 140
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
                        'line_nr' => 140
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
                        'line_nr' => 140
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
                        'line_nr' => 140
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
                        'line_nr' => 140
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
                        'line_nr' => 140
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'TH',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 140
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
                        'line_nr' => 140
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_00c5-_00e6-_0153-_00c6-_0152-_00f8-_00d8-_00df-_0142-_0141-_00d0-_00f0-_00de-_00fe'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 140
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => '"',
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
                        'line_nr' => 142
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
                              'text' => 'e'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 142
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
                                'line_nr' => 142
                              }
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 142
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
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 142
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
                              'text' => 'a'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 142
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
                        'line_nr' => 142
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
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 142
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
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 142
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
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 142
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
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 142
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
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 142
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_00e4-_1ebd-_00ee-_00e2-_00e0-_00e9-_00e7-_0113-e_030a-e_030b-_0119'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 142
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
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
                        'line_nr' => 144
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
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 144
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
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 144
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
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 144
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
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 144
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
                        'line_nr' => 144
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
                              'text' => 'ee'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 144
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_0117-_0115-e_0332-_1eb9-_011b-_0237-e_0361e'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 144
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
              'cmdname' => 'ref',
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
                        'line_nr' => 146
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
                                'line_nr' => 146
                              }
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 146
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
                                'line_nr' => 146
                              }
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 146
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_0131-_1e14-_1e08'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 146
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'quotedblleft',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 148
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
                        'line_nr' => 148
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'quoteleft',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 148
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
                        'line_nr' => 148
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
                        'line_nr' => 148
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
                        'line_nr' => 148
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_201c-_201d-_2018-_2019-_201e-_201a'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 148
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'guillemetleft',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 150
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'guillemetright',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 150
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
                        'line_nr' => 150
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
                        'line_nr' => 150
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
                        'line_nr' => 150
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'guilsinglright',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 150
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_00ab-_00bb-_00ab-_00bb-_2039-_203a'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 150
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '`` \'\' --- -- ` \''
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => '_0060_0060-_0027_0027-_002d_002d_002d-_002d_002d-_0060-_0027'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 152
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'acronym',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'AAA'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'fff'
                            }
                          ],
                          'info' => {
                            'spaces_before_argument' => {
                              'text' => ' '
                            }
                          },
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 154
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'acronym',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'AAA'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 154
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'acronym',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'BBB'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 154
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'AAA-AAA-BBB'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 154
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
          'source_marks' => [
            {
              'counter' => 4,
              'element' => {
                'cmdname' => 'ifnottex',
                'contents' => [
                  {
                    'contents' => [
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
                    'type' => 'arguments_line'
                  }
                ],
                'source_info' => {
                  'line_nr' => 156
                }
              },
              'position' => 1,
              'sourcemark_type' => 'expanded_conditional_command',
              'status' => 'start'
            }
          ],
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'abbr',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'CCC'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'rrr'
                            }
                          ],
                          'info' => {
                            'spaces_before_argument' => {
                              'text' => ' '
                            }
                          },
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 157
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'abbr',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'CCC'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 157
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'abbr',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'DDD'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 157
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'CCC-CCC-DDD'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 157
              }
            },
            {
              'source_marks' => [
                {
                  'counter' => 4,
                  'element' => {
                    'cmdname' => 'end',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'ifnottex'
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
                      'text_arg' => 'ifnottex'
                    },
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'line_nr' => 158
                    }
                  },
                  'position' => 1,
                  'sourcemark_type' => 'expanded_conditional_command',
                  'status' => 'end'
                }
              ],
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'email',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'someone'
                            },
                            {
                              'cmdname' => '@'
                            },
                            {
                              'text' => 'somewher'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'the someone'
                            }
                          ],
                          'info' => {
                            'spaces_before_argument' => {
                              'text' => ' '
                            }
                          },
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 160
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'email',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'no_explain'
                            },
                            {
                              'cmdname' => '@'
                            },
                            {
                              'text' => 'there'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 160
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'someone_0040somewher-no_005fexplain_0040there'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 160
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
          'source_marks' => [
            {
              'counter' => 5,
              'element' => {
                'cmdname' => 'ifnottex',
                'contents' => [
                  {
                    'contents' => [
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
                    'type' => 'arguments_line'
                  }
                ],
                'source_info' => {
                  'line_nr' => 162
                }
              },
              'position' => 1,
              'sourcemark_type' => 'expanded_conditional_command',
              'status' => 'start'
            }
          ],
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'image',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'f--ile1'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'extra' => {
                        'input_encoding_name' => 'iso-8859-15'
                      },
                      'source_info' => {
                        'line_nr' => 163
                      }
                    },
                    {
                      'text' => '  '
                    },
                    {
                      'cmdname' => 'image',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'f--ile'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'aze'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'az'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'alt'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'e--xt'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'extra' => {
                        'input_encoding_name' => 'iso-8859-15'
                      },
                      'source_info' => {
                        'line_nr' => 163
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'f_002d_002dile1-f_002d_002dile'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 163
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'verb',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => ' @ {} . ',
                              'type' => 'raw'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'info' => {
                        'delimiter' => '.'
                      },
                      'source_info' => {
                        'line_nr' => 165
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => '-_0040-_007b_007d-_002e-'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 165
              }
            },
            {
              'source_marks' => [
                {
                  'counter' => 5,
                  'element' => {
                    'cmdname' => 'end',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'ifnottex'
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
                      'text_arg' => 'ifnottex'
                    },
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'line_nr' => 166
                    }
                  },
                  'position' => 1,
                  'sourcemark_type' => 'expanded_conditional_command',
                  'status' => 'end'
                }
              ],
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'cite',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'cite '
                            },
                            {
                              'cmdname' => 'asis',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'asis'
                                    }
                                  ],
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 168
                              }
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 168
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
                              'text' => 'in '
                            },
                            {
                              'cmdname' => '@'
                            },
                            {
                              'text' => 'w '
                            },
                            {
                              'cmdname' => 'b',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'b'
                                    }
                                  ],
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 168
                              }
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 168
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'r',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'in r'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 168
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'sc',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'sc'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 168
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'strong',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'str'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 168
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 't',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 't'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 168
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'var',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'var'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 168
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'dfn',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'dfn'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 168
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'i',
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
                        'line_nr' => 168
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'cite-asis-in-_0040w-b-in-r-sc-str-t-var-dfn-i'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 168
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'env',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'env'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 170
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'code',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'code'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 170
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'option',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'option'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 170
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'samp',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'samp'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 170
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'command',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'command'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 170
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'file',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'file'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 170
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'kbd',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'C-x '
                            },
                            {
                              'cmdname' => 'key',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'ESC'
                                    }
                                  ],
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 170
                              }
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 170
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'env-code-option-samp-command-file-C_002dx-ESC'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 170
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '8.27'
                    },
                    {
                      'cmdname' => 'dmn',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'in'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 172
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {}
                      ]
                    },
                    'normalized' => '8_002e27in'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 172
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'sansserif',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'sansserif'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 174
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'slanted',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'slanted'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 174
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'sansserif-slanted'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 174
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'indicateurl',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'indicateurl'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 176
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'indicateurl'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 176
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'sub',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'g'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 178
                      }
                    },
                    {
                      'text' => 'H 3'
                    },
                    {
                      'cmdname' => 'sup',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'rd'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 178
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'gH-3rd'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 178
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'url',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'http://somewhere_aaa'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 180
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'url',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'url'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'text'
                            }
                          ],
                          'info' => {
                            'spaces_before_argument' => {
                              'text' => ' '
                            }
                          },
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 180
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'uref',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => '/man.cgi/1/ls'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'ls'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 180
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'http_003a_002f_002fsomewhere_005faaa-url-_002fman_002ecgi_002f1_002fls'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 180
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
        }
      ],
      'extra' => {
        'section_number' => '27'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 122
      }
    },
    {
      'cmdname' => 'bye',
      'contents' => [
        {
          'text' => '
',
          'type' => 'rawline_arg'
        }
      ]
    }
  ],
  'type' => 'document_root'
};
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[11] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[11];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[12] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[12];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[13] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[13];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[14] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[14];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[15] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[15];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[16] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[16];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[11] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[11];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[12] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[12];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[11] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'contents'}[11];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[12] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'contents'}[12];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[1]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[1]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[1]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[1]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[1]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[1]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[11] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[11];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[12] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[12];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[13] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[13];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[14] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[14];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[15] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[15];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[16] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[16];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[17] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[17];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[18] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[18];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[19] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[19];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[20] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[20];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[21] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[21];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[22] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[22];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[23] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[23];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[24] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[24];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[25] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[25];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[26] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[1]{'contents'}[26];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[11] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[11];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[12] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[12];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[13] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[13];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[14] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[14];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[15] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[15];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[16] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[16];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[17] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[17];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[18] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[18];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[19] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[19];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[20] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[20];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[11] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'contents'}[11];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[12] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[11]{'contents'}[1]{'contents'}[12];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[12]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[12]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[12]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[12]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[12]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[12]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[12]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[12]{'contents'}[1]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[12]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[12]{'contents'}[1]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[13]{'contents'}[1]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[14]{'contents'}[1]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[15]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[15]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[16]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[16]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[16]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[16]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[16]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[16]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[16]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[16]{'contents'}[1]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[16]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[16]{'contents'}[1]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[17]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[17]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[17]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[17]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[17]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[17]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[17]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[17]{'contents'}[1]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[17]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[17]{'contents'}[1]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[18]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[18]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[18]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[18]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[18]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[18]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[19]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[19]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[19]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[19]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[19]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[19]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[20]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[20]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[11] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'contents'}[11];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[12] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'contents'}[12];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[13] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'contents'}[13];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[14] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'contents'}[14];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[15] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'contents'}[15];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[16] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[21]{'contents'}[1]{'contents'}[16];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[11] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'contents'}[11];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[12] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[22]{'contents'}[1]{'contents'}[12];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[23]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[23]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[23]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[23]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[24]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[24]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[24]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[24]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[24]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[24]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[25]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[25]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[26]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[26]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[26]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[26]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[26]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[26]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[27]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[27]{'contents'}[1]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[27]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[27]{'contents'}[1]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[27]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[27]{'contents'}[1]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[27]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[27]{'contents'}[1]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[27]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[27]{'contents'}[1]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[11] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[11];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[12] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[12];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[13] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[13];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[14] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[14];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[15] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[15];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[16] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[16];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[11] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[11];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[12] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[12];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[11] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[11];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[12] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[12];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[11] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[11];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[12] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[12];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[13] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[13];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[14] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[14];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[15] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[15];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[16] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[16];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[17] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[17];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[18] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[18];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[19] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[19];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[20] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[20];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[21] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[21];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[22] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[22];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[23] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[23];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[24] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[24];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[25] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[25];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[26] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[26];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[11] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[11];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[12] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[12];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[13] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[13];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[14] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[14];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[15] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[15];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[16] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[16];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[17] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[17];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[18] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[18];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[19] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[19];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[20] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[20];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[11] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[11];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[12] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[12];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[30]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[30]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[32]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[32]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[32]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[32]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[32]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[32]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[32]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[32]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[32]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[32]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[11] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[11];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[12] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[12];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[13] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[13];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[14] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[14];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[15] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[15];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[16] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[16];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[5] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[6] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[7] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[8] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[9] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'contents'}[9];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[10] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'contents'}[10];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[11] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'contents'}[11];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[12] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'contents'}[12];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[46]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[46]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[46]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[46]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[48]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[48]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[48]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[48]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[48]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[48]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[50]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[50]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[52]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[52]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[52]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[52]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[52]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[52]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[54]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[54]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[54]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[54]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[54]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[54]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[54]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[54]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[54]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[4] = $result_trees{'at_commands_in_refs_latin1'}{'contents'}[56]{'contents'}[54]{'contents'}[0]{'contents'}[0]{'contents'}[4];

$result_texis{'at_commands_in_refs_latin1'} = '@setfilename at_commands_in_refs_latin1.info
@documentencoding ISO-8859-15

@node Top
@top Top

@menu
* @- @{ @}::
* @  @	 @! @* @. @: .@: @? @@::
* @atchar{} @lbracechar{} @rbracechar{} @backslashchar{} @hashchar{}::
* @LaTeX{} @TeX{} @bullet{} @comma{} @copyright{} @dots{} @enddots{}::
* @equiv{} @error{} @euro{} @exclamdown{} @expansion{} @minus{}::
* @geq{} @leq{} @arrow{}::
* @ordf{} @ordm{} @point{} @pounds{} @print{} @questiondown{} @registeredsymbol{}::
* @result{} @textdegree{} a@tie{}b @today{} @aa{}::
* @AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{} @dh{} @TH{} @th{}::
* @"{a} @~{e} @^{@dotless{i}} @^{a} @`{a} @\'e @,{c} @={e} @ringaccent{e} @H{e} @ogonek{e}::
* @dotaccent{e} @u{e} @ubaraccent{e} @udotaccent{e} @v{e} @dotless{j} @tieaccent{ee}::
* @dotless{i} @`{@=E} @,{@\'C}::
* @quotedblleft{} @quotedblright{} @quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{}::
* @guillemetleft{} @guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{} @guilsinglright{}::
* `` \'\' --- -- ` \'::
* @acronym{AAA, fff} @acronym{AAA} @acronym{BBB}::
* @abbr{CCC, rrr} @abbr{CCC} @abbr{DDD}::
* @email{someone@@somewher, the someone} @email{no_explain@@there}::
* @image{f--ile1}  @image{f--ile,aze,az,alt,e--xt}::
* @verb{. @ {} . .}::
* @cite{cite @asis{asis}} @w{in @@w @b{b}} @r{in r} @sc{sc} @strong{str} @t{t} @var{var} @dfn{dfn} @i{i}::
* @env{env} @code{code} @option{option} @samp{samp} @command{command} @file{file} @kbd{C-x @key{ESC}}::
* 8.27@dmn{in}::
* @sansserif{sansserif} @slanted{slanted}::
* @indicateurl{indicateurl}::
* @sub{g}H 3@sup{rd}::
* @url{http://somewhere_aaa} @url{url, text} @uref{/man.cgi/1/ls,,ls}::
@end menu

@node @- @{ @}
@chapter @- @{ @}

@node @  @	 @! @* @. @: .@: @? @@
@chapter @  @	 @! @* @. @: .@: @? @@

@node @atchar{} @lbracechar{} @rbracechar{} @backslashchar{} @hashchar{}
@chapter @atchar{} @lbracechar{} @rbracechar{} @backslashchar{} @hashchar{}

@node @LaTeX{} @TeX{} @bullet{} @comma{} @copyright{} @dots{} @enddots{}
@chapter @LaTeX{} @TeX{} @bullet{} @comma{} @copyright{} @dots{} @enddots{}

@node @equiv{} @error{} @euro{} @exclamdown{} @expansion{} @minus{}
@chapter @equiv{} @error{} @euro{} @exclamdown{} @expansion{} @minus{}

@node @geq{} @leq{} @arrow{}
@chapter @geq{} @leq{} @arrow{}

@node @ordf{} @ordm{} @point{} @pounds{} @print{} @questiondown{} @registeredsymbol{}
@chapter @ordf{} @ordm{} @point{} @pounds{} @print{} @questiondown{} @registeredsymbol{}

@node @result{} @textdegree{} a@tie{}b @today{} @aa{}
@chapter @result{} @textdegree{} a@tie{}b @today{} @aa{}

@node @AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{} @dh{} @TH{} @th{} 
@chapter @AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{} @dh{} @TH{} @th{} 

@node @"{a} @~{e} @^{@dotless{i}} @^{a} @`{a} @\'e @,{c} @={e} @ringaccent{e} @H{e} @ogonek{e}
@chapter  @"{a} @~{e} @^{@dotless{i}} @^{a} @`{a} @\'e @,{c} @={e} @ringaccent{e} @H{e} @ogonek{e}

@node @dotaccent{e} @u{e} @ubaraccent{e} @udotaccent{e} @v{e} @dotless{j} @tieaccent{ee}
@chapter @dotaccent{e} @u{e} @ubaraccent{e} @udotaccent{e} @v{e} @dotless{j} @tieaccent{ee}

@node @dotless{i} @`{@=E} @,{@\'C}
@chapter @dotless{i} @`{@=E} @,{@\'C}

@node @quotedblleft{} @quotedblright{} @quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{}
@chapter @quotedblleft{} @quotedblright{} @quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{}

@node @guillemetleft{} @guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{} @guilsinglright{}
@chapter @guillemetleft{} @guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{} @guilsinglright{}

@node `` \'\' --- -- ` \'
@chapter `` \'\' --- -- ` \'

@node @acronym{AAA, fff} @acronym{AAA} @acronym{BBB}
@chapter @acronym{AAA, fff} @acronym{AAA} @acronym{BBB}

@node @abbr{CCC, rrr} @abbr{CCC} @abbr{DDD}
@chapter @abbr{CCC, rrr} @abbr{CCC} @abbr{DDD}

@node @email{someone@@somewher, the someone} @email{no_explain@@there}
@chapter @email{someone@@somewher, the someone} @email{no_explain@@there}

@node @image{f--ile1}  @image{f--ile,aze,az,alt,e--xt}
@chapter @image{f--ile1}  @image{f--ile,aze,az,alt,e--xt}

@node @verb{. @ {} . .}
@chapter @verb{. @ {} . .}

@node @cite{cite @asis{asis}} @w{in @@w @b{b}} @r{in r} @sc{sc} @strong{str} @t{t} @var{var} @dfn{dfn} @i{i}
@chapter @cite{cite @asis{asis}} @w{in @@w @b{b}} @r{in r} @sc{sc} @strong{str} @t{t} @var{var} @dfn{dfn} @i{i}

@node @env{env} @code{code} @option{option} @samp{samp} @command{command} @file{file} @kbd{C-x @key{ESC}}
@chapter @env{env} @code{code} @option{option} @samp{samp} @command{command} @file{file} @kbd{C-x @key{ESC}}

@node 8.27@dmn{in}
@chapter 8.27@dmn{in}

@node @sansserif{sansserif} @slanted{slanted}
@chapter @sansserif{sansserif} @slanted{slanted}

@node @indicateurl{indicateurl}
@chapter @indicateurl{indicateurl}

@node @sub{g}H 3@sup{rd}
@chapter @sub{g}H 3@sup{rd}

@node @url{http://somewhere_aaa} @url{url, text} @uref{/man.cgi/1/ls,,ls}
@chapter @url{http://somewhere_aaa} @url{url, text} @uref{/man.cgi/1/ls,,ls}

@ref{@- @{ @}}

@ref{@  @	 @! @* @. @: .@: @? @@}

@ref{@atchar{} @lbracechar{} @rbracechar{} @backslashchar{} @hashchar{}}

@ref{@LaTeX{} @TeX{} @bullet{} @comma{} @copyright{} @dots{} @enddots{}}

@ref{@equiv{} @error{} @euro{} @exclamdown{} @expansion{} @minus{}}

@ref{@geq{} @leq{} @arrow{}}

@ref{@ordf{} @ordm{} @point{} @pounds{} @print{} @questiondown{} @registeredsymbol{}}

@ref{@result{} @textdegree{} a@tie{}b @today{} @aa{}}

@ref{@AA{} @ae{} @oe{} @AE{} @OE{} @o{} @O{} @ss{} @l{} @L{} @DH{} @dh{} @TH{} @th{}}

@ref{@"{a} @~{e} @^{@dotless{i}} @^{a} @`{a} @\'e @,{c} @={e} @ringaccent{e} @H{e} @ogonek{e}}

@ref{@dotaccent{e} @u{e} @ubaraccent{e} @udotaccent{e} @v{e} @dotless{j} @tieaccent{ee}}

@ref{@dotless{i} @`{@=E} @,{@\'C}}

@ref{@quotedblleft{} @quotedblright{} @quoteleft{} @quoteright{} @quotedblbase{} @quotesinglbase{}}

@ref{@guillemetleft{} @guillemetright{} @guillemotleft{} @guillemotright{} @guilsinglleft{} @guilsinglright{}}

@ref{`` \'\' --- -- ` \'}

@ref{@acronym{AAA, fff} @acronym{AAA} @acronym{BBB}}

@ref{@abbr{CCC, rrr} @abbr{CCC} @abbr{DDD}}

@ref{@email{someone@@somewher, the someone} @email{no_explain@@there}}

@ref{@image{f--ile1}  @image{f--ile,aze,az,alt,e--xt}}

@ref{@verb{. @ {} . .}}

@ref{@cite{cite @asis{asis}} @w{in @@w @b{b}} @r{in r} @sc{sc} @strong{str} @t{t} @var{var} @dfn{dfn} @i{i}}

@ref{@env{env} @code{code} @option{option} @samp{samp} @command{command} @file{file} @kbd{C-x @key{ESC}}}

@ref{8.27@dmn{in}}

@ref{@sansserif{sansserif} @slanted{slanted}}

@ref{@indicateurl{indicateurl}}

@ref{@sub{g}H 3@sup{rd}}

@ref{@url{http://somewhere_aaa} @url{url, text} @uref{/man.cgi/1/ls,,ls}}

@bye
';


$result_texts{'at_commands_in_refs_latin1'} = '
Top
***

*  { }::
*     ! 
 .  . ? @::
* @ { } \\ #::
* LaTeX TeX * , (C) ... ...::
* == error--> Euro ! ==> -::
* >= <= ->::
* a o -!- # -| ? (R)::
* => o a b a sunny day aa::
* AA ae oe AE OE /o /O ss /l /L D d TH th::
* a" e~ i^ a^ a` e\' c, e= e* e\'\' e;::
* e. e( e_ .e e< j ee[::
* i E=` C\',::
* " " ` \' ,, ,::
* << >> << >> < >::
* `` \'\' --- -- ` \'::
* AAA (fff) AAA BBB::
* CCC (rrr) CCC DDD::
* the someone no_explain@there::
* f--ile1  f--ile::
*  @ {} . ::
* cite asis in @w b in r SC str t var dfn i::
* env code option samp command file C-x ESC::
* 8.27in::
* sansserif slanted::
* indicateurl::
* gH 3rd::
* http://somewhere_aaa url (text) ls::

1  { }
******

2     ! 
 .  . ? @
*****************

3 @ { } \\ #
***********

4 LaTeX TeX * , (C) ... ...
***************************

5 == error--> Euro ! ==> -
**************************

6 >= <= ->
**********

7 a o -!- # -| ? (R)
********************

8 => o a b a sunny day aa
*************************

9 AA ae oe AE OE /o /O ss /l /L D d TH th
*****************************************

10 a" e~ i^ a^ a` e\' c, e= e* e\'\' e;
************************************

11 e. e( e_ .e e< j ee[
***********************

12 i E=` C\',
************

13 " " ` \' ,, ,
***************

14 << >> << >> < >
******************

15 " " -- - ` \'
***************

16 AAA (fff) AAA BBB
********************

17 CCC (rrr) CCC DDD
********************

18 the someone no_explain@there
*******************************

19 f--ile1  f--ile
******************

20  @ {} . 
***********

21 cite asis in @w b in r SC str t var dfn i
********************************************

22 env code option samp command file C-x ESC
********************************************

23 8.27in
*********

24 sansserif slanted
********************

25 indicateurl
**************

26 gH 3rd
*********

27 http://somewhere_aaa url (text) ls
*************************************

 { }

    ! 
 .  . ? @

@ { } \\ #

LaTeX TeX * , (C) ... ...

== error--> Euro ! ==> -

>= <= ->

a o -!- # -| ? (R)

=> o a b a sunny day aa

AA ae oe AE OE /o /O ss /l /L D d TH th

a" e~ i^ a^ a` e\' c, e= e* e\'\' e;

e. e( e_ .e e< j ee[

i E=` C\',

" " ` \' ,, ,

<< >> << >> < >

" " -- - ` \'

AAA (fff) AAA BBB

CCC (rrr) CCC DDD

the someone no_explain@there

f--ile1  f--ile

 @ {} . 

cite asis in @w b in r SC str t var dfn i

env code option samp command file C-x ESC

8.27in

sansserif slanted

indicateurl

gH 3rd

http://somewhere_aaa url (text) ls

';

$result_sectioning{'at_commands_in_refs_latin1'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '-_007b-_007d'
                  }
                },
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '1',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '-_0021-_002e-_002e-_003f-_0040'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '2',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '_0040-_007b-_007d-_005c-_0023'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '3',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'LaTeX-TeX-_2022-_002c-_00a9-_2026-_002e_002e_002e'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '4',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '_2261-error_002d_002d_003e-_20ac-_00a1-_21a6-_2212'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '5',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '_2265-_2264-_2192'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '6',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '_00aa-_00ba-_22c6-_00a3-_22a3-_00bf-_00ae'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '7',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '_21d2-_00b0-a-b-_00e5'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '8',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '_00c5-_00e6-_0153-_00c6-_0152-_00f8-_00d8-_00df-_0142-_0141-_00d0-_00f0-_00de-_00fe'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '9',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '_00e4-_1ebd-_00ee-_00e2-_00e0-_00e9-_00e7-_0113-e_030a-e_030b-_0119'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '10',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '_0117-_0115-e_0332-_1eb9-_011b-_0237-e_0361e'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '11',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '_0131-_1e14-_1e08'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '12',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '_201c-_201d-_2018-_2019-_201e-_201a'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '13',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '_00ab-_00bb-_00ab-_00bb-_2039-_203a'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '14',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '_0060_0060-_0027_0027-_002d_002d_002d-_002d_002d-_0060-_0027'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '15',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'AAA-AAA-BBB'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '16',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'CCC-CCC-DDD'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '17',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'someone_0040somewher-no_005fexplain_0040there'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '18',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'f_002d_002dile1-f_002d_002dile'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '19',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '-_0040-_007b_007d-_002e-'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '20',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'cite-asis-in-_0040w-b-in-r-sc-str-t-var-dfn-i'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '21',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'env-code-option-samp-command-file-C_002dx-ESC'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '22',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '8_002e27in'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '23',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'sansserif-slanted'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '24',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'indicateurl'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '25',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'gH-3rd'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '26',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'http_003a_002f_002fsomewhere_005faaa-url-_002fman_002ecgi_002f1_002fls'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '27',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
          ],
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[5]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[5]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[5]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[5]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[6]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[5];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[6]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[6]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[5];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[6]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[7]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[6];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[7]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[7]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[6];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[7]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[8]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[7];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[8]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[8]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[7];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[8]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[9]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[8];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[9]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[9]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[8];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[9]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[10]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[9];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[10]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[10]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[9];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[10]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[11]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[10];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[11]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[11]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[10];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[11]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[12]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[11];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[12]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[12]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[11];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[12]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[13]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[12];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[13]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[13]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[12];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[13]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[14]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[13];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[14]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[14]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[13];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[14]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[15]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[14];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[15]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[15]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[14];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[15]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[16]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[15];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[16]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[16]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[15];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[16]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[17]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[16];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[17]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[17]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[16];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[17]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[18]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[17];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[18]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[18]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[17];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[18]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[19]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[18];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[19]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[19]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[18];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[19]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[20]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[19];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[20]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[20]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[19];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[20]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[21]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[20];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[21]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[21]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[20];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[21]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[22]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[21];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[22]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[22]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[21];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[22]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[23]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[22];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[23]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[23]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[22];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[23]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[24]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[23];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[24]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[24]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[23];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[24]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[25]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[24];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[25]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[25]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[24];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[25]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[26]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[25];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[26]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[26]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[25];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[26]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_refs_latin1'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'at_commands_in_refs_latin1'};

$result_nodes{'at_commands_in_refs_latin1'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '1'
              }
            },
            'node_directions' => {
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {
                    'cmdname' => 'chapter',
                    'extra' => {
                      'section_number' => '2'
                    }
                  },
                  'node_directions' => {
                    'next' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'associated_section' => {
                          'cmdname' => 'chapter',
                          'extra' => {
                            'section_number' => '3'
                          }
                        },
                        'node_directions' => {
                          'next' => {
                            'cmdname' => 'node',
                            'extra' => {
                              'associated_section' => {
                                'cmdname' => 'chapter',
                                'extra' => {
                                  'section_number' => '4'
                                }
                              },
                              'node_directions' => {
                                'next' => {
                                  'cmdname' => 'node',
                                  'extra' => {
                                    'associated_section' => {
                                      'cmdname' => 'chapter',
                                      'extra' => {
                                        'section_number' => '5'
                                      }
                                    },
                                    'node_directions' => {
                                      'next' => {
                                        'cmdname' => 'node',
                                        'extra' => {
                                          'associated_section' => {
                                            'cmdname' => 'chapter',
                                            'extra' => {
                                              'section_number' => '6'
                                            }
                                          },
                                          'node_directions' => {
                                            'next' => {
                                              'cmdname' => 'node',
                                              'extra' => {
                                                'associated_section' => {
                                                  'cmdname' => 'chapter',
                                                  'extra' => {
                                                    'section_number' => '7'
                                                  }
                                                },
                                                'node_directions' => {
                                                  'next' => {
                                                    'cmdname' => 'node',
                                                    'extra' => {
                                                      'associated_section' => {
                                                        'cmdname' => 'chapter',
                                                        'extra' => {
                                                          'section_number' => '8'
                                                        }
                                                      },
                                                      'node_directions' => {
                                                        'next' => {
                                                          'cmdname' => 'node',
                                                          'extra' => {
                                                            'associated_section' => {
                                                              'cmdname' => 'chapter',
                                                              'extra' => {
                                                                'section_number' => '9'
                                                              }
                                                            },
                                                            'node_directions' => {
                                                              'next' => {
                                                                'cmdname' => 'node',
                                                                'extra' => {
                                                                  'associated_section' => {
                                                                    'cmdname' => 'chapter',
                                                                    'extra' => {
                                                                      'section_number' => '10'
                                                                    }
                                                                  },
                                                                  'node_directions' => {
                                                                    'next' => {
                                                                      'cmdname' => 'node',
                                                                      'extra' => {
                                                                        'associated_section' => {
                                                                          'cmdname' => 'chapter',
                                                                          'extra' => {
                                                                            'section_number' => '11'
                                                                          }
                                                                        },
                                                                        'node_directions' => {
                                                                          'next' => {
                                                                            'cmdname' => 'node',
                                                                            'extra' => {
                                                                              'associated_section' => {
                                                                                'cmdname' => 'chapter',
                                                                                'extra' => {
                                                                                  'section_number' => '12'
                                                                                }
                                                                              },
                                                                              'node_directions' => {
                                                                                'next' => {
                                                                                  'cmdname' => 'node',
                                                                                  'extra' => {
                                                                                    'associated_section' => {
                                                                                      'cmdname' => 'chapter',
                                                                                      'extra' => {
                                                                                        'section_number' => '13'
                                                                                      }
                                                                                    },
                                                                                    'node_directions' => {
                                                                                      'next' => {
                                                                                        'cmdname' => 'node',
                                                                                        'extra' => {
                                                                                          'associated_section' => {
                                                                                            'cmdname' => 'chapter',
                                                                                            'extra' => {
                                                                                              'section_number' => '14'
                                                                                            }
                                                                                          },
                                                                                          'node_directions' => {
                                                                                            'next' => {
                                                                                              'cmdname' => 'node',
                                                                                              'extra' => {
                                                                                                'associated_section' => {
                                                                                                  'cmdname' => 'chapter',
                                                                                                  'extra' => {
                                                                                                    'section_number' => '15'
                                                                                                  }
                                                                                                },
                                                                                                'node_directions' => {
                                                                                                  'next' => {
                                                                                                    'cmdname' => 'node',
                                                                                                    'extra' => {
                                                                                                      'associated_section' => {
                                                                                                        'cmdname' => 'chapter',
                                                                                                        'extra' => {
                                                                                                          'section_number' => '16'
                                                                                                        }
                                                                                                      },
                                                                                                      'node_directions' => {
                                                                                                        'next' => {
                                                                                                          'cmdname' => 'node',
                                                                                                          'extra' => {
                                                                                                            'associated_section' => {
                                                                                                              'cmdname' => 'chapter',
                                                                                                              'extra' => {
                                                                                                                'section_number' => '17'
                                                                                                              }
                                                                                                            },
                                                                                                            'node_directions' => {
                                                                                                              'next' => {
                                                                                                                'cmdname' => 'node',
                                                                                                                'extra' => {
                                                                                                                  'associated_section' => {
                                                                                                                    'cmdname' => 'chapter',
                                                                                                                    'extra' => {
                                                                                                                      'section_number' => '18'
                                                                                                                    }
                                                                                                                  },
                                                                                                                  'node_directions' => {
                                                                                                                    'next' => {
                                                                                                                      'cmdname' => 'node',
                                                                                                                      'extra' => {
                                                                                                                        'associated_section' => {
                                                                                                                          'cmdname' => 'chapter',
                                                                                                                          'extra' => {
                                                                                                                            'section_number' => '19'
                                                                                                                          }
                                                                                                                        },
                                                                                                                        'node_directions' => {
                                                                                                                          'next' => {
                                                                                                                            'cmdname' => 'node',
                                                                                                                            'extra' => {
                                                                                                                              'associated_section' => {
                                                                                                                                'cmdname' => 'chapter',
                                                                                                                                'extra' => {
                                                                                                                                  'section_number' => '20'
                                                                                                                                }
                                                                                                                              },
                                                                                                                              'node_directions' => {
                                                                                                                                'next' => {
                                                                                                                                  'cmdname' => 'node',
                                                                                                                                  'extra' => {
                                                                                                                                    'associated_section' => {
                                                                                                                                      'cmdname' => 'chapter',
                                                                                                                                      'extra' => {
                                                                                                                                        'section_number' => '21'
                                                                                                                                      }
                                                                                                                                    },
                                                                                                                                    'node_directions' => {
                                                                                                                                      'next' => {
                                                                                                                                        'cmdname' => 'node',
                                                                                                                                        'extra' => {
                                                                                                                                          'associated_section' => {
                                                                                                                                            'cmdname' => 'chapter',
                                                                                                                                            'extra' => {
                                                                                                                                              'section_number' => '22'
                                                                                                                                            }
                                                                                                                                          },
                                                                                                                                          'node_directions' => {
                                                                                                                                            'next' => {
                                                                                                                                              'cmdname' => 'node',
                                                                                                                                              'extra' => {
                                                                                                                                                'associated_section' => {
                                                                                                                                                  'cmdname' => 'chapter',
                                                                                                                                                  'extra' => {
                                                                                                                                                    'section_number' => '23'
                                                                                                                                                  }
                                                                                                                                                },
                                                                                                                                                'node_directions' => {
                                                                                                                                                  'next' => {
                                                                                                                                                    'cmdname' => 'node',
                                                                                                                                                    'extra' => {
                                                                                                                                                      'associated_section' => {
                                                                                                                                                        'cmdname' => 'chapter',
                                                                                                                                                        'extra' => {
                                                                                                                                                          'section_number' => '24'
                                                                                                                                                        }
                                                                                                                                                      },
                                                                                                                                                      'node_directions' => {
                                                                                                                                                        'next' => {
                                                                                                                                                          'cmdname' => 'node',
                                                                                                                                                          'extra' => {
                                                                                                                                                            'associated_section' => {
                                                                                                                                                              'cmdname' => 'chapter',
                                                                                                                                                              'extra' => {
                                                                                                                                                                'section_number' => '25'
                                                                                                                                                              }
                                                                                                                                                            },
                                                                                                                                                            'node_directions' => {
                                                                                                                                                              'next' => {
                                                                                                                                                                'cmdname' => 'node',
                                                                                                                                                                'extra' => {
                                                                                                                                                                  'associated_section' => {
                                                                                                                                                                    'cmdname' => 'chapter',
                                                                                                                                                                    'extra' => {
                                                                                                                                                                      'section_number' => '26'
                                                                                                                                                                    }
                                                                                                                                                                  },
                                                                                                                                                                  'node_directions' => {
                                                                                                                                                                    'next' => {
                                                                                                                                                                      'cmdname' => 'node',
                                                                                                                                                                      'extra' => {
                                                                                                                                                                        'associated_section' => {
                                                                                                                                                                          'cmdname' => 'chapter',
                                                                                                                                                                          'extra' => {
                                                                                                                                                                            'section_number' => '27'
                                                                                                                                                                          }
                                                                                                                                                                        },
                                                                                                                                                                        'node_directions' => {
                                                                                                                                                                          'prev' => {},
                                                                                                                                                                          'up' => {}
                                                                                                                                                                        },
                                                                                                                                                                        'normalized' => 'http_003a_002f_002fsomewhere_005faaa-url-_002fman_002ecgi_002f1_002fls'
                                                                                                                                                                      }
                                                                                                                                                                    },
                                                                                                                                                                    'prev' => {},
                                                                                                                                                                    'up' => {}
                                                                                                                                                                  },
                                                                                                                                                                  'normalized' => 'gH-3rd'
                                                                                                                                                                }
                                                                                                                                                              },
                                                                                                                                                              'prev' => {},
                                                                                                                                                              'up' => {}
                                                                                                                                                            },
                                                                                                                                                            'normalized' => 'indicateurl'
                                                                                                                                                          }
                                                                                                                                                        },
                                                                                                                                                        'prev' => {},
                                                                                                                                                        'up' => {}
                                                                                                                                                      },
                                                                                                                                                      'normalized' => 'sansserif-slanted'
                                                                                                                                                    }
                                                                                                                                                  },
                                                                                                                                                  'prev' => {},
                                                                                                                                                  'up' => {}
                                                                                                                                                },
                                                                                                                                                'normalized' => '8_002e27in'
                                                                                                                                              }
                                                                                                                                            },
                                                                                                                                            'prev' => {},
                                                                                                                                            'up' => {}
                                                                                                                                          },
                                                                                                                                          'normalized' => 'env-code-option-samp-command-file-C_002dx-ESC'
                                                                                                                                        }
                                                                                                                                      },
                                                                                                                                      'prev' => {},
                                                                                                                                      'up' => {}
                                                                                                                                    },
                                                                                                                                    'normalized' => 'cite-asis-in-_0040w-b-in-r-sc-str-t-var-dfn-i'
                                                                                                                                  }
                                                                                                                                },
                                                                                                                                'prev' => {},
                                                                                                                                'up' => {}
                                                                                                                              },
                                                                                                                              'normalized' => '-_0040-_007b_007d-_002e-'
                                                                                                                            }
                                                                                                                          },
                                                                                                                          'prev' => {},
                                                                                                                          'up' => {}
                                                                                                                        },
                                                                                                                        'normalized' => 'f_002d_002dile1-f_002d_002dile'
                                                                                                                      }
                                                                                                                    },
                                                                                                                    'prev' => {},
                                                                                                                    'up' => {}
                                                                                                                  },
                                                                                                                  'normalized' => 'someone_0040somewher-no_005fexplain_0040there'
                                                                                                                }
                                                                                                              },
                                                                                                              'prev' => {},
                                                                                                              'up' => {}
                                                                                                            },
                                                                                                            'normalized' => 'CCC-CCC-DDD'
                                                                                                          }
                                                                                                        },
                                                                                                        'prev' => {},
                                                                                                        'up' => {}
                                                                                                      },
                                                                                                      'normalized' => 'AAA-AAA-BBB'
                                                                                                    }
                                                                                                  },
                                                                                                  'prev' => {},
                                                                                                  'up' => {}
                                                                                                },
                                                                                                'normalized' => '_0060_0060-_0027_0027-_002d_002d_002d-_002d_002d-_0060-_0027'
                                                                                              }
                                                                                            },
                                                                                            'prev' => {},
                                                                                            'up' => {}
                                                                                          },
                                                                                          'normalized' => '_00ab-_00bb-_00ab-_00bb-_2039-_203a'
                                                                                        }
                                                                                      },
                                                                                      'prev' => {},
                                                                                      'up' => {}
                                                                                    },
                                                                                    'normalized' => '_201c-_201d-_2018-_2019-_201e-_201a'
                                                                                  }
                                                                                },
                                                                                'prev' => {},
                                                                                'up' => {}
                                                                              },
                                                                              'normalized' => '_0131-_1e14-_1e08'
                                                                            }
                                                                          },
                                                                          'prev' => {},
                                                                          'up' => {}
                                                                        },
                                                                        'normalized' => '_0117-_0115-e_0332-_1eb9-_011b-_0237-e_0361e'
                                                                      }
                                                                    },
                                                                    'prev' => {},
                                                                    'up' => {}
                                                                  },
                                                                  'normalized' => '_00e4-_1ebd-_00ee-_00e2-_00e0-_00e9-_00e7-_0113-e_030a-e_030b-_0119'
                                                                }
                                                              },
                                                              'prev' => {},
                                                              'up' => {}
                                                            },
                                                            'normalized' => '_00c5-_00e6-_0153-_00c6-_0152-_00f8-_00d8-_00df-_0142-_0141-_00d0-_00f0-_00de-_00fe'
                                                          }
                                                        },
                                                        'prev' => {},
                                                        'up' => {}
                                                      },
                                                      'normalized' => '_21d2-_00b0-a-b-_00e5'
                                                    }
                                                  },
                                                  'prev' => {},
                                                  'up' => {}
                                                },
                                                'normalized' => '_00aa-_00ba-_22c6-_00a3-_22a3-_00bf-_00ae'
                                              }
                                            },
                                            'prev' => {},
                                            'up' => {}
                                          },
                                          'normalized' => '_2265-_2264-_2192'
                                        }
                                      },
                                      'prev' => {},
                                      'up' => {}
                                    },
                                    'normalized' => '_2261-error_002d_002d_003e-_20ac-_00a1-_21a6-_2212'
                                  }
                                },
                                'prev' => {},
                                'up' => {}
                              },
                              'normalized' => 'LaTeX-TeX-_2022-_002c-_00a9-_2026-_002e_002e_002e'
                            }
                          },
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => '_0040-_007b-_007d-_005c-_0023'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => '-_0021-_002e-_002e-_003f-_0040'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => '-_007b-_007d'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {}
];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_refs_latin1'}[0];
$result_nodes{'at_commands_in_refs_latin1'}[1] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[2] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[3] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[4] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[5] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[6] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[7] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[8] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[9] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[10] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[11] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[12] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[13] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[14] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[15] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[16] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[17] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[18] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[19] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[20] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[21] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[22] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[23] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[24] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[25] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[26] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'at_commands_in_refs_latin1'}[27] = $result_nodes{'at_commands_in_refs_latin1'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'at_commands_in_refs_latin1'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'next' => {
          'extra' => {
            'menu_directions' => {
              'next' => {
                'extra' => {
                  'menu_directions' => {
                    'next' => {
                      'extra' => {
                        'menu_directions' => {
                          'next' => {
                            'extra' => {
                              'menu_directions' => {
                                'next' => {
                                  'extra' => {
                                    'menu_directions' => {
                                      'next' => {
                                        'extra' => {
                                          'menu_directions' => {
                                            'next' => {
                                              'extra' => {
                                                'menu_directions' => {
                                                  'next' => {
                                                    'extra' => {
                                                      'menu_directions' => {
                                                        'next' => {
                                                          'extra' => {
                                                            'menu_directions' => {
                                                              'next' => {
                                                                'extra' => {
                                                                  'menu_directions' => {
                                                                    'next' => {
                                                                      'extra' => {
                                                                        'menu_directions' => {
                                                                          'next' => {
                                                                            'extra' => {
                                                                              'menu_directions' => {
                                                                                'next' => {
                                                                                  'extra' => {
                                                                                    'menu_directions' => {
                                                                                      'next' => {
                                                                                        'extra' => {
                                                                                          'menu_directions' => {
                                                                                            'next' => {
                                                                                              'extra' => {
                                                                                                'menu_directions' => {
                                                                                                  'next' => {
                                                                                                    'extra' => {
                                                                                                      'menu_directions' => {
                                                                                                        'next' => {
                                                                                                          'extra' => {
                                                                                                            'menu_directions' => {
                                                                                                              'next' => {
                                                                                                                'extra' => {
                                                                                                                  'menu_directions' => {
                                                                                                                    'next' => {
                                                                                                                      'extra' => {
                                                                                                                        'menu_directions' => {
                                                                                                                          'next' => {
                                                                                                                            'extra' => {
                                                                                                                              'menu_directions' => {
                                                                                                                                'next' => {
                                                                                                                                  'extra' => {
                                                                                                                                    'menu_directions' => {
                                                                                                                                      'next' => {
                                                                                                                                        'extra' => {
                                                                                                                                          'menu_directions' => {
                                                                                                                                            'next' => {
                                                                                                                                              'extra' => {
                                                                                                                                                'menu_directions' => {
                                                                                                                                                  'next' => {
                                                                                                                                                    'extra' => {
                                                                                                                                                      'menu_directions' => {
                                                                                                                                                        'next' => {
                                                                                                                                                          'extra' => {
                                                                                                                                                            'menu_directions' => {
                                                                                                                                                              'next' => {
                                                                                                                                                                'extra' => {
                                                                                                                                                                  'menu_directions' => {
                                                                                                                                                                    'prev' => {},
                                                                                                                                                                    'up' => {}
                                                                                                                                                                  },
                                                                                                                                                                  'normalized' => 'http_003a_002f_002fsomewhere_005faaa-url-_002fman_002ecgi_002f1_002fls'
                                                                                                                                                                }
                                                                                                                                                              },
                                                                                                                                                              'prev' => {},
                                                                                                                                                              'up' => {}
                                                                                                                                                            },
                                                                                                                                                            'normalized' => 'gH-3rd'
                                                                                                                                                          }
                                                                                                                                                        },
                                                                                                                                                        'prev' => {},
                                                                                                                                                        'up' => {}
                                                                                                                                                      },
                                                                                                                                                      'normalized' => 'indicateurl'
                                                                                                                                                    }
                                                                                                                                                  },
                                                                                                                                                  'prev' => {},
                                                                                                                                                  'up' => {}
                                                                                                                                                },
                                                                                                                                                'normalized' => 'sansserif-slanted'
                                                                                                                                              }
                                                                                                                                            },
                                                                                                                                            'prev' => {},
                                                                                                                                            'up' => {}
                                                                                                                                          },
                                                                                                                                          'normalized' => '8_002e27in'
                                                                                                                                        }
                                                                                                                                      },
                                                                                                                                      'prev' => {},
                                                                                                                                      'up' => {}
                                                                                                                                    },
                                                                                                                                    'normalized' => 'env-code-option-samp-command-file-C_002dx-ESC'
                                                                                                                                  }
                                                                                                                                },
                                                                                                                                'prev' => {},
                                                                                                                                'up' => {}
                                                                                                                              },
                                                                                                                              'normalized' => 'cite-asis-in-_0040w-b-in-r-sc-str-t-var-dfn-i'
                                                                                                                            }
                                                                                                                          },
                                                                                                                          'prev' => {},
                                                                                                                          'up' => {}
                                                                                                                        },
                                                                                                                        'normalized' => '-_0040-_007b_007d-_002e-'
                                                                                                                      }
                                                                                                                    },
                                                                                                                    'prev' => {},
                                                                                                                    'up' => {}
                                                                                                                  },
                                                                                                                  'normalized' => 'f_002d_002dile1-f_002d_002dile'
                                                                                                                }
                                                                                                              },
                                                                                                              'prev' => {},
                                                                                                              'up' => {}
                                                                                                            },
                                                                                                            'normalized' => 'someone_0040somewher-no_005fexplain_0040there'
                                                                                                          }
                                                                                                        },
                                                                                                        'prev' => {},
                                                                                                        'up' => {}
                                                                                                      },
                                                                                                      'normalized' => 'CCC-CCC-DDD'
                                                                                                    }
                                                                                                  },
                                                                                                  'prev' => {},
                                                                                                  'up' => {}
                                                                                                },
                                                                                                'normalized' => 'AAA-AAA-BBB'
                                                                                              }
                                                                                            },
                                                                                            'prev' => {},
                                                                                            'up' => {}
                                                                                          },
                                                                                          'normalized' => '_0060_0060-_0027_0027-_002d_002d_002d-_002d_002d-_0060-_0027'
                                                                                        }
                                                                                      },
                                                                                      'prev' => {},
                                                                                      'up' => {}
                                                                                    },
                                                                                    'normalized' => '_00ab-_00bb-_00ab-_00bb-_2039-_203a'
                                                                                  }
                                                                                },
                                                                                'prev' => {},
                                                                                'up' => {}
                                                                              },
                                                                              'normalized' => '_201c-_201d-_2018-_2019-_201e-_201a'
                                                                            }
                                                                          },
                                                                          'prev' => {},
                                                                          'up' => {}
                                                                        },
                                                                        'normalized' => '_0131-_1e14-_1e08'
                                                                      }
                                                                    },
                                                                    'prev' => {},
                                                                    'up' => {}
                                                                  },
                                                                  'normalized' => '_0117-_0115-e_0332-_1eb9-_011b-_0237-e_0361e'
                                                                }
                                                              },
                                                              'prev' => {},
                                                              'up' => {}
                                                            },
                                                            'normalized' => '_00e4-_1ebd-_00ee-_00e2-_00e0-_00e9-_00e7-_0113-e_030a-e_030b-_0119'
                                                          }
                                                        },
                                                        'prev' => {},
                                                        'up' => {}
                                                      },
                                                      'normalized' => '_00c5-_00e6-_0153-_00c6-_0152-_00f8-_00d8-_00df-_0142-_0141-_00d0-_00f0-_00de-_00fe'
                                                    }
                                                  },
                                                  'prev' => {},
                                                  'up' => {}
                                                },
                                                'normalized' => '_21d2-_00b0-a-b-_00e5'
                                              }
                                            },
                                            'prev' => {},
                                            'up' => {}
                                          },
                                          'normalized' => '_00aa-_00ba-_22c6-_00a3-_22a3-_00bf-_00ae'
                                        }
                                      },
                                      'prev' => {},
                                      'up' => {}
                                    },
                                    'normalized' => '_2265-_2264-_2192'
                                  }
                                },
                                'prev' => {},
                                'up' => {}
                              },
                              'normalized' => '_2261-error_002d_002d_003e-_20ac-_00a1-_21a6-_2212'
                            }
                          },
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'LaTeX-TeX-_2022-_002c-_00a9-_2026-_002e_002e_002e'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => '_0040-_007b-_007d-_005c-_0023'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => '-_0021-_002e-_002e-_003f-_0040'
          }
        },
        'up' => {}
      },
      'normalized' => '-_007b-_007d'
    }
  },
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {}
];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'at_commands_in_refs_latin1'}[1];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'at_commands_in_refs_latin1'}[0];
$result_menus{'at_commands_in_refs_latin1'}[2] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[3] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[4] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[5] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[6] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[7] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[8] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[9] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[10] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[11] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[12] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[13] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[14] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[15] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[16] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[17] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[18] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[19] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[20] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[21] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[22] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[23] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[24] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[25] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[26] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'at_commands_in_refs_latin1'}[27] = $result_menus{'at_commands_in_refs_latin1'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};

$result_errors{'at_commands_in_refs_latin1'} = [
  {
    'error_line' => 'warning: @verb should not appear on @node line
',
    'line_nr' => 98,
    'text' => '@verb should not appear on @node line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear on @chapter line
',
    'line_nr' => 100,
    'text' => '@verb should not appear on @chapter line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @ref
',
    'line_nr' => 165,
    'text' => '@verb should not appear anywhere inside @ref',
    'type' => 'warning'
  }
];


$result_floats{'at_commands_in_refs_latin1'} = {};


$result_converted_errors{'file_html'}->{'at_commands_in_refs_latin1'} = [
  {
    'error_line' => 'warning: @image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'
',
    'line_nr' => 95,
    'text' => '@image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'
',
    'line_nr' => 95,
    'text' => '@image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'
',
    'line_nr' => 93,
    'text' => '@image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'
',
    'line_nr' => 93,
    'text' => '@image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'
',
    'line_nr' => 95,
    'text' => '@image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'
',
    'line_nr' => 163,
    'text' => '@image file `f--ile1\' (for HTML) not found, using `f--ile1.jpg\'',
    'type' => 'warning'
  }
];


$result_converted_errors{'file_info'}->{'at_commands_in_refs_latin1'} = [
  {
    'error_line' => 'warning: could not find @image file `f--ile1.txt\' nor alternate text
',
    'line_nr' => 26,
    'text' => 'could not find @image file `f--ile1.txt\' nor alternate text',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: menu entry node name should not contain `:\'
',
    'line_nr' => 34,
    'text' => 'menu entry node name should not contain `:\'',
    'type' => 'warning'
  },
  {
    'error_line' => "warning: \@node name should not contain `,': LaTeX TeX * , \x{a9} ... ...
",
    'line_nr' => 46,
    'text' => "\@node name should not contain `,': LaTeX TeX * , \x{a9} ... ...",
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @node name should not contain `,\': i E=` C\',
',
    'line_nr' => 70,
    'text' => '@node name should not contain `,\': i E=` C\',',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @node name should not contain `,\': " " ` \' ,, ,
',
    'line_nr' => 73,
    'text' => '@node name should not contain `,\': " " ` \' ,, ,',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: could not find @image file `f--ile1.txt\' nor alternate text
',
    'line_nr' => 93,
    'text' => 'could not find @image file `f--ile1.txt\' nor alternate text',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: could not find @image file `f--ile1.txt\' nor alternate text
',
    'line_nr' => 95,
    'text' => 'could not find @image file `f--ile1.txt\' nor alternate text',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: could not find @image file `f--ile1.txt\' nor alternate text
',
    'line_nr' => 93,
    'text' => 'could not find @image file `f--ile1.txt\' nor alternate text',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @ref node name should not contain `:\'
',
    'line_nr' => 180,
    'text' => '@ref node name should not contain `:\'',
    'type' => 'warning'
  }
];


1;
