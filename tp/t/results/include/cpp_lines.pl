use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'cpp_lines'} = {
  'contents' => [
    {
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
                }
              ],
              'parent' => {},
              'type' => 'preamble_before_beginning'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_setfilename'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'cpp_lines.info'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'cpp_lines.info'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'cpp_lines.texi',
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
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_content'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'before top'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'email',
              'parent' => {},
              'source_info' => {
                'file_name' => 'g_f',
                'line_nr' => 68,
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
              'text' => '# 10 25 209
'
            },
            {
              'parent' => {},
              'text' => '# 1 2
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
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '  #line 5 "f"
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
              'parent' => {},
              'source_info' => {
                'file_name' => 'g_f',
                'line_nr' => 51,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => 'g_f',
            'line_nr' => 48,
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
              'text' => 'macr',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '# line 7 "k"
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
                'file_name' => 'g_f',
                'line_nr' => 55,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' macr
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'g_f',
            'line_nr' => 53,
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
                      'text' => 'after lacro def'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'email',
              'parent' => {},
              'source_info' => {
                'file_name' => 'g_f',
                'line_nr' => 57,
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
              'parent' => {},
              'text' => '# line 7 "k"
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
                      'text' => 'after macro call'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'email',
              'parent' => {},
              'source_info' => {
                'file_name' => 'g_f',
                'line_nr' => 61,
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
          'args' => [
            {
              'parent' => {},
              'text' => 'macrtwo',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'line before
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '# line 666 "x"
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
                'file_name' => 'g_f',
                'line_nr' => 66,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' macrtwo
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'g_f',
            'line_nr' => 63,
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
                      'text' => 'after macrotwo def'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'email',
              'parent' => {},
              'source_info' => {
                'file_name' => 'g_f',
                'line_nr' => 68,
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
              'parent' => {},
              'text' => 'line before
'
            },
            {
              'parent' => {},
              'text' => '# line 666 "x"
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
                      'text' => 'after macrotwo call'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'email',
              'parent' => {},
              'source_info' => {
                'file_name' => 'g_f',
                'line_nr' => 72,
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
                      'text' => 'in'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'email',
              'parent' => {},
              'source_info' => {
                'file_name' => 'inc',
                'line_nr' => 10,
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
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'after inc'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'email',
              'parent' => {},
              'source_info' => {
                'file_name' => 'g_f',
                'line_nr' => 75,
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
                      'text' => '
',
                      'type' => 'raw'
                    },
                    {
                      'parent' => {},
                      'text' => '#line 5 "in verb"
',
                      'type' => 'raw'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'verb',
              'extra' => {
                'delimiter' => ':'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'g_f',
                'line_nr' => 77,
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
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'after verb'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'email',
              'parent' => {},
              'source_info' => {
                'file_name' => 'g_f',
                'line_nr' => 81,
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
              'parent' => {},
              'text' => 'a'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in footnote'
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
              'extra' => {
                'spaces_before_argument' => '
'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'g_f',
                'line_nr' => 83,
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
              'parent' => {},
              'text' => 'a'
            },
            {
              'args' => [
                {
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
                          'text' => 'in 2footnote'
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
              'extra' => {
                'spaces_before_argument' => '
'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'footnote',
                'line_nr' => 28,
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
                      'text' => 'etext1'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' 
'
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'etext2'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
',
                    'spaces_before_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'email',
              'parent' => {},
              'source_info' => {
                'file_name' => 'footnote2',
                'line_nr' => 40,
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
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => ' no line directive mail space'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => ' no line directive text space'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
',
                    'spaces_before_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'email',
              'parent' => {},
              'source_info' => {
                'file_name' => 'email2',
                'line_nr' => 64,
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
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => ' mail space'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' 
'
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => ' text space'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
',
                    'spaces_before_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'email',
              'parent' => {},
              'source_info' => {
                'file_name' => 'email2',
                'line_nr' => 69,
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
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '
',
                      'type' => 'empty_line'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' 
'
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'email',
              'parent' => {},
              'source_info' => {
                'file_name' => 'email12',
                'line_nr' => 64,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'etext3,
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
              'parent' => {},
              'text' => 'etext4
'
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => "l\x{e0}ng"
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
            'spaces_before_argument' => ' ',
            'text_arg' => "l\x{e0}ng"
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'accentÃªd',
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
        'file_name' => 'g_f',
        'line_nr' => 70,
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
$result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[2];
$result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[2];
$result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'};
$result_trees{'cpp_lines'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[3];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[3];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[3];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[3]{'contents'}[2];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[3];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[5];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[5];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[5]{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[5];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[7]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[7];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[7];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[8]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[9];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[9]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[10]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[11]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[11]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[11];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[11];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[11]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[12]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[13];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[13]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[13];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[13]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[13];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[13]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[13]{'contents'}[2]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[13]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[13]{'contents'}[2];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[13]{'contents'}[2]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[13];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[13]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[14]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[15]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[15]{'contents'}[0]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[15]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[15]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[15]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[15];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[15]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[15];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[15]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[16]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[17]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[17];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[17]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[17];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[17]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[18]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[19]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[19]{'contents'}[0]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[19]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[19]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[19]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[19];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[19]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[19];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[19]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[20]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[21]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[22]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[23]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[23]{'contents'}[0]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[23]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[23]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[23]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[23];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[23]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[23];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[23]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[24]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[25]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[25]{'contents'}[0]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[25]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[25]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[25]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[25];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[25]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[25];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[25]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[26]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[27]{'contents'}[0]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[27]{'contents'}[0]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[27]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[27]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[27]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[27];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[27]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[27];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[27]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[28]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[29]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[29]{'contents'}[0]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[29]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[29]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[29]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[29];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[29]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[29];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[29]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[30]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[31]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[31];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[31]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[31]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[31]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[31]{'contents'}[1]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[31]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[31]{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[31]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[31];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[31]{'contents'}[2]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[31];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[31]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[32]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[33]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[33];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[33]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[33]{'contents'}[1]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[33]{'contents'}[1]{'args'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[33]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[33]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[33]{'contents'}[1]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[33]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[33]{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[33]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[33];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[33]{'contents'}[2]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[33];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[33]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[34]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[35]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[36]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[36]{'contents'}[0]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[36]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[36]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[36]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[36]{'contents'}[0]{'args'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[36]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[36]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[36]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[36];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[36]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[36];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[36]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[37]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[38]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[38]{'contents'}[0]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[38]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[38]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[38]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[38]{'contents'}[0]{'args'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[38]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[38]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[38]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[38];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[38]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[38];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[38]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[39]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[40]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[40]{'contents'}[0]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[40]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[40]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[40]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[40]{'contents'}[0]{'args'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[40]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[40]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[40]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[40];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[40]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[40];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[40]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[41]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[42]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[42]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[42];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[42]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[43]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[43];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[43]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[44]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[45]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[46]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[46];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[46]{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[46];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[46]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[47]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[48]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[49]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[50]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[51]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[51]{'args'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[51]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[51];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[51]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'contents'}[52]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[1];
$result_trees{'cpp_lines'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'cpp_lines'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'cpp_lines'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'cpp_lines'}{'contents'}[1]{'parent'} = $result_trees{'cpp_lines'};
$result_trees{'cpp_lines'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'cpp_lines'}{'contents'}[2];
$result_trees{'cpp_lines'}{'contents'}[2]{'parent'} = $result_trees{'cpp_lines'};

$result_texis{'cpp_lines'} = '\\input texinfo
@setfilename cpp_lines.info


@email{before top}.

@node Top

# 10 25 209
# 1 2

@verbatim

  #line 5 "f"
@end verbatim

@macro macr
# line 7 "k"
@end macro

@email{after lacro def}

# line 7 "k"

@email{after macro call}.

@macro macrtwo
line before
# line 666 "x"
@end macro

@email{after macrotwo def}

line before
# line 666 "x"

@email{after macrotwo call}. 



@email{in}

@email{after inc}. 

@verb{:
#line 5 "in verb"
:}

@email{after verb}

a@footnote{
in footnote}

a@footnote{

in 2footnote}


@email{ 
etext1,
etext2
}

@email{
 no line directive mail space,
 no line directive text space
}

@email{ 
 mail space,
 text space
}

@email{ 

}etext3,


etext4





@documentlanguage làng

@bye
';


$result_texts{'cpp_lines'} = '

before top.


# 10 25 209
# 1 2


  #line 5 "f"


after lacro def

# line 7 "k"

after macro call.


after macrotwo def

line before
# line 666 "x"

after macrotwo call. 



in

after inc. 


#line 5 "in verb"


after verb

a

a


etext2

 no line directive text space

 text space


etext3,


etext4






';

$result_nodes{'cpp_lines'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_menus{'cpp_lines'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_errors{'cpp_lines'} = [
  {
    'error_line' => '@email missing closing brace
',
    'file_name' => 'email12',
    'line_nr' => 64,
    'macro' => '',
    'text' => '@email missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'file_name' => 'email4',
    'line_nr' => 63,
    'macro' => '',
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => "warning: l\x{e0}ng is not a valid language code
",
    'file_name' => 'accentÃªd',
    'line_nr' => 7,
    'macro' => '',
    'text' => "l\x{e0}ng is not a valid language code",
    'type' => 'warning'
  }
];


$result_floats{'cpp_lines'} = {};


1;
