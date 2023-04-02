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
          'args' => [
            {
              'text' => 'inside',
              'type' => 'macro_name'
            },
            {
              'text' => 'a',
              'type' => 'macro_arg'
            },
            {
              'text' => 'b',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'linemacro',
          'contents' => [
            {
              'text' => 'inside {\\a\\ operator \\b\\}
',
              'type' => 'raw'
            },
            {
              'args' => [
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
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'linemacro'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' inside {a, b}
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
              'text' => 'outside',
              'type' => 'macro_name'
            },
            {
              'text' => 'one',
              'type' => 'macro_arg'
            },
            {
              'text' => 'two',
              'type' => 'macro_arg'
            },
            {
              'text' => 'three',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'linemacro',
          'contents' => [
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
              'args' => [
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
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'linemacro'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' outside {one, two, three}
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
        },
        {
          'args' => [
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
          'cmdname' => 'defblock',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 2,
                      'element' => {
                        'args' => [
                          {
                            'contents' => [
                              {
                                'contents' => [
                                  {
                                    'text' => 'type'
                                  }
                                ],
                                'type' => 'bracketed_arg'
                              },
                              {
                                'extra' => {
                                  'def_role' => 'spaces'
                                },
                                'text' => ' ',
                                'type' => 'spaces'
                              },
                              {
                                'contents' => [
                                  {
                                    'source_marks' => [
                                      {
                                        'counter' => 1,
                                        'element' => {
                                          'args' => [
                                            {
                                              'contents' => [
                                                {
                                                  'contents' => [
                                                    {
                                                      'text' => 'X'
                                                    }
                                                  ],
                                                  'type' => 'bracketed_arg'
                                                },
                                                {
                                                  'extra' => {
                                                    'def_role' => 'spaces'
                                                  },
                                                  'text' => ' ',
                                                  'type' => 'spaces'
                                                },
                                                {
                                                  'contents' => [
                                                    {
                                                      'contents' => [
                                                        {
                                                          'text' => 'Y'
                                                        }
                                                      ],
                                                      'type' => 'bracketed_arg'
                                                    },
                                                    {
                                                      'extra' => {
                                                        'def_role' => 'spaces'
                                                      },
                                                      'text' => ' ',
                                                      'type' => 'spaces'
                                                    },
                                                    {
                                                      'text' => '('
                                                    },
                                                    {
                                                      'extra' => {
                                                        'def_role' => 'spaces'
                                                      },
                                                      'text' => ' ',
                                                      'type' => 'spaces'
                                                    },
                                                    {
                                                      'text' => 'remaining,'
                                                    },
                                                    {
                                                      'extra' => {
                                                        'def_role' => 'spaces'
                                                      },
                                                      'text' => ' ',
                                                      'type' => 'spaces'
                                                    },
                                                    {
                                                      'text' => 'type'
                                                    },
                                                    {
                                                      'extra' => {
                                                        'def_role' => 'spaces'
                                                      },
                                                      'text' => ' ',
                                                      'type' => 'spaces'
                                                    },
                                                    {
                                                      'text' => 'typed'
                                                    },
                                                    {
                                                      'extra' => {
                                                        'def_role' => 'spaces'
                                                      },
                                                      'text' => ' ',
                                                      'type' => 'spaces'
                                                    },
                                                    {
                                                      'text' => ')'
                                                    }
                                                  ],
                                                  'type' => 'def_aggregate'
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
                                            'name' => 'inside'
                                          },
                                          'info' => {
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
                                    'text' => ''
                                  },
                                  {
                                    'text' => 'inside '
                                  },
                                  {
                                    'contents' => [
                                      {
                                        'text' => '{X operator '
                                      },
                                      {
                                        'contents' => [
                                          {
                                            'text' => '{Y}'
                                          }
                                        ],
                                        'source_info' => {
                                          'file_name' => '',
                                          'line_nr' => 11,
                                          'macro' => 'inside'
                                        },
                                        'type' => 'balanced_braces'
                                      },
                                      {
                                        'text' => ' ( remaining, type typed )}'
                                      }
                                    ],
                                    'source_info' => {
                                      'file_name' => '',
                                      'line_nr' => 11,
                                      'macro' => 'inside'
                                    },
                                    'type' => 'balanced_braces'
                                  }
                                ],
                                'info' => {
                                  'spaces_after_argument' => {
                                    'text' => '
'
                                  }
                                },
                                'type' => 'bracketed_arg'
                              }
                            ],
                            'type' => 'line_arg'
                          }
                        ],
                        'extra' => {
                          'name' => 'outside'
                        },
                        'info' => {
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
                  'text' => '',
                  'type' => 'empty_line'
                }
              ],
              'type' => 'def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'text' => 'type'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'inside X operator Y'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 11,
                        'macro' => 'outside'
                      },
                      'type' => 'bracketed_arg'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'text' => '(',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'text' => 'remaining'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'text' => ',',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'text' => 'type'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'text' => 'typed'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
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
              'cmdname' => 'defline',
              'extra' => {
                'def_command' => 'defline',
                'def_index_element' => {},
                'original_def_cmdname' => 'defline'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => 'outside'
              },
              'type' => 'def_line'
            },
            {
              'contents' => [
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
                          'text' => 'inside X operator Y ( remaining, type typed )'
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
                  'cmdname' => 'cindex',
                  'extra' => {
                    'index_entry' => [
                      'cp',
                      1
                    ]
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 11,
                    'macro' => 'outside'
                  },
                  'type' => 'index_entry_command'
                },
                {
                  'source_marks' => [
                    {
                      'counter' => 2,
                      'position' => 1,
                      'sourcemark_type' => 'linemacro_expansion',
                      'status' => 'end'
                    },
                    {
                      'counter' => 1,
                      'position' => 1,
                      'sourcemark_type' => 'linemacro_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => '
',
                  'type' => 'empty_line'
                }
              ],
              'type' => 'def_item'
            },
            {
              'args' => [
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
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'defblock'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'nested_linemacro_calls'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'extra'}{'def_index_element'} = $result_trees{'nested_linemacro_calls'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2];

$result_texis{'nested_linemacro_calls'} = '@linemacro inside {a, b}
inside {\\a\\ operator \\b\\}
@end linemacro

@linemacro outside {one, two, three}
@defline \\one\\ {\\two\\} \\three\\
@cindex \\two\\
@end linemacro

@defblock
@defline type {inside X operator Y} ( remaining, type typed )
 
@cindex inside X operator Y ( remaining, type typed )

@end defblock
';


$result_texts{'nested_linemacro_calls'} = '

type: inside X operator Y ( remaining, type typed )
 

';

$result_errors{'nested_linemacro_calls'} = [
  {
    'error_line' => 'misplaced }
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => '',
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced { (possibly involving @inside)
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => 'inside',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced { (possibly involving @outside)
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => 'outside',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced { (possibly involving @outside)
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => 'outside',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced } (possibly involving @outside)
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => 'outside',
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced } (possibly involving @outside)
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => 'outside',
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced { (possibly involving @outside)
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => 'outside',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced { (possibly involving @outside)
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => 'outside',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced } (possibly involving @outside)
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => 'outside',
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced } (possibly involving @outside)
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => 'outside',
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node (possibly involving @outside)
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => 'outside',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'nested_linemacro_calls'} = {};


$result_indices_sort_strings{'nested_linemacro_calls'} = {
  'cp' => [
    'inside X operator Y ( remaining, type typed )'
  ]
};


1;
