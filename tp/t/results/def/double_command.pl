use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'double_command'} = {
  'contents' => [
    {
      'contents' => [
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
                          'text' => 'func'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'type' => 'def_aggregate'
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
                          'text' => 'plot'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'type' => 'def_aggregate'
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
                      'contents' => [
                        {
                          'text' => 'a'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'type' => 'def_aggregate'
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
                      'contents' => [
                        {
                          'text' => 'b'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'type' => 'def_aggregate'
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
                      'contents' => [
                        {
                          'text' => 'c'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'type' => 'def_aggregate'
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
                      'contents' => [
                        {
                          'text' => '...'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'type' => 'def_aggregate'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'text' => ')',
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
                      'contents' => [
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'func'
                                    }
                                  ],
                                  'extra' => {
                                    'def_role' => 'category'
                                  },
                                  'type' => 'def_aggregate'
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
                                      'text' => 'plot2'
                                    }
                                  ],
                                  'extra' => {
                                    'def_role' => 'name'
                                  },
                                  'type' => 'def_aggregate'
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
                                  'contents' => [
                                    {
                                      'text' => 'a'
                                    }
                                  ],
                                  'extra' => {
                                    'def_role' => 'arg'
                                  },
                                  'type' => 'def_aggregate'
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
                                  'contents' => [
                                    {
                                      'text' => 'b'
                                    }
                                  ],
                                  'extra' => {
                                    'def_role' => 'arg'
                                  },
                                  'type' => 'def_aggregate'
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
                                  'contents' => [
                                    {
                                      'text' => 'c'
                                    }
                                  ],
                                  'extra' => {
                                    'def_role' => 'arg'
                                  },
                                  'type' => 'def_aggregate'
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
                                  'contents' => [
                                    {
                                      'text' => '...'
                                    }
                                  ],
                                  'extra' => {
                                    'def_role' => 'arg'
                                  },
                                  'type' => 'def_aggregate'
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
                                  'contents' => [
                                    {
                                      'text' => 'd'
                                    }
                                  ],
                                  'extra' => {
                                    'def_role' => 'arg'
                                  },
                                  'type' => 'def_aggregate'
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
                          'cmdname' => 'deffnx',
                          'extra' => {
                            'def_command' => 'deffn',
                            'def_index_element' => {},
                            'index_entry' => [
                              'fn',
                              1
                            ],
                            'not_after_command' => 1,
                            'original_def_cmdname' => 'deffnx'
                          },
                          'info' => {
                            'spaces_before_argument' => {
                              'text' => ' '
                            }
                          },
                          'source_info' => {
                            'line_nr' => 1
                          },
                          'type' => 'def_line'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'type' => 'def_aggregate'
                    }
                  ],
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'deffn',
                'def_index_element' => {},
                'index_entry' => [
                  'fn',
                  2
                ],
                'original_def_cmdname' => 'deffn'
              },
              'source_info' => {
                'line_nr' => 1
              },
              'type' => 'def_line'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'aaa
'
                    }
                  ],
                  'type' => 'paragraph'
                }
              ],
              'type' => 'def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'deffn'
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
                'text_arg' => 'deffn'
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
                          'text' => 'func'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'type' => 'def_aggregate'
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
                          'text' => 'aaaa'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'type' => 'def_aggregate'
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
                          'text' => 'args'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'type' => 'def_aggregate'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'text' => '  ',
                      'type' => 'spaces'
                    },
                    {
                      'contents' => [
                        {
                          'cmdname' => 'defvr',
                          'contents' => [
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'contents' => [
                                        {
                                          'text' => 'c--ategory'
                                        }
                                      ],
                                      'extra' => {
                                        'def_role' => 'category'
                                      },
                                      'type' => 'def_aggregate'
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
                                          'text' => 'd--efvr_name'
                                        }
                                      ],
                                      'extra' => {
                                        'def_role' => 'name'
                                      },
                                      'type' => 'def_aggregate'
                                    }
                                  ],
                                  'info' => {
                                    'spaces_after_argument' => {
                                      'text' => '
'
                                    }
                                  },
                                  'type' => 'block_line_arg'
                                }
                              ],
                              'extra' => {
                                'def_command' => 'defvr',
                                'def_index_element' => {},
                                'index_entry' => [
                                  'vr',
                                  1
                                ],
                                'original_def_cmdname' => 'defvr'
                              },
                              'source_info' => {
                                'line_nr' => 5
                              },
                              'type' => 'def_line'
                            }
                          ],
                          'info' => {
                            'spaces_before_argument' => {
                              'text' => ' '
                            }
                          },
                          'source_info' => {
                            'line_nr' => 5
                          }
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'type' => 'def_aggregate'
                    }
                  ],
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'deffn',
                'def_index_element' => {},
                'index_entry' => [
                  'fn',
                  3
                ],
                'original_def_cmdname' => 'deffn'
              },
              'source_info' => {
                'line_nr' => 5
              },
              'type' => 'def_line'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'bbb
'
                    }
                  ],
                  'type' => 'paragraph'
                }
              ],
              'type' => 'def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'deffn'
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
                'text_arg' => 'deffn'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 7
              }
            }
          ],
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 5
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'double_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[17]{'contents'}[0]{'extra'}{'def_index_element'} = $result_trees{'double_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[17]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'double_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'def_index_element'} = $result_trees{'double_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'double_command'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'extra'}{'def_index_element'} = $result_trees{'double_command'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'double_command'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'def_index_element'} = $result_trees{'double_command'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2];

$result_texis{'double_command'} = '@deffn func plot (a, b, c, ...) @deffnx func plot2 (a, b, c, ..., d)
aaa
@end deffn

@deffn func aaaa args  @defvr c--ategory d--efvr_name
bbb
@end deffn
';


$result_texts{'double_command'} = 'func: plot (a, b, c, ...) func: plot2 (a, b, c, ..., d)

aaa

func: aaaa args  c--ategory: d--efvr_name

bbb
';

$result_errors{'double_command'} = [
  {
    'error_line' => 'warning: @deffnx should only appear at the beginning of a line
',
    'line_nr' => 1,
    'text' => '@deffnx should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @deffnx should not appear on @deffn line
',
    'line_nr' => 1,
    'text' => '@deffnx should not appear on @deffn line',
    'type' => 'warning'
  },
  {
    'error_line' => 'must be after `@deffn\' to use `@deffnx\'
',
    'line_nr' => 1,
    'text' => 'must be after `@deffn\' to use `@deffnx\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 1,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 1,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @defvr should only appear at the beginning of a line
',
    'line_nr' => 5,
    'text' => '@defvr should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @defvr should not appear on @deffn line
',
    'line_nr' => 5,
    'text' => '@defvr should not appear on @deffn line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `vr\' outside of any node
',
    'line_nr' => 5,
    'text' => 'entry for index `vr\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'no matching `@end defvr\'
',
    'line_nr' => 5,
    'text' => 'no matching `@end defvr\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 5,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'double_command'} = {};


$result_indices_sort_strings{'double_command'} = {
  'fn' => [
    'aaaa',
    'plot',
    'plot2'
  ],
  'vr' => [
    'd--efvr_name'
  ]
};


1;
