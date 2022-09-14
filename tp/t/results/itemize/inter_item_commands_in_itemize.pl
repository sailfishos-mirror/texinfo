use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'inter_item_commands_in_itemize'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      }
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
      'parent' => {},
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 4,
        'macro' => ''
      }
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
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 7,
                    'macro' => ''
                  },
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
                      'index_ignore_chars' => {},
                      'index_name' => 'cp',
                      'index_type_command' => 'cindex',
                      'node' => {},
                      'number' => 1
                    },
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 9,
                    'macro' => ''
                  },
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
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'ignorable_spaces_after_command'
                },
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
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              }
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 7,
            'macro' => ''
          }
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
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 13,
                    'macro' => ''
                  },
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
                      'index_ignore_chars' => {},
                      'index_name' => 'cp',
                      'index_type_command' => 'cindex',
                      'node' => {},
                      'number' => 2
                    },
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 14,
                    'macro' => ''
                  },
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
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'ignorable_spaces_after_command'
                },
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
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 15,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'ignorable_spaces_after_command'
                },
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
                      'index_ignore_chars' => {},
                      'index_name' => 'cp',
                      'index_type_command' => 'cindex',
                      'node' => {},
                      'number' => 3
                    },
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 16,
                    'macro' => ''
                  },
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
                'item_number' => 2
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 16,
                'macro' => ''
              }
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 18,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 13,
            'macro' => ''
          }
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
                  'parent' => {},
                  'type' => 'command_as_argument_inserted'
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
                          'index_ignore_chars' => {},
                          'index_name' => 'cp',
                          'index_type_command' => 'cindex',
                          'node' => {},
                          'number' => 4
                        },
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 23,
                        'macro' => ''
                      },
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
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'ignorable_spaces_after_command'
                },
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
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 24,
                'macro' => ''
              }
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 25,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 20,
            'macro' => ''
          }
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 5,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[0];
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
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0];
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
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[3];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[2];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[3];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[3];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[2];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'inter_item_commands_in_itemize'}{'contents'}[4];
$result_trees{'inter_item_commands_in_itemize'}{'contents'}[4]{'parent'} = $result_trees{'inter_item_commands_in_itemize'};

$result_texis{'inter_item_commands_in_itemize'} = '@node Top
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


$result_texts{'inter_item_commands_in_itemize'} = 'top
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
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            },
            'structure' => {}
          }
        },
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chapter'
                  },
                  'structure' => {}
                }
              },
              'structure' => {
                'section_level' => 1,
                'section_number' => 1,
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'inter_item_commands_in_itemize'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'inter_item_commands_in_itemize'}{'structure'}{'section_childs'}[0];
$result_sectioning{'inter_item_commands_in_itemize'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'inter_item_commands_in_itemize'}{'structure'}{'section_childs'}[0];
$result_sectioning{'inter_item_commands_in_itemize'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'inter_item_commands_in_itemize'}{'structure'}{'section_childs'}[0];
$result_sectioning{'inter_item_commands_in_itemize'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'inter_item_commands_in_itemize'};

$result_nodes{'inter_item_commands_in_itemize'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  },
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'normalized' => 'chapter'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'inter_item_commands_in_itemize'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'inter_item_commands_in_itemize'};
$result_nodes{'inter_item_commands_in_itemize'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'inter_item_commands_in_itemize'};

$result_menus{'inter_item_commands_in_itemize'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'inter_item_commands_in_itemize'} = [];


$result_floats{'inter_item_commands_in_itemize'} = {};


$result_indices_sort_strings{'inter_item_commands_in_itemize'} = {
  'cp' => [
    'also a cindex in itemize',
    'also a cindex in itemize',
    'index entry right after @item',
    'index entry within itemize'
  ]
};



$result_converted{'plaintext'}->{'inter_item_commands_in_itemize'} = 'top
***

1 chap
******

   − e–mph item

   • i–tem 1
   • i–tem 2

     T–ext before items.
   • bullet item
';


$result_converted{'html_text'}->{'inter_item_commands_in_itemize'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h1 class="top" id="top">top</h1>

<ul class="mini-toc">
<li><a href="#chapter" accesskey="1">chap</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h2 class="chapter" id="chap">1 chap</h2>

<ul class="itemize mark-minus">
<li><a class="index-entry-id" id="index-also-a-cindex-in-itemize"></a>
</li><li>e&ndash;mph item
</li></ul>

<ul class="itemize mark-bullet">
<li><a class="index-entry-id" id="index-index-entry-within-itemize"></a>
</li><li>i&ndash;tem 1
</li><li><a class="index-entry-id" id="index-index-entry-right-after-_0040item"></a>
i&ndash;tem 2
</li></ul>

<ul class="itemize mark-bullet">
<li>T&ndash;ext before items.
<a class="index-entry-id" id="index-also-a-cindex-in-itemize-1"></a>
</li><li>bullet item
</li></ul>
</div>
</div>
';

1;
