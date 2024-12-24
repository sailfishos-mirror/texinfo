use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'comment_on_ifset_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'x',
              'type' => 'rawline_arg'
            },
            {
              'text' => '',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' x
'
          }
        },
        {
          'source_marks' => [
            {
              'counter' => 1,
              'element' => {
                'cmdname' => 'ifset',
                'contents' => [
                  {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'x'
                          }
                        ],
                        'info' => {
                          'comment_at_end' => {
                            'cmdname' => 'c',
                            'contents' => [
                              {
                                'text' => '
',
                                'type' => 'rawline_arg'
                              }
                            ]
                          }
                        },
                        'type' => 'block_line_arg'
                      }
                    ],
                    'type' => 'arguments_line'
                  }
                ],
                'info' => {
                  'spaces_before_argument' => {
                    'text' => ' '
                  }
                },
                'source_info' => {
                  'line_nr' => 3
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
              'source_marks' => [
                {
                  'counter' => 1,
                  'element' => {
                    'cmdname' => 'end',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'ifset'
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
                      'text_arg' => 'ifset'
                    },
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'line_nr' => 5
                    }
                  },
                  'position' => 3,
                  'sourcemark_type' => 'expanded_conditional_command',
                  'status' => 'end'
                },
                {
                  'counter' => 2,
                  'element' => {
                    'cmdname' => 'ifset',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'x'
                              }
                            ],
                            'info' => {
                              'comment_at_end' => {
                                'cmdname' => 'c',
                                'contents' => [
                                  {
                                    'text' => ' comm
',
                                    'type' => 'rawline_arg'
                                  }
                                ]
                              }
                            },
                            'type' => 'block_line_arg'
                          }
                        ],
                        'type' => 'arguments_line'
                      }
                    ],
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'line_nr' => 6
                    }
                  },
                  'position' => 3,
                  'sourcemark_type' => 'expanded_conditional_command',
                  'status' => 'start'
                }
              ],
              'text' => 'Y1
'
            },
            {
              'source_marks' => [
                {
                  'counter' => 2,
                  'element' => {
                    'cmdname' => 'end',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'ifset'
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
                      'text_arg' => 'ifset'
                    },
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'line_nr' => 8
                    }
                  },
                  'position' => 3,
                  'sourcemark_type' => 'expanded_conditional_command',
                  'status' => 'end'
                },
                {
                  'counter' => 3,
                  'element' => {
                    'cmdname' => 'ifset',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'x'
                              }
                            ],
                            'info' => {
                              'comment_at_end' => {
                                'cmdname' => 'c',
                                'contents' => [
                                  {
                                    'text' => '@ggg
',
                                    'type' => 'rawline_arg'
                                  }
                                ]
                              }
                            },
                            'type' => 'block_line_arg'
                          }
                        ],
                        'type' => 'arguments_line'
                      }
                    ],
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'line_nr' => 9
                    }
                  },
                  'position' => 3,
                  'sourcemark_type' => 'expanded_conditional_command',
                  'status' => 'start'
                }
              ],
              'text' => 'Y2
'
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
                            'text' => 'ifset'
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
                      'text_arg' => 'ifset'
                    },
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'line_nr' => 11
                    }
                  },
                  'position' => 3,
                  'sourcemark_type' => 'expanded_conditional_command',
                  'status' => 'end'
                },
                {
                  'counter' => 4,
                  'element' => {
                    'cmdname' => 'ifset',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'x'
                              }
                            ],
                            'info' => {
                              'comment_at_end' => {
                                'cmdname' => 'c',
                                'contents' => [
                                  {
                                    'text' => '
',
                                    'type' => 'rawline_arg'
                                  }
                                ]
                              },
                              'spaces_after_argument' => {
                                'text' => ' '
                              }
                            },
                            'type' => 'block_line_arg'
                          }
                        ],
                        'type' => 'arguments_line'
                      }
                    ],
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'line_nr' => 12
                    }
                  },
                  'position' => 3,
                  'sourcemark_type' => 'expanded_conditional_command',
                  'status' => 'start'
                }
              ],
              'text' => 'Y3
'
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
                            'text' => 'ifset'
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
                      'text_arg' => 'ifset'
                    },
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'line_nr' => 14
                    }
                  },
                  'position' => 3,
                  'sourcemark_type' => 'expanded_conditional_command',
                  'status' => 'end'
                },
                {
                  'counter' => 5,
                  'element' => {
                    'cmdname' => 'ifset',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'x'
                              }
                            ],
                            'info' => {
                              'comment_at_end' => {
                                'cmdname' => 'c',
                                'contents' => [
                                  {
                                    'text' => ' comm
',
                                    'type' => 'rawline_arg'
                                  }
                                ]
                              },
                              'spaces_after_argument' => {
                                'text' => ' '
                              }
                            },
                            'type' => 'block_line_arg'
                          }
                        ],
                        'type' => 'arguments_line'
                      }
                    ],
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'line_nr' => 15
                    }
                  },
                  'position' => 3,
                  'sourcemark_type' => 'expanded_conditional_command',
                  'status' => 'start'
                }
              ],
              'text' => 'Y4
'
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
                            'text' => 'ifset'
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
                      'text_arg' => 'ifset'
                    },
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'line_nr' => 17
                    }
                  },
                  'position' => 3,
                  'sourcemark_type' => 'expanded_conditional_command',
                  'status' => 'end'
                },
                {
                  'counter' => 6,
                  'element' => {
                    'cmdname' => 'ifset',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'x'
                              }
                            ],
                            'info' => {
                              'comment_at_end' => {
                                'cmdname' => 'c',
                                'contents' => [
                                  {
                                    'text' => '@ggg
',
                                    'type' => 'rawline_arg'
                                  }
                                ]
                              },
                              'spaces_after_argument' => {
                                'text' => ' '
                              }
                            },
                            'type' => 'block_line_arg'
                          }
                        ],
                        'type' => 'arguments_line'
                      }
                    ],
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'line_nr' => 18
                    }
                  },
                  'position' => 3,
                  'sourcemark_type' => 'expanded_conditional_command',
                  'status' => 'start'
                }
              ],
              'text' => 'Y5
'
            },
            {
              'source_marks' => [
                {
                  'counter' => 6,
                  'element' => {
                    'cmdname' => 'end',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'ifset'
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
                      'text_arg' => 'ifset'
                    },
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'line_nr' => 20
                    }
                  },
                  'position' => 3,
                  'sourcemark_type' => 'expanded_conditional_command',
                  'status' => 'end'
                }
              ],
              'text' => 'Y6
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'comment_on_ifset_line'} = '@set x

Y1
Y2
Y3
Y4
Y5
Y6
';


$result_texts{'comment_on_ifset_line'} = '
Y1
Y2
Y3
Y4
Y5
Y6
';

$result_errors{'comment_on_ifset_line'} = [];


$result_floats{'comment_on_ifset_line'} = {};


1;
