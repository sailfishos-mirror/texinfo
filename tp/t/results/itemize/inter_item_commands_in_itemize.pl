use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'inter_item_commands_in_itemize'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'inter_item_commands_in_itemize.info'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'setfilename',
          'extra' => {
            'spaces_before_argument' => ' ',
            'text_arg' => 'inter_item_commands_in_itemize.info'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'parent' => {},
      'type' => 'text_root'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top'
            }
          ],
          'extra' => {
            'spaces_after_argument' => '
'
          },
          'parent' => {},
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
      'contents' => [],
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 3,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'top'
            }
          ],
          'extra' => {
            'spaces_after_argument' => '
'
          },
          'parent' => {},
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'top',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 0,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 4,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'chapter'
            }
          ],
          'extra' => {
            'spaces_after_argument' => '
'
          },
          'parent' => {},
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
      'contents' => [],
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'chapter'
          }
        ],
        'normalized' => 'chapter',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 6,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'chap'
            }
          ],
          'extra' => {
            'spaces_after_argument' => '
'
          },
          'parent' => {},
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'chapter',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'minus',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 9,
                    'macro' => ''
                  },
                  'parent' => {},
                  'type' => 'command_as_argument'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'itemize',
          'contents' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' comment in itemize
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' comment in itemize
'
                    ]
                  },
                  'parent' => {}
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'also a cindex in itemize'
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => '
'
                      },
                      'parent' => {},
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'cindex',
                  'extra' => {
                    'index_entry' => {
                      'command' => {},
                      'content' => [],
                      'content_normalized' => [],
                      'in_code' => 0,
                      'index_at_command' => 'cindex',
                      'index_name' => 'cp',
                      'index_type_command' => 'cindex',
                      'key' => 'also a cindex in itemize',
                      'node' => {},
                      'number' => 1
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 11,
                    'macro' => ''
                  },
                  'parent' => {},
                  'type' => 'index_entry_command'
                }
              ],
              'parent' => {},
              'type' => 'before_item'
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'e--mph item
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1,
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'itemize'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'command_argument' => 'itemize',
                'spaces_before_argument' => ' ',
                'text_arg' => 'itemize'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 13,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'bullet',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 15,
                    'macro' => ''
                  },
                  'parent' => {},
                  'type' => 'command_as_argument'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'itemize',
          'contents' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'index entry within itemize'
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => '
'
                      },
                      'parent' => {},
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'cindex',
                  'extra' => {
                    'index_entry' => {
                      'command' => {},
                      'content' => [],
                      'content_normalized' => [],
                      'in_code' => 0,
                      'index_at_command' => 'cindex',
                      'index_name' => 'cp',
                      'index_type_command' => 'cindex',
                      'key' => 'index entry within itemize',
                      'node' => {},
                      'number' => 2
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 16,
                    'macro' => ''
                  },
                  'parent' => {},
                  'type' => 'index_entry_command'
                }
              ],
              'parent' => {},
              'type' => 'before_item'
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'i--tem 1
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1,
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 17,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'index entry right after '
                        },
                        {
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'item'
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => '
'
                      },
                      'parent' => {},
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'cindex',
                  'extra' => {
                    'index_entry' => {
                      'command' => {},
                      'content' => [],
                      'content_normalized' => [],
                      'in_code' => 0,
                      'index_at_command' => 'cindex',
                      'index_name' => 'cp',
                      'index_type_command' => 'cindex',
                      'key' => 'index entry right after @item',
                      'node' => {},
                      'number' => 3
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 18,
                    'macro' => ''
                  },
                  'parent' => {},
                  'type' => 'index_entry_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'i--tem 2
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 2,
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 18,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'itemize'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'command_argument' => 'itemize',
                'spaces_before_argument' => ' ',
                'text_arg' => 'itemize'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 20,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 15,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'cmdname' => 'bullet',
              'contents' => [],
              'parent' => {},
              'type' => 'command_as_argument_inserted'
            }
          ],
          'cmdname' => 'itemize',
          'contents' => [
            {
              'extra' => {
                'command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' comment in itemize
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' comment in itemize
'
                    ]
                  },
                  'parent' => {}
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'T--ext before items.
'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'also a cindex in itemize'
                            }
                          ],
                          'extra' => {
                            'spaces_after_argument' => '
'
                          },
                          'parent' => {},
                          'type' => 'line_arg'
                        }
                      ],
                      'cmdname' => 'cindex',
                      'extra' => {
                        'index_entry' => {
                          'command' => {},
                          'content' => [],
                          'content_normalized' => [],
                          'in_code' => 0,
                          'index_at_command' => 'cindex',
                          'index_name' => 'cp',
                          'index_type_command' => 'cindex',
                          'key' => 'also a cindex in itemize',
                          'node' => {},
                          'number' => 4
                        },
                        'spaces_before_argument' => ' '
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 25,
                        'macro' => ''
                      },
                      'parent' => {},
                      'type' => 'index_entry_command'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'parent' => {},
              'type' => 'before_item'
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'bullet item
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1,
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 26,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'itemize'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'command_argument' => 'itemize',
                'spaces_before_argument' => ' ',
                'text_arg' => 'itemize'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 27,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'end_command' => {}
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 22,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 1,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 7,
        'macro' => ''
      },
      'number' => 1,
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'};
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[1]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_itemize'};
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[2];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[2];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_itemize'};
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[3]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[3];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_itemize'};
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[3];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[3];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[3];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[3];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[3];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'extra'}{'command'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[3];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[2];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[3]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[3];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[3];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'parent'} = $result_trees{'inter_item_commands_in_itemize'};

$result_texis{'inter_item_commands_in_itemize'} = '@setfilename inter_item_commands_in_itemize.info

@node Top
@top top

@node chapter
@chapter chap

@itemize @minus
@c comment in itemize
@cindex also a cindex in itemize
@item e--mph item
@end itemize

@itemize @bullet
@cindex index entry within itemize
@item i--tem 1
@item @cindex index entry right after @@item
i--tem 2
@end itemize

@itemize
@c comment in itemize
T--ext before items.
@cindex also a cindex in itemize
@item bullet item
@end itemize
';


$result_texts{'inter_item_commands_in_itemize'} = '
top
***

1 chap
******

e-mph item

i-tem 1
i-tem 2

T-ext before items.
bullet item
';

$result_sectioning{'inter_item_commands_in_itemize'} = {
  'level' => -1,
  'section_childs' => [
    {
      'cmdname' => 'top',
      'extra' => {
        'associated_node' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'Top',
            'spaces_before_argument' => ' '
          }
        },
        'spaces_before_argument' => ' '
      },
      'level' => 0,
      'section_childs' => [
        {
          'cmdname' => 'chapter',
          'extra' => {
            'associated_node' => {
              'cmdname' => 'node',
              'extra' => {
                'normalized' => 'chapter',
                'spaces_before_argument' => ' '
              }
            },
            'spaces_before_argument' => ' '
          },
          'level' => 1,
          'number' => 1,
          'section_up' => {},
          'toplevel_prev' => {},
          'toplevel_up' => {}
        }
      ],
      'section_up' => {}
    }
  ]
};
$result_sectioning{'inter_item_commands_in_itemize'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'inter_item_commands_in_itemize'}{'section_childs'}[0];
$result_sectioning{'inter_item_commands_in_itemize'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'inter_item_commands_in_itemize'}{'section_childs'}[0];
$result_sectioning{'inter_item_commands_in_itemize'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'inter_item_commands_in_itemize'}{'section_childs'}[0];
$result_sectioning{'inter_item_commands_in_itemize'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'inter_item_commands_in_itemize'};

$result_nodes{'inter_item_commands_in_itemize'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 0
    },
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'node_next' => {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'chapter',
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'level' => 1,
        'number' => 1
      },
      'normalized' => 'chapter',
      'spaces_before_argument' => ' '
    },
    'node_prev' => {},
    'node_up' => {}
  }
};
$result_nodes{'inter_item_commands_in_itemize'}{'node_next'}{'node_prev'} = $result_nodes{'inter_item_commands_in_itemize'};
$result_nodes{'inter_item_commands_in_itemize'}{'node_next'}{'node_up'} = $result_nodes{'inter_item_commands_in_itemize'};

$result_menus{'inter_item_commands_in_itemize'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'inter_item_commands_in_itemize'} = [];


$result_floats{'inter_item_commands_in_itemize'} = {};



$result_converted{'plaintext'}->{'inter_item_commands_in_itemize'} = 'top
***

1 chap
******

   - e-mph item

   * i-tem 1
   * i-tem 2

     T-ext before items.
   * bullet item
';


$result_converted{'html_text'}->{'inter_item_commands_in_itemize'} = '
<div class="top" id="Top">
<div class="header">
<p>
 &nbsp; </p>
</div>
<span id="top"></span><h1 class="top">top</h1>

<ul class="section-toc">
<li><a href="#chapter" accesskey="1">chap</a></li>
</ul>
<hr>
<div class="chapter" id="chapter">
<div class="header">
<p>
 &nbsp; </p>
</div>
<span id="chap"></span><h2 class="chapter">1 chap</h2>

<ul class="no-bullet">
<li><span id="index-also-a-cindex-in-itemize"></span>
</li><li>- e&ndash;mph item
</li></ul>

<ul>
<li><span id="index-index-entry-within-itemize"></span>
</li><li> i&ndash;tem 1
</li><li> <span id="index-index-entry-right-after-_0040item"></span>
i&ndash;tem 2
</li></ul>

<ul>
<li>T&ndash;ext before items.
<span id="index-also-a-cindex-in-itemize-1"></span>
</li><li> bullet item
</li></ul>
</div>
</div>
';

1;
