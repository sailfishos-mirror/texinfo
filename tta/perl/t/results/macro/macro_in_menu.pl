use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_in_menu'} = {
  'contents' => [
    {
      'contents' => [
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
                  'text' => ' astar
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => '*
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
                'line_nr' => 4
              }
            }
          ],
          'extra' => {
            'macro_name' => 'astar',
            'misc_args' => []
          },
          'source_info' => {
            'line_nr' => 2
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
                  'text' => ' starspaces
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => '* 
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
                'line_nr' => 8
              }
            }
          ],
          'extra' => {
            'macro_name' => 'starspaces',
            'misc_args' => []
          },
          'source_info' => {
            'line_nr' => 6
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
                  'text' => ' spaces
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => '  
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
                'line_nr' => 12
              }
            }
          ],
          'extra' => {
            'macro_name' => 'spaces',
            'misc_args' => []
          },
          'source_info' => {
            'line_nr' => 10
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
                  'text' => ' aspace
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => ' 
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
                'line_nr' => 16
              }
            }
          ],
          'extra' => {
            'macro_name' => 'aspace',
            'misc_args' => []
          },
          'source_info' => {
            'line_nr' => 14
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
                  'text' => ' twocolon
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => '::
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
                'line_nr' => 20
              }
            }
          ],
          'extra' => {
            'macro_name' => 'twocolon',
            'misc_args' => []
          },
          'source_info' => {
            'line_nr' => 18
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
                  'text' => ' acolon
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => ':
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
                'line_nr' => 24
              }
            }
          ],
          'extra' => {
            'macro_name' => 'acolon',
            'misc_args' => []
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
          'cmdname' => 'menu',
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
                  'source_marks' => [
                    {
                      'counter' => 1,
                      'element' => {
                        'contents' => [
                          {
                            'type' => 'brace_arg'
                          }
                        ],
                        'info' => {
                          'command_name' => 'starspaces'
                        },
                        'type' => 'macro_call'
                      },
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'start'
                    }
                  ],
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'source_marks' => [
                        {
                          'counter' => 1,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'end'
                        },
                        {
                          'counter' => 2,
                          'element' => {
                            'contents' => [
                              {
                                'type' => 'brace_arg'
                              }
                            ],
                            'info' => {
                              'command_name' => 'twocolon'
                            },
                            'type' => 'macro_call'
                          },
                          'position' => 10,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'start'
                        }
                      ],
                      'text' => 'menu entry'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'menu-entry'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'source_marks' => [
                    {
                      'counter' => 2,
                      'position' => 2,
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => ':: ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'description
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'line_nr' => 27
              },
              'type' => 'menu_entry'
            },
            {
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
                              'command_name' => 'spaces'
                            },
                            'type' => 'macro_call'
                          },
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'start'
                        },
                        {
                          'counter' => 3,
                          'position' => 2,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'end'
                        }
                      ],
                      'text' => '  
',
                      'type' => 'after_menu_description_line'
                    },
                    {
                      'text' => 'menu comment
'
                    }
                  ],
                  'type' => 'preformatted'
                }
              ],
              'type' => 'menu_comment'
            },
            {
              'contents' => [
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
                          'command_name' => 'astar'
                        },
                        'type' => 'macro_call'
                      },
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'start'
                    },
                    {
                      'counter' => 4,
                      'position' => 1,
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'node'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'node'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'line_nr' => 30
              },
              'type' => 'menu_entry'
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
                            'type' => 'brace_arg'
                          }
                        ],
                        'info' => {
                          'command_name' => 'astar'
                        },
                        'type' => 'macro_call'
                      },
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'start'
                    },
                    {
                      'counter' => 5,
                      'position' => 1,
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'end'
                    },
                    {
                      'counter' => 6,
                      'element' => {
                        'contents' => [
                          {
                            'type' => 'brace_arg'
                          }
                        ],
                        'info' => {
                          'command_name' => 'aspace'
                        },
                        'type' => 'macro_call'
                      },
                      'position' => 1,
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'start'
                    }
                  ],
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'source_marks' => [
                        {
                          'counter' => 6,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'end'
                        }
                      ],
                      'text' => 'other node'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'other-node'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'line_nr' => 31
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'source_marks' => [
                        {
                          'counter' => 7,
                          'element' => {
                            'contents' => [
                              {
                                'type' => 'brace_arg'
                              }
                            ],
                            'info' => {
                              'command_name' => 'acolon'
                            },
                            'type' => 'macro_call'
                          },
                          'position' => 16,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'start'
                        }
                      ],
                      'text' => 'node colon macro'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'node-colon-macro'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'source_marks' => [
                    {
                      'counter' => 7,
                      'position' => 1,
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'end'
                    },
                    {
                      'counter' => 8,
                      'element' => {
                        'contents' => [
                          {
                            'type' => 'brace_arg'
                          }
                        ],
                        'info' => {
                          'command_name' => 'acolon'
                        },
                        'type' => 'macro_call'
                      },
                      'position' => 1,
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'start'
                    },
                    {
                      'counter' => 8,
                      'position' => 2,
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'end'
                    },
                    {
                      'counter' => 9,
                      'element' => {
                        'contents' => [
                          {
                            'type' => 'brace_arg'
                          }
                        ],
                        'info' => {
                          'command_name' => 'aspace'
                        },
                        'type' => 'macro_call'
                      },
                      'position' => 2,
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'start'
                    },
                    {
                      'counter' => 9,
                      'position' => 3,
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => ':: ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'description
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'line_nr' => 32
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => '3rd node'
                    }
                  ],
                  'type' => 'menu_entry_name'
                },
                {
                  'text' => ': ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'text' => 'entry'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'entry'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'source_marks' => [
                    {
                      'counter' => 10,
                      'element' => {
                        'contents' => [
                          {
                            'type' => 'brace_arg'
                          }
                        ],
                        'info' => {
                          'command_name' => 'aspace'
                        },
                        'type' => 'macro_call'
                      },
                      'position' => 1,
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'start'
                    },
                    {
                      'counter' => 10,
                      'position' => 2,
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => '. ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'description
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'line_nr' => 33
              },
              'type' => 'menu_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'menu'
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
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 34
              }
            }
          ],
          'source_info' => {
            'line_nr' => 26
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'macro_in_menu'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'macro_in_menu'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'macro_in_menu'}{'contents'}[0]{'contents'}[13]{'contents'}[3]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'macro_in_menu'}{'contents'}[0]{'contents'}[13]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'macro_in_menu'}{'contents'}[0]{'contents'}[13]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'macro_in_menu'}{'contents'}[0]{'contents'}[13]{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'macro_in_menu'}{'contents'}[0]{'contents'}[13]{'contents'}[5]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'macro_in_menu'}{'contents'}[0]{'contents'}[13]{'contents'}[5]{'contents'}[1]{'contents'}[0];
$result_trees{'macro_in_menu'}{'contents'}[0]{'contents'}[13]{'contents'}[6]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'macro_in_menu'}{'contents'}[0]{'contents'}[13]{'contents'}[6]{'contents'}[3]{'contents'}[0];

$result_texis{'macro_in_menu'} = '
@macro astar
*
@end macro

@macro starspaces
* 
@end macro

@macro spaces
  
@end macro

@macro aspace
 
@end macro

@macro twocolon
::
@end macro

@macro acolon
:
@end macro

@menu
* menu entry:: description
  
menu comment
* node::
* other node::
* node colon macro:: description
* 3rd node: entry. description
@end menu
';


$result_texts{'macro_in_menu'} = '






* menu entry:: description
  
menu comment
* node::
* other node::
* node colon macro:: description
* 3rd node: entry. description
';

$result_errors{'macro_in_menu'} = [];


$result_floats{'macro_in_menu'} = {};


1;
