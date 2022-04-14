use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'test_accents_sc_enable_encoding_usascii'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '\\input texinfo
',
              'type' => 'text_before_beginning'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_beginning'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'US-ASCII'
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
              'cmdname' => 'documentencoding',
              'extra' => {
                'input_encoding_name' => 'us-ascii',
                'input_perl_encoding' => 'ascii',
                'spaces_before_argument' => ' ',
                'text_arg' => 'US-ASCII'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 3,
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
          'type' => 'preamble_before_content'
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
              'text' => 'top'
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
      'contents' => [],
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
        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
        'line_nr' => 5,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'top section'
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
        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
        'line_nr' => 6,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'node chap'
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
      'contents' => [],
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'node-chap'
          }
        ],
        'normalized' => 'node-chap',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
        'line_nr' => 8,
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
          'contents' => [
            {
              'parent' => {},
              'text' => '``in double q\'\'. `in simple q\'.
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
                      'text' => 'e'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => '\'',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 13,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ', --- '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'def'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'dfn',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 13,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' -- '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in code'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 13,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '. '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in samp'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'samp',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 13,
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
                      'text' => 'e'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => '\'',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 13,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '. '
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
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 13,
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
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'exclamdown',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 13,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '. '
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
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 13,
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
          'contents' => [
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
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 15,
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
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'enddots',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 15,
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
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'AA',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 15,
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
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 15,
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
                      'text' => 'A'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'dotaccent',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 15,
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
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'l',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 15,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '. '
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
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 15,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '. '
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
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 15,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
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
              'cmdname' => 'quotedblleft',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 16,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' in quotes '
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
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 16,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '. '
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
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 16,
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
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'minus',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 17,
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
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'registeredsymbol',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 17,
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
                      'text' => '--a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'u',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
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
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '--a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => '^',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
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
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'aa',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
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
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'AA',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
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
              'cmdname' => '^',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
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
              'cmdname' => '^',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
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
                  'contents' => [
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
                      'parent' => {},
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 22,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => '~',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
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
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
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
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'r'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'udotaccent',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
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
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'r'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => '\'',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 22,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'v',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
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
                                      'text' => 'n'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => '~',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                                'line_nr' => 22,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => ',',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 22,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => '=',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 22,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
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
              'cmdname' => 'equiv',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
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
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'aa',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 24,
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
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'AA',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 24,
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
                      'cmdname' => '^',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 24,
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
                              'text' => 'E'
                            }
                          ],
                          'parent' => {},
                          'type' => 'following_arg'
                        }
                      ],
                      'cmdname' => '^',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 24,
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
                                      'text' => 'i'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'dotless',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                                'line_nr' => 24,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => '~',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 24,
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
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 24,
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
                              'text' => 'r'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'udotaccent',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 24,
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
                                      'text' => 'r'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => '\'',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                                'line_nr' => 24,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'v',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 24,
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
                                      'cmdname' => '~',
                                      'contents' => [],
                                      'parent' => {},
                                      'source_info' => {
                                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                                        'line_nr' => 24,
                                        'macro' => ''
                                      }
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => ',',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                                'line_nr' => 24,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => '=',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 24,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'sc',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 24,
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
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
        'line_nr' => 9,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[0]{'contents'}[1];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[0]{'contents'}[1];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'};
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[1]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[1];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[1]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'};
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[2]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[2];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[2];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[2]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'};
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[3]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[3];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[3]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'};
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[1];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[2];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[4]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[4];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[4]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[5]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[6]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[6];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[6]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[7]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[8]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[8]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[9]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[10];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[10]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[11]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[12];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[12]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[13]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[14];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[14]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'contents'}[15]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[2];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[3]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[4];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[4]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[5]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[6]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[6];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[6]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[7]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[8]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[8]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[9]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[10];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[10]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[11]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[12];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[12]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[13]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[14];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[14]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[15]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[16];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[16]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[17]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[18];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[18]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[19]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[20]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[20];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[20]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[21]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[22]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[22];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[22]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[23]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[24]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[24];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[24]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'contents'}[25]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[2]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[2];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[2]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[3]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[4];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[4]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[5]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[6];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[6]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[7]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[8]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[8]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[9]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[10]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[10];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[10]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[11]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[12]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[12]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[12]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[12]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[12]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[12];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[12]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[13]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[14]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[14];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[14]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[15]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[16]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[16];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[16]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[17]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[18]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[18]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[18]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[18]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[18]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[18]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[18];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[18]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[19]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[20]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[20]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[20]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[20]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[20]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[20]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[20]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[20]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[20]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[20]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[20]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[20];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[20]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[21]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[22]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[22];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[22]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[23]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[4];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[10];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[12]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[12];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[14]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[14];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[16];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[24]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'contents'}[25]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[8]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'contents'}[9]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4];
$result_trees{'test_accents_sc_enable_encoding_usascii'}{'contents'}[4]{'parent'} = $result_trees{'test_accents_sc_enable_encoding_usascii'};

$result_texis{'test_accents_sc_enable_encoding_usascii'} = '\\input texinfo

@documentencoding US-ASCII

@node top
@top top section

@node node chap
@chapter chapter

``in double q\'\'. `in simple q\'.

@\'e, --- @dfn{def} -- @code{in code}. @samp{in samp} a@\'{e}. @comma{} @exclamdown{}. @dots{}

@geq{} @enddots{} @AA{} @\'e @dotaccent{A} @l{}. @copyright{}. @error{}.
@quotedblleft{} in quotes @quotedblright{}. @expansion{}
@minus{} @registeredsymbol{}


@u{--a}
@^{--a}
@aa{} @AA{} @^e @^E @~{@dotless{i}} @dotless{i} @udotaccent{r} @v{@\'{r}} @={@,{@~{n}}}.
@equiv{}
@sc{@aa{} @AA{} @^e @^E @~{@dotless{i}} @dotless{i} @udotaccent{r} @v{@\'{r}} @={@,{@~{n}}}}.

';


$result_texts{'test_accents_sc_enable_encoding_usascii'} = '
top section
***********

1 chapter
*********

"in double q". `in simple q\'.

e\', -- def - in code. in samp ae\'. , !. ...

>= ... AA e\' A. /l. (C). error-->.
" in quotes ". ==>
- (R)


-a(
-a^
aa AA e^ E^ i~ i .r r\'< n~,=.
==
AA AA E^ E^ I~ I .R R\'< N~,=.

';

$result_sectioning{'test_accents_sc_enable_encoding_usascii'} = {
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
                    'normalized' => 'node-chap'
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
$result_sectioning{'test_accents_sc_enable_encoding_usascii'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'test_accents_sc_enable_encoding_usascii'}{'structure'}{'section_childs'}[0];
$result_sectioning{'test_accents_sc_enable_encoding_usascii'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'test_accents_sc_enable_encoding_usascii'}{'structure'}{'section_childs'}[0];
$result_sectioning{'test_accents_sc_enable_encoding_usascii'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'test_accents_sc_enable_encoding_usascii'}{'structure'}{'section_childs'}[0];
$result_sectioning{'test_accents_sc_enable_encoding_usascii'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'test_accents_sc_enable_encoding_usascii'};

$result_nodes{'test_accents_sc_enable_encoding_usascii'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  },
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'normalized' => 'node-chap'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'test_accents_sc_enable_encoding_usascii'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'test_accents_sc_enable_encoding_usascii'};
$result_nodes{'test_accents_sc_enable_encoding_usascii'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'test_accents_sc_enable_encoding_usascii'};

$result_menus{'test_accents_sc_enable_encoding_usascii'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'test_accents_sc_enable_encoding_usascii'} = [];


$result_floats{'test_accents_sc_enable_encoding_usascii'} = {};



$result_converted{'html_text'}->{'test_accents_sc_enable_encoding_usascii'} = '
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h1 class="top" id="top-section">top section</h1>

<ul class="mini-toc">
<li><a href="#node-chap" accesskey="1">chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="node-chap">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h2 class="chapter" id="chapter">1 chapter</h2>

<p>&ldquo;in double q&rdquo;. &lsquo;in simple q&rsquo;.
</p>
<p>&eacute;, &mdash; <em class="dfn">def</em> &ndash; <code class="code">in code</code>. &lsquo;<samp class="samp">in samp</samp>&rsquo; a&eacute;. , &iexcl;. &hellip;
</p>
<p>&ge; <small class="enddots">...</small> &Aring; &eacute; &#550; &#322;. &copy;. error&rarr;.
&ldquo; in quotes &rdquo;. &rarr;
- &reg;
</p>

<p>&ndash;a&#774;
&ndash;a&#770;
&aring; &Aring; &ecirc; &Ecirc; &#297; i &#7771; &#341;&#780; &ntilde;&#807;&#772;.
&equiv;
<small class="sc">&Aring; &Aring; &Ecirc; &Ecirc; &#296; I &#7770; &#340;&#780; &Ntilde;&#807;&#772;</small>.
</p>
</div>
</div>
';

1;
