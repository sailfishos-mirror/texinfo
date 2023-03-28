use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'simple_nested_linemacro_calls'} = {
  'contents' => [
    {
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
            'spaces_after_argument' => {
              'text' => '
'
            }
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
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
            },
            {
              'text' => 'rest',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'linemacro',
          'contents' => [
            {
              'text' => 'inside {\\a\\ operator \\b\\} \\rest\\
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
                'line_nr' => 5,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' inside {a, b, rest}
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 3,
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
                'line_nr' => 10,
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
            'line_nr' => 7,
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
                                    'text' => 'a function'
                                  }
                                ],
                                'type' => 'bracketed_arg'
                              },
                              {
                                'extra' => {
                                  'def_role' => 'spaces'
                                },
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
                                              'contents' => [
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
                                    'position' => 1,
                                    'sourcemark_type' => 'linemacro_expansion',
                                    'status' => 'start'
                                  }
                                ],
                                'text' => ' ',
                                'type' => 'spaces'
                              },
                              {
                                'contents' => [
                                  {
                                    'text' => 'inside'
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
                                        'text' => 'X operator Y'
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
                          'text' => 'a function'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 13,
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
                        'def_role' => 'arg'
                      },
                      'text' => 'inside'
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
                          'text' => 'X operator Y'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 13,
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
                'line_nr' => 13,
                'macro' => 'outside'
              },
              'type' => 'def_line'
            },
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'a function'
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
                    'element_node' => {},
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
                    'line_nr' => 13,
                    'macro' => 'outside'
                  },
                  'source_marks' => [
                    {
                      'counter' => 2,
                      'sourcemark_type' => 'linemacro_expansion',
                      'status' => 'end'
                    },
                    {
                      'counter' => 1,
                      'sourcemark_type' => 'linemacro_expansion',
                      'status' => 'end'
                    }
                  ],
                  'type' => 'index_entry_command'
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
                'line_nr' => 14,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => '',
            'line_nr' => 12,
            'macro' => ''
          }
        }
      ],
      'extra' => {
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'simple_nested_linemacro_calls'}{'contents'}[1]{'contents'}[5]{'contents'}[1]{'extra'}{'def_index_element'} = $result_trees{'simple_nested_linemacro_calls'}{'contents'}[1]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'simple_nested_linemacro_calls'}{'contents'}[1]{'contents'}[5]{'contents'}[2]{'contents'}[0]{'extra'}{'element_node'} = $result_trees{'simple_nested_linemacro_calls'}{'contents'}[1];

$result_texis{'simple_nested_linemacro_calls'} = '@node Top

@linemacro inside {a, b, rest}
inside {\\a\\ operator \\b\\} \\rest\\
@end linemacro

@linemacro outside {one, two, three}
@defline \\one\\ {\\two\\} \\three\\
@cindex \\two\\
@end linemacro

@defblock
@defline type {a function} inside {X operator Y} ( remaining, type typed )
@cindex a function
@end defblock
';


$result_texts{'simple_nested_linemacro_calls'} = '


type: a function inside X operator Y ( remaining, type typed )
';

$result_nodes{'simple_nested_linemacro_calls'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_menus{'simple_nested_linemacro_calls'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_errors{'simple_nested_linemacro_calls'} = [];


$result_floats{'simple_nested_linemacro_calls'} = {};


$result_indices_sort_strings{'simple_nested_linemacro_calls'} = {
  'cp' => [
    'a function'
  ]
};


1;
