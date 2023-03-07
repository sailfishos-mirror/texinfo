use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'inter_item_commands_in_def_in_example'} = {
  'contents' => [
    {
      'contents' => [
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
          'cmdname' => 'example',
          'contents' => [
            {
              'cmdname' => 'deffn',
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'extra' => {
                            'def_role' => 'category'
                          },
                          'text' => 'fset'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'text' => ' ',
                          'type' => 'spaces'
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'i'
                                }
                              ],
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'var',
                          'extra' => {
                            'def_role' => 'name'
                          },
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 2,
                            'macro' => ''
                          }
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
                          'text' => 'a'
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
                          'text' => 'g'
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
                    'def_command' => 'deffn',
                    'def_index_element' => {},
                    'index_entry' => [
                      'fn',
                      1
                    ],
                    'original_def_cmdname' => 'deffn'
                  },
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 2,
                    'macro' => ''
                  },
                  'type' => 'def_line'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'args' => [
                            {
                              'text' => ' comment before first deffnx
',
                              'type' => 'misc_arg'
                            }
                          ],
                          'cmdname' => 'c'
                        },
                        {
                          'text' => '
',
                          'type' => 'empty_line'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'inter_def_item'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'extra' => {
                            'def_role' => 'category'
                          },
                          'text' => 'Command'
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
                              'text' => 'log trap1'
                            }
                          ],
                          'extra' => {
                            'def_role' => 'name'
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
                          },
                          'type' => 'bracketed_def_content'
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
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 5,
                            'macro' => ''
                          },
                          'type' => 'bracketed_def_content'
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
                      2
                    ],
                    'original_def_cmdname' => 'deffnx'
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
                  },
                  'type' => 'def_line'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'between deffnx'
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
                            'line_nr' => 6,
                            'macro' => ''
                          },
                          'type' => 'index_entry_command'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'inter_def_item'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'extra' => {
                            'def_role' => 'category'
                          },
                          'text' => 'cmde2'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'text' => ' ',
                          'type' => 'spaces'
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'id '
                                },
                                {
                                  'args' => [
                                    {
                                      'contents' => [
                                        {
                                          'text' => 'i'
                                        }
                                      ],
                                      'type' => 'brace_command_arg'
                                    }
                                  ],
                                  'cmdname' => 'samp',
                                  'source_info' => {
                                    'file_name' => '',
                                    'line_nr' => 7,
                                    'macro' => ''
                                  }
                                },
                                {
                                  'text' => ' ule'
                                }
                              ],
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'b',
                          'extra' => {
                            'def_role' => 'name'
                          },
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 7,
                            'macro' => ''
                          }
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
                          'text' => 'truc'
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
                      3
                    ],
                    'original_def_cmdname' => 'deffnx'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 7,
                    'macro' => ''
                  },
                  'type' => 'def_line'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'cindex in deff item'
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
                              2
                            ]
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
                          },
                          'type' => 'index_entry_command'
                        },
                        {
                          'text' => '
',
                          'type' => 'empty_line'
                        },
                        {
                          'text' => 'In deff item.
'
                        }
                      ],
                      'type' => 'preformatted'
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
                    'file_name' => '',
                    'line_nr' => 11,
                    'macro' => ''
                  }
                }
              ],
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              }
            },
            {
              'args' => [
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
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'example'
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
            'line_nr' => 1,
            'macro' => ''
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'def_index_element'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'def_index_element'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'extra'}{'def_index_element'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2];

$result_texis{'inter_item_commands_in_def_in_example'} = '@example
@deffn fset @var{i} a g
@c comment before first deffnx

@deffnx Command { log trap1} {}  
@cindex between deffnx
@deffnx cmde2 @b{id @samp{i} ule} truc
@cindex cindex in deff item

In deff item.
@end deffn
@end example
';


$result_texts{'inter_item_commands_in_def_in_example'} = 'fset: i a g

Command: log trap1 
cmde2: id i ule truc

In deff item.
';

$result_errors{'inter_item_commands_in_def_in_example'} = [
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 8,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'inter_item_commands_in_def_in_example'} = {};


$result_indices_sort_strings{'inter_item_commands_in_def_in_example'} = {
  'cp' => [
    'between deffnx',
    'cindex in deff item'
  ],
  'fn' => [
    'i',
    'id i ule',
    'log trap1'
  ]
};



$result_converted{'plaintext'}->{'inter_item_commands_in_def_in_example'} = '      -- fset: I a g

      -- Command: log trap1
      -- cmde2: id i ule truc

          In deff item.
';

1;
