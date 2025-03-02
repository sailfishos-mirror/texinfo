use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'in_table'} = {
  'contents' => [
    {
      'contents' => [
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
        'line_nr' => 2
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
          'cmdname' => 'table',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'xref',
                      'source_info' => {
                        'line_nr' => 5
                      }
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
              'type' => 'arguments_line'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'table'
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
                'text_arg' => 'table'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 6
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {}
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
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'table',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'code',
                      'source_info' => {
                        'line_nr' => 8
                      }
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
              'type' => 'arguments_line'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => 'indent',
                              'source_info' => {
                                'line_nr' => 9
                              }
                            },
                            {
                              'text' => ' ',
                              'type' => 'ignorable_spaces_after_command'
                            },
                            {
                              'cmdname' => 'titlefont',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'in titlefont'
                                    }
                                  ],
                                  'type' => 'brace_container'
                                }
                              ],
                              'extra' => {},
                              'source_info' => {
                                'line_nr' => 9
                              }
                            },
                            {
                              'text' => ' '
                            },
                            {
                              'cmdname' => 'anchor',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'in anchor'
                                    }
                                  ],
                                  'type' => 'brace_arg'
                                }
                              ],
                              'extra' => {
                                'is_target' => 1,
                                'normalized' => 'in-anchor'
                              },
                              'source_info' => {
                                'line_nr' => 9
                              }
                            },
                            {
                              'cmdname' => 'footnote',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'contents' => [
                                        {
                                          'text' => 'footnote'
                                        }
                                      ],
                                      'type' => 'paragraph'
                                    }
                                  ],
                                  'type' => 'brace_command_context'
                                }
                              ],
                              'extra' => {},
                              'source_info' => {
                                'line_nr' => 9
                              }
                            },
                            {
                              'text' => ' '
                            },
                            {
                              'cmdname' => 'exdent',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'exdent'
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
                                'line_nr' => 9
                              }
                            }
                          ],
                          'type' => 'line_arg'
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
                    }
                  ],
                  'type' => 'table_term'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'in item'
                        },
                        {
                          'cmdname' => 'footnote',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'footnote in item'
                                    }
                                  ],
                                  'type' => 'paragraph'
                                }
                              ],
                              'type' => 'brace_command_context'
                            }
                          ],
                          'extra' => {},
                          'source_info' => {
                            'line_nr' => 10
                          }
                        },
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'table_definition'
                }
              ],
              'type' => 'table_entry'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => 'ref',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'Top'
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
                                      'text' => 'title
'
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
                                'line_nr' => 11
                              }
                            }
                          ],
                          'type' => 'line_arg'
                        }
                      ],
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'line_nr' => 11
                      }
                    }
                  ],
                  'type' => 'table_term'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'long title
'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'table_definition'
                }
              ],
              'type' => 'table_entry'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => 'center',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'centered text in item'
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
                                'line_nr' => 13
                              }
                            }
                          ],
                          'type' => 'line_arg'
                        }
                      ],
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'line_nr' => 13
                      }
                    }
                  ],
                  'type' => 'table_term'
                }
              ],
              'type' => 'table_entry'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => 'cindex',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'index'
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
                                'element_node' => {},
                                'index_entry' => [
                                  'cp',
                                  1
                                ]
                              },
                              'info' => {
                                'command_name' => 'cindex',
                                'spaces_before_argument' => {
                                  'text' => ' '
                                }
                              },
                              'source_info' => {
                                'line_nr' => 14
                              },
                              'type' => 'index_entry_command'
                            }
                          ],
                          'type' => 'line_arg'
                        }
                      ],
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'line_nr' => 14
                      }
                    }
                  ],
                  'type' => 'table_term'
                }
              ],
              'type' => 'table_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'table'
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
                'text_arg' => 'table'
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
            'command_as_argument' => {}
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
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'vtable',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'asis',
                      'source_info' => {
                        'line_nr' => 17
                      }
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
              'type' => 'arguments_line'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => 'cindex',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'index'
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
                                'element_node' => {},
                                'index_entry' => [
                                  'cp',
                                  2
                                ]
                              },
                              'info' => {
                                'command_name' => 'cindex',
                                'spaces_before_argument' => {
                                  'text' => ' '
                                }
                              },
                              'source_info' => {
                                'line_nr' => 18
                              },
                              'type' => 'index_entry_command'
                            }
                          ],
                          'type' => 'line_arg'
                        }
                      ],
                      'extra' => {
                        'element_node' => {},
                        'index_entry' => [
                          'vr',
                          1
                        ]
                      },
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'line_nr' => 18
                      }
                    }
                  ],
                  'type' => 'table_term'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'option',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'opt'
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
                          'text' => '
'
                        },
                        {
                          'text' => 'More text
'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'table_definition'
                }
              ],
              'type' => 'table_entry'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => 'cindex',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => '2 index'
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
                                'element_node' => {},
                                'index_entry' => [
                                  'cp',
                                  3
                                ]
                              },
                              'info' => {
                                'command_name' => 'cindex',
                                'spaces_before_argument' => {
                                  'text' => ' '
                                }
                              },
                              'source_info' => {
                                'line_nr' => 21
                              },
                              'type' => 'index_entry_command'
                            }
                          ],
                          'type' => 'line_arg'
                        }
                      ],
                      'extra' => {
                        'element_node' => {},
                        'index_entry' => [
                          'vr',
                          2
                        ]
                      },
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'line_nr' => 21
                      }
                    }
                  ],
                  'type' => 'table_term'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'option',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'nopt'
                                }
                              ],
                              'type' => 'brace_container'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 22
                          }
                        },
                        {
                          'text' => '
'
                        },
                        {
                          'text' => 'Even more
'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'table_definition'
                }
              ],
              'type' => 'table_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'vtable'
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
                'text_arg' => 'vtable'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 24
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {}
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
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'printindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'fn'
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
              'fn'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 26
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'printindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'cp'
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
              'cp'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 28
          }
        }
      ],
      'extra' => {
        'is_target' => 1,
        'isindex' => 1,
        'normalized' => 'chap'
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
  'type' => 'document_root'
};
$result_trees{'in_table'}{'contents'}[2]{'contents'}[2]{'extra'}{'command_as_argument'} = $result_trees{'in_table'}{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'in_table'}{'contents'}[2]{'contents'}[4]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'element_node'} = $result_trees{'in_table'}{'contents'}[2];
$result_trees{'in_table'}{'contents'}[2]{'contents'}[4]{'extra'}{'command_as_argument'} = $result_trees{'in_table'}{'contents'}[2]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'in_table'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'element_node'} = $result_trees{'in_table'}{'contents'}[2];
$result_trees{'in_table'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'element_node'} = $result_trees{'in_table'}{'contents'}[2];
$result_trees{'in_table'}{'contents'}[2]{'contents'}[6]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'element_node'} = $result_trees{'in_table'}{'contents'}[2];
$result_trees{'in_table'}{'contents'}[2]{'contents'}[6]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'element_node'} = $result_trees{'in_table'}{'contents'}[2];
$result_trees{'in_table'}{'contents'}[2]{'contents'}[6]{'extra'}{'command_as_argument'} = $result_trees{'in_table'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0];

$result_texis{'in_table'} = '
@node Top
@node chap

@table @xref
@end table

@table @code
@item @indent @titlefont{in titlefont} @anchor{in anchor}@footnote{footnote} @exdent exdent
in item@footnote{footnote in item}
@item @ref{Top,, title
}long title
@item @center centered text in item
@item @cindex index
@end table

@vtable @asis
@item @cindex index
@option{opt}
More text
@item @cindex 2 index
@option{nopt}
Even more
@end vtable

@printindex fn

@printindex cp
';


$result_texts{'in_table'} = '


in titlefont  exdent
in item
Top
long title
centered text in item



opt
More text

nopt
Even more


';

$result_nodes{'in_table'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'isindex' => 1,
            'node_directions' => {
              'prev' => {}
            },
            'normalized' => 'chap'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'in_table'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'in_table'}[0];
$result_nodes{'in_table'}[1] = $result_nodes{'in_table'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'in_table'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap'
    }
  }
];

$result_errors{'in_table'} = [
  {
    'error_line' => 'warning: @xref should not appear on @table line
',
    'line_nr' => 5,
    'text' => '@xref should not appear on @table line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @indent should not appear in @item
',
    'line_nr' => 9,
    'text' => '@indent should not appear in @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @exdent should only appear at the beginning of a line
',
    'line_nr' => 9,
    'text' => '@exdent should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @exdent should not appear in @item
',
    'line_nr' => 9,
    'text' => '@exdent should not appear in @item',
    'type' => 'warning'
  },
  {
    'error_line' => '@ref missing closing brace
',
    'line_nr' => 11,
    'text' => '@ref missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 12,
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @center should only appear at the beginning of a line
',
    'line_nr' => 13,
    'text' => '@center should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @center should not appear in @item
',
    'line_nr' => 13,
    'text' => '@center should not appear in @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @cindex should only appear at the beginning of a line
',
    'line_nr' => 14,
    'text' => '@cindex should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @cindex should not appear in @item
',
    'line_nr' => 14,
    'text' => '@cindex should not appear in @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @cindex should only appear at the beginning of a line
',
    'line_nr' => 18,
    'text' => '@cindex should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @cindex should not appear in @item
',
    'line_nr' => 18,
    'text' => '@cindex should not appear in @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @cindex should only appear at the beginning of a line
',
    'line_nr' => 21,
    'text' => '@cindex should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @cindex should not appear in @item
',
    'line_nr' => 21,
    'text' => '@cindex should not appear in @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 3,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @item
',
    'line_nr' => 18,
    'text' => 'empty index key in @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @item
',
    'line_nr' => 21,
    'text' => 'empty index key in @item',
    'type' => 'warning'
  }
];


$result_floats{'in_table'} = {};


$result_indices_sort_strings{'in_table'} = {
  'cp' => [
    '2 index',
    'index',
    'index'
  ]
};


1;
