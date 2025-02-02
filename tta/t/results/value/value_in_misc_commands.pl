use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'value_in_misc_commands'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'text',
              'type' => 'rawline_arg'
            },
            {
              'text' => 'atext',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' text atext
'
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
        'line_nr' => 3
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
                  'source_marks' => [
                    {
                      'counter' => 1,
                      'element' => {
                        'cmdname' => 'value',
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'text'
                              }
                            ],
                            'type' => 'brace_container'
                          }
                        ]
                      },
                      'line' => 'atext',
                      'position' => 4,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'start'
                    },
                    {
                      'counter' => 1,
                      'position' => 9,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'top atext'
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
      'extra' => {},
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
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'chap'
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
          'cmdname' => 'subheading',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 2,
                      'element' => {
                        'cmdname' => 'value',
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'text'
                              }
                            ],
                            'type' => 'brace_container'
                          }
                        ]
                      },
                      'line' => 'atext',
                      'position' => 14,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'start'
                    },
                    {
                      'counter' => 2,
                      'position' => 19,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'Comment like: atext'
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
            'line_nr' => 8
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
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' comment @value{text}
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' comment @value{text}
',
                  'type' => 'rawline_arg'
                }
              ]
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
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'pagesizes_arg',
              'type' => 'rawline_arg'
            },
            {
              'text' => '200mm,150mm',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' pagesizes_arg 200mm,150mm
'
          }
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'afourpaper_macro',
              'type' => 'rawline_arg'
            },
            {
              'text' => '@afourpaper',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' afourpaper_macro @afourpaper
'
          }
        },
        {
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
                  'line_nr' => 16
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
          'cmdname' => 'pagesizes',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 3,
                      'position' => 11,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => '200mm,150mm'
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
              'source_marks' => [
                {
                  'counter' => 3,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'pagesizes_arg'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => '200mm,150mm',
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 17
          },
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
                  'line_nr' => 18
                }
              },
              'sourcemark_type' => 'expanded_conditional_command',
              'status' => 'end'
            },
            {
              'counter' => 4,
              'element' => {
                'cmdname' => 'value',
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => 'afourpaper_macro'
                      }
                    ],
                    'type' => 'brace_container'
                  }
                ]
              },
              'line' => '@afourpaper',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 4,
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            }
          ]
        },
        {
          'cmdname' => 'afourpaper',
          'contents' => [
            {
              'text' => '
',
              'type' => 'rawline_arg'
            }
          ],
          'source_info' => {
            'line_nr' => 19
          }
        },
        {
          'cmdname' => 'headings',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 5,
                      'element' => {
                        'cmdname' => 'value',
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'text'
                              }
                            ],
                            'type' => 'brace_container'
                          }
                        ]
                      },
                      'line' => 'atext',
                      'position' => 27,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'start'
                    },
                    {
                      'counter' => 5,
                      'position' => 32,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'on line following headings atext'
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
            'line_nr' => 20
          }
        },
        {
          'cmdname' => 'oddfooting',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 6,
                      'element' => {
                        'cmdname' => 'value',
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'text'
                              }
                            ],
                            'type' => 'brace_container'
                          }
                        ]
                      },
                      'line' => 'atext',
                      'position' => 18,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'start'
                    },
                    {
                      'counter' => 6,
                      'position' => 23,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'some text ignored atext'
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
            'line_nr' => 21
          }
        },
        {
          'cmdname' => 'everyheading',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 7,
                      'element' => {
                        'cmdname' => 'value',
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'text'
                              }
                            ],
                            'type' => 'brace_container'
                          }
                        ]
                      },
                      'line' => 'atext',
                      'position' => 31,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'start'
                    },
                    {
                      'counter' => 7,
                      'position' => 36,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'on line following everyheading atext'
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
            'line_nr' => 22
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'need_arg',
              'type' => 'rawline_arg'
            },
            {
              'text' => '0.1',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' need_arg 0.1
'
          }
        },
        {
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
                  'line_nr' => 26
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
          'cmdname' => 'need',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 8,
                      'position' => 3,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => '0.1'
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
            'misc_args' => [
              '0.1'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'source_marks' => [
                {
                  'counter' => 8,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'need_arg'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => '0.1',
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 27
          },
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
                  'line_nr' => 28
                }
              },
              'sourcemark_type' => 'expanded_conditional_command',
              'status' => 'end'
            }
          ]
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'raisesections_macro',
              'type' => 'rawline_arg'
            },
            {
              'text' => '@raisesections',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' raisesections_macro @raisesections
'
          },
          'source_marks' => [
            {
              'counter' => 9,
              'element' => {
                'cmdname' => 'value',
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => 'raisesections_macro'
                      }
                    ],
                    'type' => 'brace_container'
                  }
                ]
              },
              'line' => '@raisesections',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 9,
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            }
          ]
        },
        {
          'cmdname' => 'raisesections',
          'contents' => [
            {
              'text' => '
',
              'type' => 'rawline_arg'
            }
          ]
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'lowersections_macro',
              'type' => 'rawline_arg'
            },
            {
              'text' => '@lowersections',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' lowersections_macro @lowersections
'
          },
          'source_marks' => [
            {
              'counter' => 10,
              'element' => {
                'cmdname' => 'value',
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => 'lowersections_macro'
                      }
                    ],
                    'type' => 'brace_container'
                  }
                ]
              },
              'line' => '@lowersections',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 10,
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            }
          ]
        },
        {
          'cmdname' => 'lowersections',
          'contents' => [
            {
              'text' => '
',
              'type' => 'rawline_arg'
            }
          ]
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'c',
          'contents' => [
            {
              'text' => ' tex error: Use of \\ doesn\'t match its definition.
',
              'type' => 'rawline_arg'
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
                  'line_nr' => 36
                }
              },
              'sourcemark_type' => 'expanded_conditional_command',
              'status' => 'start'
            }
          ]
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
              'cmdname' => 'definfoenclose',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'phoo,//,\\\\'
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
                'misc_args' => [
                  'phoo',
                  '//',
                  '\\\\'
                ]
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 37
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
              'cmdname' => 'phoo',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'bar'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'extra' => {
                'begin' => '//',
                'end' => '\\\\'
              },
              'info' => {
                'command_name' => 'phoo'
              },
              'source_info' => {
                'line_nr' => 39
              },
              'type' => 'definfoenclose_command'
            },
            {
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
                      'line_nr' => 40
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
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'definfoenclose_name',
              'type' => 'rawline_arg'
            },
            {
              'text' => 'phi',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' definfoenclose_name phi
'
          }
        },
        {
          'cmdname' => 'definfoenclose',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 11,
                      'position' => 3,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'phi,:,:'
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
            'misc_args' => [
              'phi',
              ':',
              ':'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'source_marks' => [
                {
                  'counter' => 11,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'definfoenclose_name'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => 'phi',
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 43
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
              'cmdname' => 'phi',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'bar'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'extra' => {
                'begin' => ':',
                'end' => ':'
              },
              'info' => {
                'command_name' => 'phi'
              },
              'source_info' => {
                'line_nr' => 45
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
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'strong_macro',
              'type' => 'rawline_arg'
            },
            {
              'text' => '@strong',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' strong_macro @strong
'
          }
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'strong_name',
              'type' => 'rawline_arg'
            },
            {
              'text' => 'strong',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' strong_name strong
'
          }
        },
        {
          'source_marks' => [
            {
              'counter' => 12,
              'element' => {
                'cmdname' => 'value',
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => 'strong_macro'
                      }
                    ],
                    'type' => 'brace_container'
                  }
                ]
              },
              'line' => '@strong',
              'position' => 1,
              'sourcemark_type' => 'value_expansion',
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
              'cmdname' => 'strong',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'very strong'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'source_marks' => [
                    {
                      'counter' => 12,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => ''
                }
              },
              'source_info' => {
                'line_nr' => 50
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
          'cmdname' => 'definfoenclose',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 13,
                      'position' => 6,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    },
                    {
                      'counter' => 14,
                      'element' => {
                        'cmdname' => 'value',
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'strong_name'
                              }
                            ],
                            'type' => 'brace_container'
                          }
                        ]
                      },
                      'line' => 'strong',
                      'position' => 8,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'start'
                    },
                    {
                      'counter' => 14,
                      'position' => 14,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'strong,(strong:,:)'
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
            'misc_args' => [
              'strong',
              '(strong:',
              ':)'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'source_marks' => [
                {
                  'counter' => 13,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'strong_name'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => 'strong',
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 52
          }
        },
        {
          'source_marks' => [
            {
              'counter' => 15,
              'element' => {
                'cmdname' => 'value',
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => 'strong_macro'
                      }
                    ],
                    'type' => 'brace_container'
                  }
                ]
              },
              'line' => '@strong',
              'position' => 1,
              'sourcemark_type' => 'value_expansion',
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
              'cmdname' => 'strong',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' is it really strong? '
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'extra' => {
                'begin' => '(strong:',
                'end' => ':)'
              },
              'info' => {
                'command_name' => 'strong',
                'spaces_after_cmd_before_arg' => {
                  'source_marks' => [
                    {
                      'counter' => 15,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => ''
                }
              },
              'source_info' => {
                'line_nr' => 54
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
              'cmdname' => 'kbd',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'something before kbdinputstyle'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 56
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
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'kbdinputstyle_arg',
              'type' => 'rawline_arg'
            },
            {
              'text' => 'code',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' kbdinputstyle_arg code
'
          }
        },
        {
          'cmdname' => 'kbdinputstyle',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 16,
                      'position' => 4,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'code'
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
            'misc_args' => [
              'code'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'source_marks' => [
                {
                  'counter' => 16,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'kbdinputstyle_arg'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => 'code',
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 59
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
              'cmdname' => 'kbd',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'truc'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'extra' => {
                'code' => 1
              },
              'source_info' => {
                'line_nr' => 61
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
          'cmdname' => 'example',
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
                  'cmdname' => 'kbd',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'example'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'extra' => {
                    'code' => 1
                  },
                  'source_info' => {
                    'line_nr' => 64
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
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'example'
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
                'text_arg' => 'example'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 65
              }
            }
          ],
          'source_info' => {
            'line_nr' => 63
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'asis_arg',
              'type' => 'rawline_arg'
            },
            {
              'text' => 'asis',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' asis_arg asis
'
          }
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'zero',
              'type' => 'rawline_arg'
            },
            {
              'text' => '0',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' zero 0
'
          }
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'none_arg',
              'type' => 'rawline_arg'
            },
            {
              'text' => 'none',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' none_arg none
'
          }
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'four',
              'type' => 'rawline_arg'
            },
            {
              'text' => '4',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' four 4
'
          }
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'six',
              'type' => 'rawline_arg'
            },
            {
              'text' => '6',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' six 6
'
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'paragraphindent',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 17,
                      'position' => 4,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'asis'
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
            'misc_args' => [
              'asis'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'source_marks' => [
                {
                  'counter' => 17,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'asis_arg'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => 'asis',
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 73
          }
        },
        {
          'cmdname' => 'paragraphindent',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 18,
                      'position' => 1,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => '0'
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
            'misc_args' => [
              '0'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'source_marks' => [
                {
                  'counter' => 18,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'zero'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => '0',
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 74
          }
        },
        {
          'cmdname' => 'paragraphindent',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 19,
                      'position' => 4,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'none'
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
            'misc_args' => [
              'none'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'source_marks' => [
                {
                  'counter' => 19,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'none_arg'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => 'none',
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 75
          }
        },
        {
          'cmdname' => 'paragraphindent',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 20,
                      'position' => 1,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => '4'
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
            'misc_args' => [
              '4'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'source_marks' => [
                {
                  'counter' => 20,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'four'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => '4',
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 76
          }
        },
        {
          'cmdname' => 'firstparagraphindent',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 21,
                      'position' => 4,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'none'
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
            'misc_args' => [
              'none'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'source_marks' => [
                {
                  'counter' => 21,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'none_arg'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => 'none',
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 77
          }
        },
        {
          'cmdname' => 'exampleindent',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 22,
                      'position' => 1,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => '6'
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
            'misc_args' => [
              '6'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'source_marks' => [
                {
                  'counter' => 22,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'six'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => '6',
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 78
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'end_arg',
              'type' => 'rawline_arg'
            },
            {
              'text' => 'end',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' end_arg end
'
          }
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'separate_arg',
              'type' => 'rawline_arg'
            },
            {
              'text' => 'separate',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' separate_arg separate 
'
          }
        },
        {
          'cmdname' => 'footnotestyle',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 23,
                      'position' => 3,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'end'
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
            'misc_args' => [
              'end'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'source_marks' => [
                {
                  'counter' => 23,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'end_arg'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => 'end',
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 82
          }
        },
        {
          'cmdname' => 'footnotestyle',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 24,
                      'position' => 8,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'separate'
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
            'misc_args' => [
              'separate'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'source_marks' => [
                {
                  'counter' => 24,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'separate_arg'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => 'separate',
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 83
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'latin1',
              'type' => 'rawline_arg'
            },
            {
              'text' => 'ISO-8859-1',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' latin1 ISO-8859-1
'
          }
        },
        {
          'cmdname' => 'documentencoding',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 25,
                      'position' => 10,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'ISO-8859-1'
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
            'input_encoding_name' => 'iso-8859-1',
            'text_arg' => 'ISO-8859-1'
          },
          'info' => {
            'spaces_before_argument' => {
              'source_marks' => [
                {
                  'counter' => 25,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'latin1'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => 'ISO-8859-1',
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 86
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'en',
              'type' => 'rawline_arg'
            },
            {
              'text' => 'en',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' en en
'
          }
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'documentlanguage_command',
              'type' => 'rawline_arg'
            },
            {
              'text' => '@documentlanguage',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' documentlanguage_command @documentlanguage
'
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
              'cmdname' => 'documentlanguage',
              'contents' => [
                {
                  'contents' => [
                    {
                      'source_marks' => [
                        {
                          'counter' => 26,
                          'position' => 2,
                          'sourcemark_type' => 'value_expansion',
                          'status' => 'end'
                        }
                      ],
                      'text' => 'en'
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
                'text_arg' => 'en'
              },
              'info' => {
                'spaces_before_argument' => {
                  'source_marks' => [
                    {
                      'counter' => 26,
                      'element' => {
                        'cmdname' => 'value',
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'en'
                              }
                            ],
                            'type' => 'brace_container'
                          }
                        ]
                      },
                      'line' => 'en',
                      'position' => 2,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'start'
                    }
                  ],
                  'text' => '  '
                }
              },
              'source_info' => {
                'line_nr' => 91
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
              'source_marks' => [
                {
                  'counter' => 27,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'documentlanguage_command'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => '@documentlanguage',
                  'position' => 29,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'documentlanguage on its line
'
            },
            {
              'cmdname' => 'documentlanguage',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'en'
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
                'text_arg' => 'en'
              },
              'info' => {
                'spaces_before_argument' => {
                  'source_marks' => [
                    {
                      'counter' => 27,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => '  '
                }
              },
              'source_info' => {
                'line_nr' => 94
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
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'on_arg',
              'type' => 'rawline_arg'
            },
            {
              'text' => 'on',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' on_arg on
'
          }
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'off_arg',
              'type' => 'rawline_arg'
            },
            {
              'text' => 'off',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' off_arg off
'
          }
        },
        {
          'cmdname' => 'frenchspacing',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 28,
                      'position' => 2,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'on'
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
            'misc_args' => [
              'on'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'source_marks' => [
                {
                  'counter' => 28,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'on_arg'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => 'on',
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 99
          }
        },
        {
          'cmdname' => 'frenchspacing',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 29,
                      'position' => 3,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'off'
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
            'misc_args' => [
              'off'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'source_marks' => [
                {
                  'counter' => 29,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'off_arg'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => 'off',
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 100
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'c',
          'contents' => [
            {
              'text' => ' accepts 10 or 11
',
              'type' => 'rawline_arg'
            }
          ]
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'ten',
              'type' => 'rawline_arg'
            },
            {
              'text' => '10',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' ten 10
'
          }
        },
        {
          'cmdname' => 'fonttextsize',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 30,
                      'position' => 2,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => '10'
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
            'misc_args' => [
              '10'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'source_marks' => [
                {
                  'counter' => 30,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'ten'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => '10',
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 104
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'c',
          'contents' => [
            {
              'text' => ' accept false or true
',
              'type' => 'rawline_arg'
            }
          ]
        },
        {
          'cmdname' => 'c',
          'contents' => [
            {
              'text' => ' makeinfo don\'t care about the arg and remove the remaining of the line
',
              'type' => 'rawline_arg'
            }
          ]
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'false_arg',
              'type' => 'rawline_arg'
            },
            {
              'text' => 'false',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' false_arg false
'
          }
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'true_arg',
              'type' => 'rawline_arg'
            },
            {
              'text' => 'true',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' true_arg true
'
          }
        },
        {
          'cmdname' => 'allowcodebreaks',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 31,
                      'position' => 5,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'false'
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
            'misc_args' => [
              'false'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'source_marks' => [
                {
                  'counter' => 31,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'false_arg'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => 'false',
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 110
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'allowcodebreaks',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 32,
                      'position' => 4,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'true'
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
            'misc_args' => [
              'true'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'source_marks' => [
                {
                  'counter' => 32,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'true_arg'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => 'true',
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 112
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'page_macro',
              'type' => 'rawline_arg'
            },
            {
              'text' => '@page',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' page_macro @page
'
          }
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'noindent_macro',
              'type' => 'rawline_arg'
            },
            {
              'text' => '@noindent',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' noindent_macro @noindent
'
          }
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'refill_macro',
              'type' => 'rawline_arg'
            },
            {
              'text' => '@refill',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' refill_macro @refill
'
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
              'source_marks' => [
                {
                  'counter' => 33,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'page_macro'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => '@page',
                  'position' => 5,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'page '
            }
          ],
          'source_marks' => [
            {
              'counter' => 33,
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'page',
          'contents' => [
            {
              'text' => ' @@noindent @value{noindent_macro} @@refill @value{refill_macro} something
',
              'type' => 'rawline_arg'
            }
          ]
        },
        {
          'source_marks' => [
            {
              'counter' => 34,
              'element' => {
                'cmdname' => 'value',
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => 'noindent_macro'
                      }
                    ],
                    'type' => 'brace_container'
                  }
                ]
              },
              'line' => '@noindent',
              'position' => 1,
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            }
          ],
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'noindent',
          'source_info' => {
            'line_nr' => 120
          }
        },
        {
          'source_marks' => [
            {
              'counter' => 34,
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            }
          ],
          'text' => '     ',
          'type' => 'ignorable_spaces_after_command'
        },
        {
          'contents' => [
            {
              'source_marks' => [
                {
                  'counter' => 35,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'noindent_macro'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => '@noindent',
                  'position' => 30,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'noindent at beginning of line
'
            },
            {
              'cmdname' => 'noindent',
              'source_info' => {
                'line_nr' => 121
              }
            },
            {
              'source_marks' => [
                {
                  'counter' => 35,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'end'
                }
              ],
              'text' => '
',
              'type' => 'ignorable_spaces_after_command'
            },
            {
              'text' => 'noindent on the preceding line
'
            },
            {
              'source_marks' => [
                {
                  'counter' => 36,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'noindent_macro'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => '@noindent',
                  'position' => 2,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => '  '
            },
            {
              'cmdname' => 'noindent',
              'source_info' => {
                'line_nr' => 123
              }
            },
            {
              'source_marks' => [
                {
                  'counter' => 36,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'end'
                }
              ],
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
          'cmdname' => 'page',
          'contents' => [
            {
              'text' => '         page at beginning of line
',
              'type' => 'rawline_arg'
            }
          ]
        },
        {
          'cmdname' => 'page',
          'contents' => [
            {
              'text' => '
',
              'type' => 'rawline_arg'
            }
          ]
        },
        {
          'contents' => [
            {
              'text' => 'After page on it\'s own line.
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
              'source_marks' => [
                {
                  'counter' => 37,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'page_macro'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => '@page',
                  'position' => 5,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'page '
            }
          ],
          'source_marks' => [
            {
              'counter' => 37,
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'page',
          'contents' => [
            {
              'text' => '   @@noindent @value{noindent_macro}    @@refill @value{refill_macro}
',
              'type' => 'rawline_arg'
            }
          ]
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'contents_macro',
              'type' => 'rawline_arg'
            },
            {
              'text' => '@contents',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' contents_macro @contents
'
          },
          'source_marks' => [
            {
              'counter' => 38,
              'element' => {
                'cmdname' => 'value',
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => 'contents_macro'
                      }
                    ],
                    'type' => 'brace_container'
                  }
                ]
              },
              'line' => '@contents',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 38,
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            }
          ]
        },
        {
          'cmdname' => 'contents',
          'contents' => [
            {
              'text' => '
',
              'type' => 'rawline_arg'
            }
          ],
          'extra' => {},
          'source_info' => {
            'line_nr' => 131
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'vskip',
          'contents' => [
            {
              'text' => ' @value{text}
',
              'type' => 'rawline_arg'
            }
          ]
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'exdent_macro',
              'type' => 'rawline_arg'
            },
            {
              'text' => '@exdent',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' exdent_macro @exdent
'
          },
          'source_marks' => [
            {
              'counter' => 39,
              'element' => {
                'cmdname' => 'value',
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => 'exdent_macro'
                      }
                    ],
                    'type' => 'brace_container'
                  }
                ]
              },
              'line' => '@exdent',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            }
          ]
        },
        {
          'cmdname' => 'exdent',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'line after exdent'
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
              'source_marks' => [
                {
                  'counter' => 39,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'end'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 136
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'two',
              'type' => 'rawline_arg'
            },
            {
              'text' => '2',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' two 2
'
          }
        },
        {
          'cmdname' => 'sp',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 40,
                      'position' => 1,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => '2'
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
            'misc_args' => [
              '2'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'source_marks' => [
                {
                  'counter' => 40,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'two'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => '2',
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 139
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'result_macro',
              'type' => 'rawline_arg'
            },
            {
              'text' => '@result',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' result_macro @result
'
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'clickstyle',
          'contents' => [
            {
              'text' => '@value',
              'type' => 'rawline_arg'
            }
          ],
          'extra' => {},
          'info' => {
            'arg_line' => ' @value{result_macro}
'
          },
          'source_info' => {
            'line_nr' => 143
          }
        },
        {
          'source_marks' => [
            {
              'counter' => 41,
              'element' => {
                'cmdname' => 'value',
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => 'contents_macro'
                      }
                    ],
                    'type' => 'brace_container'
                  }
                ]
              },
              'line' => '@contents',
              'position' => 1,
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 41,
              'position' => 1,
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            }
          ],
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'contents',
          'contents' => [
            {
              'text' => '
',
              'type' => 'rawline_arg'
            }
          ],
          'extra' => {},
          'source_info' => {
            'line_nr' => 145
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'shortcontents_macro',
              'type' => 'rawline_arg'
            },
            {
              'text' => '@shortcontents',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' shortcontents_macro @shortcontents
'
          },
          'source_marks' => [
            {
              'counter' => 42,
              'element' => {
                'cmdname' => 'value',
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => 'shortcontents_macro'
                      }
                    ],
                    'type' => 'brace_container'
                  }
                ]
              },
              'line' => '@shortcontents',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 42,
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            }
          ]
        },
        {
          'cmdname' => 'shortcontents',
          'contents' => [
            {
              'text' => '
',
              'type' => 'rawline_arg'
            }
          ],
          'extra' => {},
          'source_info' => {
            'line_nr' => 148
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'bye_macro',
              'type' => 'rawline_arg'
            },
            {
              'text' => '@bye',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' bye_macro @bye
'
          }
        },
        {
          'source_marks' => [
            {
              'counter' => 43,
              'element' => {
                'cmdname' => 'value',
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => 'bye_macro'
                      }
                    ],
                    'type' => 'brace_container'
                  }
                ]
              },
              'line' => '@bye',
              'position' => 1,
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            }
          ],
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'chap'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 6
      },
      'source_marks' => [
        {
          'counter' => 43,
          'sourcemark_type' => 'value_expansion',
          'status' => 'end'
        }
      ]
    },
    {
      'cmdname' => 'bye',
      'contents' => [
        {
          'text' => '',
          'type' => 'rawline_arg'
        }
      ]
    }
  ],
  'type' => 'document_root'
};

$result_texis{'value_in_misc_commands'} = '@set text atext

@node Top
@top top atext

@node chap

@subheading Comment like: atext

Text line followed by a comment on the same line and another below @c comment @value{text}
@c comment @value{text}

@set pagesizes_arg 200mm,150mm
@set afourpaper_macro @afourpaper

@pagesizes 200mm,150mm
@afourpaper
@headings on line following headings atext
@oddfooting some text ignored atext
@everyheading on line following everyheading atext

@set need_arg 0.1

@need 0.1

@set raisesections_macro @raisesections
@raisesections
@set lowersections_macro @lowersections
@lowersections

@c tex error: Use of \\ doesn\'t match its definition.
@@definfoenclose phoo,//,\\\\  @definfoenclose phoo,//,\\\\

@phoo{bar}

@set definfoenclose_name phi
@definfoenclose phi,:,:

@phi{bar}

@set strong_macro @strong
@set strong_name strong

@strong{very strong}

@definfoenclose strong,(strong:,:)

@strong{ is it really strong? }

@kbd{something before kbdinputstyle}

@set kbdinputstyle_arg code
@kbdinputstyle code

@kbd{truc}

@example
@kbd{example}
@end example

@set asis_arg asis
@set zero 0
@set none_arg none
@set four 4
@set six 6

@paragraphindent asis
@paragraphindent 0
@paragraphindent none
@paragraphindent 4
@firstparagraphindent none
@exampleindent 6

@set end_arg end
@set separate_arg separate 
@footnotestyle end
@footnotestyle separate

@set latin1 ISO-8859-1
@documentencoding ISO-8859-1

@set en en
@set documentlanguage_command @documentlanguage

documentlanguage @documentlanguage  en

documentlanguage on its line
@documentlanguage  en
line following documentlanguage

@set on_arg on
@set off_arg off
@frenchspacing on
@frenchspacing off

@c accepts 10 or 11
@set ten 10
@fonttextsize 10

@c accept false or true
@c makeinfo don\'t care about the arg and remove the remaining of the line
@set false_arg false
@set true_arg true
@allowcodebreaks false

@allowcodebreaks true

@set page_macro @page
@set noindent_macro @noindent
@set refill_macro @refill

@@page @page @@noindent @value{noindent_macro} @@refill @value{refill_macro} something

@noindent     noindent at beginning of line
@noindent
noindent on the preceding line
  @noindent    noindent after space at beginning of line
@page         page at beginning of line
@page
After page on it\'s own line.

@@page @page   @@noindent @value{noindent_macro}    @@refill @value{refill_macro}

@set contents_macro @contents
@contents

@vskip @value{text}

@set exdent_macro @exdent
@exdent line after exdent

@set two 2
@sp 2

@set result_macro @result

@clickstyle @value{result_macro}

@contents

@set shortcontents_macro @shortcontents
@shortcontents

@set bye_macro @bye

@bye';


$result_texts{'value_in_misc_commands'} = '
top atext
*********


Comment like: atext
-------------------

Text line followed by a comment on the same line and another below 





@definfoenclose phoo,//,\\\\  
bar


bar


very strong


 is it really strong? 

something before kbdinputstyle


truc

example






documentlanguage 
documentlanguage on its line
line following documentlanguage






@page 

noindent at beginning of line
noindent on the preceding line
  noindent after space at beginning of line


After page on it\'s own line.

@page 



line after exdent









';

$result_sectioning{'value_in_misc_commands'} = {
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
          'section_level' => 0,
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'value_in_misc_commands'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'value_in_misc_commands'};

$result_nodes{'value_in_misc_commands'} = [
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
            'node_directions' => {
              'prev' => {}
            },
            'normalized' => 'chap'
          },
          'source_marks' => [
            {
              'counter' => 43,
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            }
          ]
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'value_in_misc_commands'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'value_in_misc_commands'}[0];
$result_nodes{'value_in_misc_commands'}[1] = $result_nodes{'value_in_misc_commands'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'value_in_misc_commands'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap'
    },
    'source_marks' => [
      {
        'counter' => 43,
        'sourcemark_type' => 'value_expansion',
        'status' => 'end'
      }
    ]
  }
];

$result_errors{'value_in_misc_commands'} = [
  {
    'error_line' => 'bad argument to @headings: on line following headings atext
',
    'line_nr' => 20,
    'text' => 'bad argument to @headings: on line following headings atext',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 37,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @definfoenclose should only appear at the beginning of a line
',
    'line_nr' => 37,
    'text' => '@definfoenclose should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 43,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 52,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: multiple @footnotestyle
',
    'line_nr' => 83,
    'text' => 'multiple @footnotestyle',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @documentlanguage should only appear at the beginning of a line
',
    'line_nr' => 91,
    'text' => '@documentlanguage should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @page should only appear at the beginning of a line
',
    'line_nr' => 118,
    'text' => '@page should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @noindent is useless inside of a paragraph
',
    'line_nr' => 121,
    'text' => '@noindent is useless inside of a paragraph',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @noindent is useless inside of a paragraph
',
    'line_nr' => 123,
    'text' => '@noindent is useless inside of a paragraph',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @page should only appear at the beginning of a line
',
    'line_nr' => 128,
    'text' => '@page should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: remaining argument on @clickstyle line: {result_macro}
',
    'line_nr' => 143,
    'text' => 'remaining argument on @clickstyle line: {result_macro}',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 6,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_floats{'value_in_misc_commands'} = {};


1;
