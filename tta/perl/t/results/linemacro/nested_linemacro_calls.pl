use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'nested_linemacro_calls'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'linemacro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' inside {a, b}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => 'inside {\\a\\ operator \\b\\}
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'linemacro'
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
                'text_arg' => 'linemacro'
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
            'macro_name' => 'inside',
            'misc_args' => [
              'a',
              'b'
            ]
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
          'cmdname' => 'linemacro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' outside {one, two, three}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => '@defline \\one\\ {\\two\\} \\three\\
',
              'type' => 'raw'
            },
            {
              'text' => '@cindex \\two\\
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'linemacro'
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
                'text_arg' => 'linemacro'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 8
              }
            }
          ],
          'extra' => {
            'macro_name' => 'outside',
            'misc_args' => [
              'one',
              'two',
              'three'
            ]
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
          'cmdname' => 'defblock',
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
              'source_marks' => [
                {
                  'counter' => 1,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'type',
                            'type' => 'bracketed_linemacro_arg'
                          }
                        ],
                        'type' => 'line_arg'
                      },
                      {
                        'contents' => [
                          {
                            'text' => '@inside {X} {Y}',
                            'type' => 'bracketed_linemacro_arg'
                          }
                        ],
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => ' '
                          }
                        },
                        'type' => 'line_arg'
                      },
                      {
                        'contents' => [
                          {
                            'text' => '( remaining, type typed )'
                          }
                        ],
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => ' '
                          }
                        },
                        'type' => 'line_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'outside',
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'type' => 'linemacro_call'
                  },
                  'sourcemark_type' => 'linemacro_expansion',
                  'status' => 'start'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'cmdname' => 'defline',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'type'
                            }
                          ],
                          'type' => 'def_line_arg'
                        }
                      ],
                      'type' => 'def_category'
                    },
                    {
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
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
                                        'contents' => [
                                          {
                                            'text' => 'X',
                                            'type' => 'bracketed_linemacro_arg'
                                          }
                                        ],
                                        'type' => 'line_arg'
                                      },
                                      {
                                        'contents' => [
                                          {
                                            'text' => '{Y}} ( remaining, type typed )'
                                          }
                                        ],
                                        'info' => {
                                          'spaces_before_argument' => {
                                            'text' => ' '
                                          }
                                        },
                                        'type' => 'line_arg'
                                      }
                                    ],
                                    'info' => {
                                      'command_name' => 'inside',
                                      'spaces_before_argument' => {
                                        'text' => ' '
                                      }
                                    },
                                    'type' => 'linemacro_call'
                                  },
                                  'sourcemark_type' => 'linemacro_expansion',
                                  'status' => 'start'
                                }
                              ],
                              'text' => 'inside X operator Y'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 11,
                            'macro' => 'outside'
                          },
                          'type' => 'bracketed_arg'
                        }
                      ],
                      'type' => 'def_name'
                    },
                    {
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'text' => '(',
                      'type' => 'delimiter'
                    },
                    {
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'remaining'
                            }
                          ],
                          'type' => 'def_line_arg'
                        }
                      ],
                      'type' => 'def_arg'
                    },
                    {
                      'text' => ',',
                      'type' => 'delimiter'
                    },
                    {
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'type'
                            }
                          ],
                          'type' => 'def_line_arg'
                        }
                      ],
                      'type' => 'def_arg'
                    },
                    {
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'typed'
                            }
                          ],
                          'type' => 'def_line_arg'
                        }
                      ],
                      'type' => 'def_arg'
                    },
                    {
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'source_marks' => [
                        {
                          'counter' => 2,
                          'position' => 1,
                          'sourcemark_type' => 'linemacro_expansion',
                          'status' => 'end'
                        }
                      ],
                      'text' => ')',
                      'type' => 'delimiter'
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
                'def_command' => 'defline',
                'def_index_element' => {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'inside X operator Y'
                        }
                      ],
                      'type' => 'bracketed_arg'
                    }
                  ],
                  'type' => 'def_name'
                },
                'original_def_cmdname' => 'defline'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 11,
                'macro' => 'outside'
              }
            },
            {
              'contents' => [
                {
                  'cmdname' => 'cindex',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'source_marks' => [
                            {
                              'counter' => 3,
                              'position' => 19,
                              'sourcemark_type' => 'linemacro_expansion',
                              'status' => 'end'
                            }
                          ],
                          'text' => 'inside X operator Y'
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
                    'index_entry' => [
                      'cp',
                      1
                    ]
                  },
                  'info' => {
                    'command_name' => 'cindex',
                    'spaces_before_argument' => {
                      'source_marks' => [
                        {
                          'counter' => 3,
                          'element' => {
                            'contents' => [
                              {
                                'contents' => [
                                  {
                                    'text' => 'X',
                                    'type' => 'bracketed_linemacro_arg'
                                  }
                                ],
                                'type' => 'line_arg'
                              },
                              {
                                'contents' => [
                                  {
                                    'source_marks' => [
                                      {
                                        'counter' => 1,
                                        'position' => 3,
                                        'sourcemark_type' => 'linemacro_expansion',
                                        'status' => 'end'
                                      }
                                    ],
                                    'text' => 'Y',
                                    'type' => 'bracketed_linemacro_arg'
                                  }
                                ],
                                'info' => {
                                  'spaces_before_argument' => {
                                    'text' => ' '
                                  }
                                },
                                'type' => 'line_arg'
                              }
                            ],
                            'info' => {
                              'command_name' => 'inside',
                              'spaces_before_argument' => {
                                'text' => ' '
                              }
                            },
                            'type' => 'linemacro_call'
                          },
                          'position' => 1,
                          'sourcemark_type' => 'linemacro_expansion',
                          'status' => 'start'
                        }
                      ],
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 11,
                    'macro' => 'outside'
                  },
                  'type' => 'index_entry_command'
                }
              ],
              'type' => 'def_item'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'defblock'
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
                'text_arg' => 'defblock'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 12
              }
            }
          ],
          'source_info' => {
            'line_nr' => 10
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'nested_linemacro_calls'} = '@linemacro inside {a, b}
inside {\\a\\ operator \\b\\}
@end linemacro

@linemacro outside {one, two, three}
@defline \\one\\ {\\two\\} \\three\\
@cindex \\two\\
@end linemacro

@defblock
@defline type {inside X operator Y} ( remaining, type typed )
@cindex inside X operator Y
@end defblock
';


$result_texts{'nested_linemacro_calls'} = '

type: inside X operator Y ( remaining, type typed )
';

$result_errors{'nested_linemacro_calls'} = [
  {
    'error_line' => 'misplaced { (possibly involving @inside)
',
    'line_nr' => 11,
    'macro' => 'inside',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced { (possibly involving @inside)
',
    'line_nr' => 11,
    'macro' => 'inside',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced } (possibly involving @inside)
',
    'line_nr' => 11,
    'macro' => 'inside',
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced } (possibly involving @inside)
',
    'line_nr' => 11,
    'macro' => 'inside',
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced { (possibly involving @inside)
',
    'line_nr' => 11,
    'macro' => 'inside',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced } (possibly involving @inside)
',
    'line_nr' => 11,
    'macro' => 'inside',
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'line_nr' => 11,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'nested_linemacro_calls'} = {};


$result_indices_sort_strings{'nested_linemacro_calls'} = {
  'cp' => [
    'inside X operator Y'
  ]
};


1;
