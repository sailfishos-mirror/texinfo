use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'inter_item_commands_in_enumerate'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'inter_item_commands_in_enumerate.info'
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
            'text_arg' => 'inter_item_commands_in_enumerate.info'
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
          'cmdname' => 'enumerate',
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
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' comment before first item in enumerate
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'comment',
                  'extra' => {
                    'misc_args' => [
                      ' comment before first item in enumerate
'
                    ]
                  },
                  'parent' => {}
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
                      'text' => 'e--numerate
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
                      'text' => 'enumerate'
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
                'command_argument' => 'enumerate',
                'spaces_before_argument' => ' ',
                'text_arg' => 'enumerate'
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
            'end_command' => {},
            'enumerate_specification' => '1'
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
          'cmdname' => 'enumerate',
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
                          'parent' => {},
                          'text' => 'index inter in enumerate between lines'
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
                      'key' => 'index inter in enumerate between lines',
                      'node' => {},
                      'number' => 1
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 17,
                    'macro' => ''
                  },
                  'parent' => {},
                  'type' => 'index_entry_command'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
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
                      'text' => 'enumerate item
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
                'line_nr' => 19,
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
                      'text' => 'enumerate'
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
                'command_argument' => 'enumerate',
                'spaces_before_argument' => ' ',
                'text_arg' => 'enumerate'
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
            'end_command' => {},
            'enumerate_specification' => '1'
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
          'cmdname' => 'enumerate',
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
                          'parent' => {},
                          'text' => 'index inter in enumerate after line'
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
                      'key' => 'index inter in enumerate after line',
                      'node' => {},
                      'number' => 2
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 24,
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
                      'text' => 'enumerate item
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
                'line_nr' => 25,
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
                      'text' => 'enumerate'
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
                'command_argument' => 'enumerate',
                'spaces_before_argument' => ' ',
                'text_arg' => 'enumerate'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 26,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'enumerate_specification' => '1'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 22,
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
          'cmdname' => 'enumerate',
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'index inter in enumerate before line'
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
                      'key' => 'index inter in enumerate before line',
                      'node' => {},
                      'number' => 3
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 29,
                    'macro' => ''
                  },
                  'parent' => {},
                  'type' => 'index_entry_command'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
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
                      'text' => 'enumerate item
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
                'line_nr' => 31,
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
                      'text' => 'enumerate'
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
                'command_argument' => 'enumerate',
                'spaces_before_argument' => ' ',
                'text_arg' => 'enumerate'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 32,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'enumerate_specification' => '1'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 28,
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
          'cmdname' => 'enumerate',
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
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Title
'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'cindex'
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
                          'key' => 'cindex',
                          'node' => {},
                          'number' => 4
                        },
                        'spaces_before_argument' => ' '
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 36,
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
                      'text' => 'enum
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
                'line_nr' => 37,
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
                      'text' => 'enumerate'
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
                'command_argument' => 'enumerate',
                'spaces_before_argument' => ' ',
                'text_arg' => 'enumerate'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 38,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'enumerate_specification' => '1'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 34,
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
          'cmdname' => 'enumerate',
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'first idx'
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
                      'key' => 'first idx',
                      'node' => {},
                      'number' => 5
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 41,
                    'macro' => ''
                  },
                  'parent' => {},
                  'type' => 'index_entry_command'
                },
                {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' comment
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'comment',
                  'extra' => {
                    'misc_args' => [
                      ' comment
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
                          'text' => 'sedond idx'
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
                      'key' => 'sedond idx',
                      'node' => {},
                      'number' => 6
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 43,
                    'macro' => ''
                  },
                  'parent' => {},
                  'type' => 'index_entry_command'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'another'
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
                      'key' => 'another',
                      'node' => {},
                      'number' => 7
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 44,
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
                      'text' => 'enum
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
                'line_nr' => 45,
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
                      'text' => 'enumerate'
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
                'command_argument' => 'enumerate',
                'spaces_before_argument' => ' ',
                'text_arg' => 'enumerate'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 46,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'enumerate_specification' => '1'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 40,
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
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'};
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[1]{'args'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'};
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[2];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[2];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'};
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[3]{'args'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'};
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'args'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'contents'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'command'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[2];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'args'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'extra'}{'command'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'contents'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[2];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[3]{'args'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'extra'}{'command'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[2]{'contents'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[2];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[3]{'args'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[8]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'extra'}{'command'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[2]{'contents'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[2];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[3]{'args'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[9]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[10]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'extra'}{'command'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[2];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[2];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[2]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[2]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[3]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[3]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[3]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'contents'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[2];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[3]{'args'}[0];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'contents'}[3];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[11]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'contents'}[12]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4];
$result_trees{'inter_item_commands_in_enumerate'}{'contents'}[4]{'parent'} = $result_trees{'inter_item_commands_in_enumerate'};

$result_texis{'inter_item_commands_in_enumerate'} = '@setfilename inter_item_commands_in_enumerate.info

@node Top
@top top

@node chapter
@chapter chap

@enumerate

@comment comment before first item in enumerate
@item e--numerate
@end enumerate

@enumerate

@cindex index inter in enumerate between lines

@item enumerate item
@end enumerate

@enumerate

@cindex index inter in enumerate after line
@item enumerate item
@end enumerate

@enumerate
@cindex index inter in enumerate before line

@item enumerate item
@end enumerate

@enumerate
Title
@cindex cindex
@item enum
@end enumerate

@enumerate
@cindex first idx
@comment comment
@cindex sedond idx
@cindex another
@item enum
@end enumerate

';


$result_texts{'inter_item_commands_in_enumerate'} = '
top
***

1 chap
******


1. e-numerate



1. enumerate item


1. enumerate item


1. enumerate item

Title
1. enum

1. enum

';

$result_sectioning{'inter_item_commands_in_enumerate'} = {
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
$result_sectioning{'inter_item_commands_in_enumerate'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'inter_item_commands_in_enumerate'}{'section_childs'}[0];
$result_sectioning{'inter_item_commands_in_enumerate'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'inter_item_commands_in_enumerate'}{'section_childs'}[0];
$result_sectioning{'inter_item_commands_in_enumerate'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'inter_item_commands_in_enumerate'}{'section_childs'}[0];
$result_sectioning{'inter_item_commands_in_enumerate'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'inter_item_commands_in_enumerate'};

$result_nodes{'inter_item_commands_in_enumerate'} = {
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
$result_nodes{'inter_item_commands_in_enumerate'}{'node_next'}{'node_prev'} = $result_nodes{'inter_item_commands_in_enumerate'};
$result_nodes{'inter_item_commands_in_enumerate'}{'node_next'}{'node_up'} = $result_nodes{'inter_item_commands_in_enumerate'};

$result_menus{'inter_item_commands_in_enumerate'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'inter_item_commands_in_enumerate'} = [];


$result_floats{'inter_item_commands_in_enumerate'} = {};



$result_converted{'plaintext'}->{'inter_item_commands_in_enumerate'} = 'top
***

1 chap
******

  1. e-numerate

  1. enumerate item

  1. enumerate item

  1. enumerate item

     Title
  1. enum

  1. enum

';


$result_converted{'html_text'}->{'inter_item_commands_in_enumerate'} = '
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

<ol>
<li> e&ndash;numerate
</li></ol>

<ol>
<li>
<span id="index-index-inter-in-enumerate-between-lines"></span>

</li><li> enumerate item
</li></ol>

<ol>
<li>
<span id="index-index-inter-in-enumerate-after-line"></span>
</li><li> enumerate item
</li></ol>

<ol>
<li><span id="index-index-inter-in-enumerate-before-line"></span>

</li><li> enumerate item
</li></ol>

<ol>
<li>Title
<span id="index-cindex"></span>
</li><li> enum
</li></ol>

<ol>
<li><span id="index-first-idx"></span>
<span id="index-sedond-idx"></span>
<span id="index-another"></span>
</li><li> enum
</li></ol>

</div>
</div>
';

1;
