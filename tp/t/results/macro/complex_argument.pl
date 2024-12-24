use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'complex_argument'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' macrotwo{arg}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'argument'
            },
            {
              'text' => 'coucou \\arg\\ after arg
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 3
              }
            }
          ],
          'extra' => {
            'macro_name' => 'macrotwo',
            'misc_args' => [
              'arg'
            ]
          },
          'info' => {
            'arg_line' => ' macrotwo{arg}
'
          },
          'source_info' => {
            'line_nr' => 1
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' macrofour {}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'argument'
            },
            {
              'text' => '1
',
              'type' => 'raw'
            },
            {
              'text' => '2
',
              'type' => 'raw'
            },
            {
              'text' => '3
',
              'type' => 'raw'
            },
            {
              'text' => '4
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 10
              }
            }
          ],
          'extra' => {
            'macro_name' => 'macrofour',
            'misc_args' => []
          },
          'info' => {
            'arg_line' => ' macrofour {}
'
          },
          'source_info' => {
            'line_nr' => 5
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' macrothree{text, arg}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'argument'
            },
            {
              'text' => '\\text\\
',
              'type' => 'raw'
            },
            {
              'text' => '&&&& \\arg\\
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 15
              }
            }
          ],
          'extra' => {
            'macro_name' => 'macrothree',
            'misc_args' => [
              'text',
              'arg'
            ]
          },
          'info' => {
            'arg_line' => ' macrothree{text, arg}
'
          },
          'source_info' => {
            'line_nr' => 12
          }
        },
        {
          'source_marks' => [
            {
              'counter' => 1,
              'element' => {
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => '@verb{% @macrotwo %}
@c @macrofour
@pagesizes 4 @macrofour{}
@headings doubleafter @macrofour{}
@verbatim
@macrotwo
@end verbatim
@ignore
@macrofour
@end ignore
@macro macroseven {truc}
@emph{\\truc\\}
@end macro
macroseven defined
@ifinfo
@macrofour
@end ifinfo
@iftex
@macrotwo{aa,bb}
@end iftex
@macrofour{}
'
                      }
                    ],
                    'type' => 'brace_arg'
                  }
                ],
                'info' => {
                  'command_name' => 'macrothree'
                },
                'type' => 'macro_call'
              },
              'position' => 1,
              'sourcemark_type' => 'macro_expansion',
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
              'cmdname' => 'verb',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' @macrotwo ',
                      'type' => 'raw'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'info' => {
                'delimiter' => '%'
              },
              'source_info' => {
                'line_nr' => 38,
                'macro' => 'macrothree'
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' @macrofour
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'pagesizes',
              'contents' => [
                {
                  'contents' => [
                    {
                      'source_marks' => [
                        {
                          'counter' => 2,
                          'element' => {
                            'contents' => [
                              {
                                'type' => 'brace_arg'
                              }
                            ],
                            'info' => {
                              'command_name' => 'macrofour'
                            },
                            'type' => 'macro_call'
                          },
                          'position' => 2,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'start'
                        }
                      ],
                      'text' => '4 1'
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
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 38,
                'macro' => 'macrothree'
              }
            },
            {
              'text' => '2
'
            },
            {
              'text' => '3
'
            },
            {
              'source_marks' => [
                {
                  'counter' => 2,
                  'position' => 1,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => '4
'
            },
            {
              'cmdname' => 'headings',
              'contents' => [
                {
                  'contents' => [
                    {
                      'source_marks' => [
                        {
                          'counter' => 3,
                          'element' => {
                            'contents' => [
                              {
                                'type' => 'brace_arg'
                              }
                            ],
                            'info' => {
                              'command_name' => 'macrofour'
                            },
                            'type' => 'macro_call'
                          },
                          'position' => 12,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'start'
                        }
                      ],
                      'text' => 'doubleafter 1'
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
              'extra' => {},
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 38,
                'macro' => 'macrothree'
              }
            },
            {
              'text' => '2
'
            },
            {
              'text' => '3
'
            },
            {
              'source_marks' => [
                {
                  'counter' => 3,
                  'position' => 1,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => '4
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'verbatim',
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
              'type' => 'argument'
            },
            {
              'text' => '@macrotwo
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'verbatim'
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
                'text_arg' => 'verbatim'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 38,
                'macro' => 'macrothree'
              }
            }
          ],
          'source_info' => {
            'line_nr' => 38,
            'macro' => 'macrothree'
          }
        },
        {
          'cmdname' => 'ignore',
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
              'type' => 'argument'
            },
            {
              'text' => '@macrofour
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'ignore'
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
                'text_arg' => 'ignore'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 38,
                'macro' => 'macrothree'
              }
            }
          ],
          'source_info' => {
            'line_nr' => 38,
            'macro' => 'macrothree'
          }
        },
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' macroseven {truc}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'argument'
            },
            {
              'text' => '@emph{\\truc\\}
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 38,
                'macro' => 'macrothree'
              }
            }
          ],
          'extra' => {
            'macro_name' => 'macroseven',
            'misc_args' => [
              'truc'
            ]
          },
          'info' => {
            'arg_line' => ' macroseven {truc}
'
          },
          'source_info' => {
            'line_nr' => 38,
            'macro' => 'macrothree'
          }
        },
        {
          'contents' => [
            {
              'source_marks' => [
                {
                  'counter' => 1,
                  'element' => {
                    'cmdname' => 'ifinfo',
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
                        'type' => 'argument'
                      },
                      {
                        'text' => '@macrofour
',
                        'type' => 'raw'
                      },
                      {
                        'cmdname' => 'end',
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'ifinfo'
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
                          'text_arg' => 'ifinfo'
                        },
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => ' '
                          }
                        },
                        'source_info' => {
                          'line_nr' => 38,
                          'macro' => 'macrothree'
                        }
                      }
                    ],
                    'source_info' => {
                      'line_nr' => 38,
                      'macro' => 'macrothree'
                    }
                  },
                  'position' => 19,
                  'sourcemark_type' => 'ignored_conditional_block'
                },
                {
                  'counter' => 2,
                  'element' => {
                    'cmdname' => 'iftex',
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
                        'type' => 'argument'
                      },
                      {
                        'text' => '@macrotwo{aa,bb}
',
                        'type' => 'raw'
                      },
                      {
                        'cmdname' => 'end',
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'iftex'
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
                          'text_arg' => 'iftex'
                        },
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => ' '
                          }
                        },
                        'source_info' => {
                          'line_nr' => 38,
                          'macro' => 'macrothree'
                        }
                      }
                    ],
                    'source_info' => {
                      'line_nr' => 38,
                      'macro' => 'macrothree'
                    }
                  },
                  'position' => 19,
                  'sourcemark_type' => 'ignored_conditional_block'
                }
              ],
              'text' => 'macroseven defined
'
            },
            {
              'source_marks' => [
                {
                  'counter' => 4,
                  'element' => {
                    'contents' => [
                      {
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'macrofour'
                    },
                    'type' => 'macro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => '1
'
            },
            {
              'text' => '2
'
            },
            {
              'text' => '3
'
            },
            {
              'source_marks' => [
                {
                  'counter' => 4,
                  'position' => 1,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => '4
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
              'source_marks' => [
                {
                  'counter' => 1,
                  'position' => 5,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => '&&&& 
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
              'source_marks' => [
                {
                  'counter' => 5,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'aaa'
                          }
                        ],
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'macroseven'
                    },
                    'type' => 'macro_call'
                  },
                  'position' => 16,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'Call macroseven
'
            },
            {
              'cmdname' => 'emph',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'aaa'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 41,
                'macro' => 'macroseven'
              },
              'source_marks' => [
                {
                  'counter' => 5,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ]
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
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'complex_argument'} = '@macro macrotwo{arg}
coucou \\arg\\ after arg
@end macro

@macro macrofour {}
1
2
3
4
@end macro

@macro macrothree{text, arg}
\\text\\
&&&& \\arg\\
@end macro

@verb{% @macrotwo %}
@c @macrofour
@pagesizes 4 1
2
3
4
@headings doubleafter 1
2
3
4
@verbatim
@macrotwo
@end verbatim
@ignore
@macrofour
@end ignore
@macro macroseven {truc}
@emph{\\truc\\}
@end macro
macroseven defined
1
2
3
4

&&&& 

Call macroseven
@emph{aaa}

';


$result_texts{'complex_argument'} = '


 @macrotwo 
2
3
4
2
3
4
@macrotwo
macroseven defined
1
2
3
4

&&&& 

Call macroseven
aaa

';

$result_errors{'complex_argument'} = [
  {
    'error_line' => 'warning: use @comma{} instead of \\, in macro arg
',
    'line_nr' => 35,
    'text' => 'use @comma{} instead of \\, in macro arg',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @headings: doubleafter 1 (possibly involving @macrofour)
',
    'line_nr' => 38,
    'macro' => 'macrofour',
    'text' => 'bad argument to @headings: doubleafter 1',
    'type' => 'error'
  }
];


$result_floats{'complex_argument'} = {};


1;
