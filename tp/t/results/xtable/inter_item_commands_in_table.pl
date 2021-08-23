use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'inter_item_commands_in_table'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'inter_item_commands_in_table.info'
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
            'text_arg' => 'inter_item_commands_in_table.info'
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
                  'cmdname' => 'code',
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
          'cmdname' => 'vtable',
          'contents' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' comment in table
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' comment in table
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
              'contents' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'acode--b'
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
                      'cmdname' => 'item',
                      'extra' => {
                        'index_entry' => {
                          'command' => {},
                          'content' => [],
                          'content_normalized' => [],
                          'in_code' => 1,
                          'index_at_command' => 'item',
                          'index_name' => 'vr',
                          'index_type_command' => 'vtable',
                          'key' => 'acode--b',
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
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_term'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'l--ine
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_item'
                }
              ],
              'parent' => {},
              'type' => 'table_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'vtable'
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
                'command_argument' => 'vtable',
                'spaces_before_argument' => ' ',
                'text_arg' => 'vtable'
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
                  'cmdname' => 'asis',
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
          'cmdname' => 'vtable',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'aasis--b'
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
                      'cmdname' => 'item',
                      'extra' => {
                        'index_entry' => {
                          'command' => {},
                          'content' => [],
                          'content_normalized' => [],
                          'in_code' => 1,
                          'index_at_command' => 'item',
                          'index_name' => 'vr',
                          'index_type_command' => 'vtable',
                          'key' => 'aasis--b',
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
                      'parent' => {}
                    },
                    {
                      'contents' => [
                        {
                          'args' => [
                            {
                              'parent' => {},
                              'text' => ' comment between item and itemx
',
                              'type' => 'misc_arg'
                            }
                          ],
                          'cmdname' => 'c',
                          'extra' => {
                            'misc_args' => [
                              ' comment between item and itemx
'
                            ]
                          },
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'inter_item'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'b'
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
                      'cmdname' => 'itemx',
                      'extra' => {
                        'index_entry' => {
                          'command' => {},
                          'content' => [],
                          'content_normalized' => [],
                          'in_code' => 1,
                          'index_at_command' => 'itemx',
                          'index_name' => 'vr',
                          'index_type_command' => 'vtable',
                          'key' => 'b',
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
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_term'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'l--ine
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_item'
                }
              ],
              'parent' => {},
              'type' => 'table_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'vtable'
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
                'command_argument' => 'vtable',
                'spaces_before_argument' => ' ',
                'text_arg' => 'vtable'
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
              'contents' => [
                {
                  'cmdname' => 'var',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 22,
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
          'cmdname' => 'ftable',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'avar--b'
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
                      'cmdname' => 'item',
                      'extra' => {
                        'index_entry' => {
                          'command' => {},
                          'content' => [],
                          'content_normalized' => [],
                          'in_code' => 1,
                          'index_at_command' => 'item',
                          'index_name' => 'fn',
                          'index_type_command' => 'ftable',
                          'key' => 'avar--b',
                          'node' => {},
                          'number' => 1
                        },
                        'spaces_before_argument' => ' '
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 23,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'contents' => [
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'index entry between item and itemx'
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
                              'key' => 'index entry between item and itemx',
                              'node' => {},
                              'number' => 1
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
                        },
                        {
                          'args' => [
                            {
                              'parent' => {},
                              'text' => ' and a comment
',
                              'type' => 'misc_arg'
                            }
                          ],
                          'cmdname' => 'c',
                          'extra' => {
                            'misc_args' => [
                              ' and a comment
'
                            ]
                          },
                          'parent' => {}
                        },
                        {
                          'args' => [
                            {
                              'parent' => {},
                              'text' => ' and another comment
',
                              'type' => 'misc_arg'
                            }
                          ],
                          'cmdname' => 'comment',
                          'extra' => {
                            'misc_args' => [
                              ' and another comment
'
                            ]
                          },
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'inter_item'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'b'
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
                      'cmdname' => 'itemx',
                      'extra' => {
                        'index_entry' => {
                          'command' => {},
                          'content' => [],
                          'content_normalized' => [],
                          'in_code' => 1,
                          'index_at_command' => 'itemx',
                          'index_name' => 'fn',
                          'index_type_command' => 'ftable',
                          'key' => 'b',
                          'node' => {},
                          'number' => 2
                        },
                        'spaces_before_argument' => ' '
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 27,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_term'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'l--ine
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_item'
                }
              ],
              'parent' => {},
              'type' => 'table_entry'
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
                              'parent' => {},
                              'text' => 'c'
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
                      'cmdname' => 'item',
                      'extra' => {
                        'index_entry' => {
                          'command' => {},
                          'content' => [],
                          'content_normalized' => [],
                          'in_code' => 1,
                          'index_at_command' => 'item',
                          'index_name' => 'fn',
                          'index_type_command' => 'ftable',
                          'key' => 'c',
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
                      'parent' => {}
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
                              'text' => ' comment between lines
',
                              'type' => 'misc_arg'
                            }
                          ],
                          'cmdname' => 'c',
                          'extra' => {
                            'misc_args' => [
                              ' comment between lines
'
                            ]
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
                      'type' => 'inter_item'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'd'
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
                      'cmdname' => 'itemx',
                      'extra' => {
                        'index_entry' => {
                          'command' => {},
                          'content' => [],
                          'content_normalized' => [],
                          'in_code' => 1,
                          'index_at_command' => 'itemx',
                          'index_name' => 'fn',
                          'index_type_command' => 'ftable',
                          'key' => 'd',
                          'node' => {},
                          'number' => 4
                        },
                        'spaces_before_argument' => ' '
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 33,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_term'
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
                          'text' => ' comment at end
',
                          'type' => 'misc_arg'
                        }
                      ],
                      'cmdname' => 'c',
                      'extra' => {
                        'misc_args' => [
                          ' comment at end
'
                        ]
                      },
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_item'
                }
              ],
              'parent' => {},
              'type' => 'table_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'ftable'
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
                'command_argument' => 'ftable',
                'spaces_before_argument' => ' ',
                'text_arg' => 'ftable'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 36,
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
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'code',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 38,
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
          'cmdname' => 'table',
          'contents' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'cindex in table'
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
                      'key' => 'cindex in table',
                      'node' => {},
                      'number' => 2
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 39,
                    'macro' => ''
                  },
                  'parent' => {},
                  'type' => 'index_entry_command'
                },
                {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' comment in table
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' comment in table
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
              'contents' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'abb'
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
                      'cmdname' => 'item',
                      'extra' => {
                        'spaces_before_argument' => ' '
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 41,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_term'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'l--ine
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_item'
                }
              ],
              'parent' => {},
              'type' => 'table_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'table'
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
                'command_argument' => 'table',
                'spaces_before_argument' => ' ',
                'text_arg' => 'table'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 43,
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
            'line_nr' => 38,
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
                  'cmdname' => 'code',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 45,
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
          'cmdname' => 'table',
          'contents' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'cindex in table'
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
                      'key' => 'cindex in table',
                      'node' => {},
                      'number' => 3
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 46,
                    'macro' => ''
                  },
                  'parent' => {},
                  'type' => 'index_entry_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Texte before first item.
'
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
              'contents' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'abb'
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
                      'cmdname' => 'item',
                      'extra' => {
                        'spaces_before_argument' => ' '
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 48,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_term'
                }
              ],
              'parent' => {},
              'type' => 'table_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'table'
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
                'command_argument' => 'table',
                'spaces_before_argument' => ' ',
                'text_arg' => 'table'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 49,
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
            'line_nr' => 45,
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
                  'cmdname' => 'samp',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 51,
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
          'cmdname' => 'table',
          'contents' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'samp cindex in table'
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
                      'key' => 'samp cindex in table',
                      'node' => {},
                      'number' => 4
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 52,
                    'macro' => ''
                  },
                  'parent' => {},
                  'type' => 'index_entry_command'
                },
                {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' samp comment in table
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' samp comment in table
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
              'contents' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'asamp--bb'
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
                      'cmdname' => 'item',
                      'extra' => {
                        'spaces_before_argument' => ' '
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 54,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_term'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'l--ine samp
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_item'
                }
              ],
              'parent' => {},
              'type' => 'table_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'table'
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
                'command_argument' => 'table',
                'spaces_before_argument' => ' ',
                'text_arg' => 'table'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 56,
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
            'line_nr' => 51,
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
                  'cmdname' => 'samp',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 58,
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
          'cmdname' => 'table',
          'contents' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'samp cindex in table'
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
                      'key' => 'samp cindex in table',
                      'node' => {},
                      'number' => 5
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 59,
                    'macro' => ''
                  },
                  'parent' => {},
                  'type' => 'index_entry_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Texte before first item samp.
'
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
              'contents' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'asamp--bb'
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
                      'cmdname' => 'item',
                      'extra' => {
                        'spaces_before_argument' => ' '
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 61,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_term'
                }
              ],
              'parent' => {},
              'type' => 'table_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'table'
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
                'command_argument' => 'table',
                'spaces_before_argument' => ' ',
                'text_arg' => 'table'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 62,
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
            'line_nr' => 58,
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
                  'cmdname' => 'samp',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 64,
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
          'cmdname' => 'table',
          'contents' => [
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
                          'text' => 'cindex between lines'
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
                      'key' => 'cindex between lines',
                      'node' => {},
                      'number' => 6
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 66,
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
              'contents' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'asamp--bb1'
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
                      'cmdname' => 'item',
                      'extra' => {
                        'spaces_before_argument' => ' '
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 68,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_term'
                }
              ],
              'parent' => {},
              'type' => 'table_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'table'
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
                'command_argument' => 'table',
                'spaces_before_argument' => ' ',
                'text_arg' => 'table'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 69,
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
            'line_nr' => 64,
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
                  'cmdname' => 'samp',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 71,
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
          'cmdname' => 'table',
          'contents' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'cindex before line'
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
                      'key' => 'cindex before line',
                      'node' => {},
                      'number' => 7
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 72,
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
              'contents' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'asamp--bb2'
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
                      'cmdname' => 'item',
                      'extra' => {
                        'spaces_before_argument' => ' '
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 74,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_term'
                }
              ],
              'parent' => {},
              'type' => 'table_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'table'
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
                'command_argument' => 'table',
                'spaces_before_argument' => ' ',
                'text_arg' => 'table'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 75,
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
            'line_nr' => 71,
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
                  'cmdname' => 'samp',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 77,
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
          'cmdname' => 'table',
          'contents' => [
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
                          'text' => 'cindex after line'
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
                      'key' => 'cindex after line',
                      'node' => {},
                      'number' => 8
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 79,
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
              'contents' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'asamp--bb2'
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
                      'cmdname' => 'item',
                      'extra' => {
                        'spaces_before_argument' => ' '
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 80,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_term'
                }
              ],
              'parent' => {},
              'type' => 'table_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'table'
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
                'command_argument' => 'table',
                'spaces_before_argument' => ' ',
                'text_arg' => 'table'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 81,
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
            'line_nr' => 77,
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
                  'cmdname' => 'samp',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 83,
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
          'cmdname' => 'table',
          'contents' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'cindex first'
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
                      'key' => 'cindex first',
                      'node' => {},
                      'number' => 9
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 84,
                    'macro' => ''
                  },
                  'parent' => {},
                  'type' => 'index_entry_command'
                },
                {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' commant
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' commant
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
                          'text' => 'second'
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
                      'key' => 'second',
                      'node' => {},
                      'number' => 10
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 86,
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
                          'text' => 'third'
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
                      'key' => 'third',
                      'node' => {},
                      'number' => 11
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 87,
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
              'contents' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'asamp--bb2'
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
                      'cmdname' => 'item',
                      'extra' => {
                        'spaces_before_argument' => ' '
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 88,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_term'
                }
              ],
              'parent' => {},
              'type' => 'table_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'table'
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
                'command_argument' => 'table',
                'spaces_before_argument' => ' ',
                'text_arg' => 'table'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 89,
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
            'line_nr' => 83,
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
$result_trees{'inter_item_commands_in_table'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[1]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'inter_item_commands_in_table'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'inter_item_commands_in_table'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[3]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'inter_item_commands_in_table'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'inter_item_commands_in_table'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_table'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[8]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[9]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[10]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[11]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[12]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[13]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[14]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[15]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[16]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[17]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[18]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[19]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[20]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[3]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[3]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[3]{'extra'}{'index_entry'}{'node'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[3];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[21]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[22]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[23]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'parent'} = $result_trees{'inter_item_commands_in_table'};

$result_texis{'inter_item_commands_in_table'} = '@setfilename inter_item_commands_in_table.info

@node Top
@top top

@node chapter
@chapter chap

@vtable @code
@c comment in table
@item acode--b
l--ine
@end vtable

@vtable @asis
@item aasis--b
@c comment between item and itemx
@itemx b
l--ine
@end vtable

@ftable @var
@item avar--b
@cindex index entry between item and itemx
@c and a comment
@comment and another comment
@itemx b
l--ine
@item c

@c comment between lines

@itemx d

@c comment at end
@end ftable

@table @code
@cindex cindex in table 
@c comment in table
@item abb
l--ine
@end table

@table @code
@cindex cindex in table 
Texte before first item.
@item abb
@end table

@table @samp
@cindex samp cindex in table 
@c samp comment in table
@item asamp--bb
l--ine samp
@end table

@table @samp
@cindex samp cindex in table 
Texte before first item samp.
@item asamp--bb
@end table

@table @samp 

@cindex cindex between lines

@item asamp--bb1
@end table

@table @samp 
@cindex cindex before line

@item asamp--bb2
@end table

@table @samp 

@cindex cindex after line
@item asamp--bb2
@end table

@table @samp 
@cindex cindex first
@c commant
@cindex second
@cindex third
@item asamp--bb2
@end table


';


$result_texts{'inter_item_commands_in_table'} = '
top
***

1 chap
******

acode-b
l-ine

aasis-b
b
l-ine

avar-b
b
l-ine
c


d


abb
l-ine

Texte before first item.
abb

asamp-bb
l-ine samp

Texte before first item samp.
asamp-bb



asamp-bb1


asamp-bb2


asamp-bb2

asamp-bb2


';

$result_sectioning{'inter_item_commands_in_table'} = {
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
$result_sectioning{'inter_item_commands_in_table'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'inter_item_commands_in_table'}{'section_childs'}[0];
$result_sectioning{'inter_item_commands_in_table'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'inter_item_commands_in_table'}{'section_childs'}[0];
$result_sectioning{'inter_item_commands_in_table'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'inter_item_commands_in_table'}{'section_childs'}[0];
$result_sectioning{'inter_item_commands_in_table'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'inter_item_commands_in_table'};

$result_nodes{'inter_item_commands_in_table'} = {
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
$result_nodes{'inter_item_commands_in_table'}{'node_next'}{'node_prev'} = $result_nodes{'inter_item_commands_in_table'};
$result_nodes{'inter_item_commands_in_table'}{'node_next'}{'node_up'} = $result_nodes{'inter_item_commands_in_table'};

$result_menus{'inter_item_commands_in_table'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'inter_item_commands_in_table'} = [];


$result_floats{'inter_item_commands_in_table'} = {};



$result_converted{'plaintext'}->{'inter_item_commands_in_table'} = 'top
***

1 chap
******

\'acode--b\'
     l-ine

aasis-b
b
     l-ine

AVAR-B
B
     l-ine
C

D

\'abb\'
     l-ine

     Texte before first item.
\'abb\'

\'asamp--bb\'
     l-ine samp

     Texte before first item samp.
\'asamp--bb\'

\'asamp--bb1\'

\'asamp--bb2\'

\'asamp--bb2\'

\'asamp--bb2\'

';


$result_converted{'html_text'}->{'inter_item_commands_in_table'} = '
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

<dl compact="compact">
<dt id=\'index-acode_002d_002db\'><span><code>acode--b</code><a href=\'#index-acode_002d_002db\' class=\'copiable-anchor\'> &para;</a></span></dt>
<dd><p>l&ndash;ine
</p></dd>
</dl>

<dl compact="compact">
<dt id=\'index-aasis_002d_002db\'><span>aasis&ndash;b<a href=\'#index-aasis_002d_002db\' class=\'copiable-anchor\'> &para;</a></span></dt>
<dt id=\'index-b-1\'><span>b<a href=\'#index-b-1\' class=\'copiable-anchor\'> &para;</a></span></dt>
<dd><p>l&ndash;ine
</p></dd>
</dl>

<dl compact="compact">
<dt id=\'index-avar_002d_002db\'><span><var>avar&ndash;b</var><a href=\'#index-avar_002d_002db\' class=\'copiable-anchor\'> &para;</a></span></dt>
<dd><span id="index-index-entry-between-item-and-itemx"></span>
</dd>
<dt id=\'index-b\'><span><var>b</var><a href=\'#index-b\' class=\'copiable-anchor\'> &para;</a></span></dt>
<dd><p>l&ndash;ine
</p></dd>
<dt id=\'index-c\'><span><var>c</var><a href=\'#index-c\' class=\'copiable-anchor\'> &para;</a></span></dt>
<dt id=\'index-d\'><span><var>d</var><a href=\'#index-d\' class=\'copiable-anchor\'> &para;</a></span></dt>
</dl>

<dl compact="compact">
<dd><span id="index-cindex-in-table"></span>
</dd>
<dt><span><code>abb</code></span></dt>
<dd><p>l&ndash;ine
</p></dd>
</dl>

<dl compact="compact">
<dd><span id="index-cindex-in-table-1"></span>
<p>Texte before first item.
</p></dd>
<dt><span><code>abb</code></span></dt>
</dl>

<dl compact="compact">
<dd><span id="index-samp-cindex-in-table"></span>
</dd>
<dt><span>&lsquo;<samp>asamp--bb</samp>&rsquo;</span></dt>
<dd><p>l&ndash;ine samp
</p></dd>
</dl>

<dl compact="compact">
<dd><span id="index-samp-cindex-in-table-1"></span>
<p>Texte before first item samp.
</p></dd>
<dt><span>&lsquo;<samp>asamp--bb</samp>&rsquo;</span></dt>
</dl>

<dl compact="compact">
<dd>
<span id="index-cindex-between-lines"></span>

</dd>
<dt><span>&lsquo;<samp>asamp--bb1</samp>&rsquo;</span></dt>
</dl>

<dl compact="compact">
<dd><span id="index-cindex-before-line"></span>

</dd>
<dt><span>&lsquo;<samp>asamp--bb2</samp>&rsquo;</span></dt>
</dl>

<dl compact="compact">
<dd>
<span id="index-cindex-after-line"></span>
</dd>
<dt><span>&lsquo;<samp>asamp--bb2</samp>&rsquo;</span></dt>
</dl>

<dl compact="compact">
<dd><span id="index-cindex-first"></span>
<span id="index-second"></span>
<span id="index-third"></span>
</dd>
<dt><span>&lsquo;<samp>asamp--bb2</samp>&rsquo;</span></dt>
</dl>


</div>
</div>
';


$result_converted{'xml'}->{'inter_item_commands_in_table'} = '<setfilename file="inter_item_commands_in_table.info" spaces=" ">inter_item_commands_in_table.info</setfilename>

<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node name="chapter" spaces=" "><nodename>chapter</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chap</sectiontitle>

<vtable commandarg="code" spaces=" " endspaces=" ">
<beforefirstitem><!-- c comment in table -->
</beforefirstitem><tableentry><tableterm><item spaces=" "><itemformat command="code"><indexterm index="vr" number="1">acode--b</indexterm>acode--b</itemformat></item>
</tableterm><tableitem><para>l&textndash;ine
</para></tableitem></tableentry></vtable>

<vtable commandarg="asis" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="asis"><indexterm index="vr" number="2">aasis--b</indexterm>aasis&textndash;b</itemformat></item>
<!-- c comment between item and itemx -->
<itemx spaces=" "><itemformat command="asis"><indexterm index="vr" number="3">b</indexterm>b</itemformat></itemx>
</tableterm><tableitem><para>l&textndash;ine
</para></tableitem></tableentry></vtable>

<ftable commandarg="var" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="var"><indexterm index="fn" number="1">avar--b</indexterm>avar&textndash;b</itemformat></item>
<cindex index="cp" spaces=" "><indexterm index="cp" number="1">index entry between item and itemx</indexterm></cindex>
<!-- c and a comment -->
<!-- comment and another comment -->
<itemx spaces=" "><itemformat command="var"><indexterm index="fn" number="2">b</indexterm>b</itemformat></itemx>
</tableterm><tableitem><para>l&textndash;ine
</para></tableitem></tableentry><tableentry><tableterm><item spaces=" "><itemformat command="var"><indexterm index="fn" number="3">c</indexterm>c</itemformat></item>

<!-- c comment between lines -->

<itemx spaces=" "><itemformat command="var"><indexterm index="fn" number="4">d</indexterm>d</itemformat></itemx>
</tableterm><tableitem>
<!-- c comment at end -->
</tableitem></tableentry></ftable>

<table commandarg="code" spaces=" " endspaces=" ">
<beforefirstitem><cindex index="cp" spaces=" "><indexterm index="cp" number="2">cindex in table</indexterm></cindex>
<!-- c comment in table -->
</beforefirstitem><tableentry><tableterm><item spaces=" "><itemformat command="code">abb</itemformat></item>
</tableterm><tableitem><para>l&textndash;ine
</para></tableitem></tableentry></table>

<table commandarg="code" spaces=" " endspaces=" ">
<beforefirstitem><cindex index="cp" spaces=" "><indexterm index="cp" number="3">cindex in table</indexterm></cindex>
<para>Texte before first item.
</para></beforefirstitem><tableentry><tableterm><item spaces=" "><itemformat command="code">abb</itemformat></item>
</tableterm></tableentry></table>

<table commandarg="samp" spaces=" " endspaces=" ">
<beforefirstitem><cindex index="cp" spaces=" "><indexterm index="cp" number="4">samp cindex in table</indexterm></cindex>
<!-- c samp comment in table -->
</beforefirstitem><tableentry><tableterm><item spaces=" "><itemformat command="samp">asamp--bb</itemformat></item>
</tableterm><tableitem><para>l&textndash;ine samp
</para></tableitem></tableentry></table>

<table commandarg="samp" spaces=" " endspaces=" ">
<beforefirstitem><cindex index="cp" spaces=" "><indexterm index="cp" number="5">samp cindex in table</indexterm></cindex>
<para>Texte before first item samp.
</para></beforefirstitem><tableentry><tableterm><item spaces=" "><itemformat command="samp">asamp--bb</itemformat></item>
</tableterm></tableentry></table>

<table commandarg="samp" spaces=" " endspaces=" "> 
<beforefirstitem>
<cindex index="cp" spaces=" "><indexterm index="cp" number="6">cindex between lines</indexterm></cindex>

</beforefirstitem><tableentry><tableterm><item spaces=" "><itemformat command="samp">asamp--bb1</itemformat></item>
</tableterm></tableentry></table>

<table commandarg="samp" spaces=" " endspaces=" "> 
<beforefirstitem><cindex index="cp" spaces=" "><indexterm index="cp" number="7">cindex before line</indexterm></cindex>

</beforefirstitem><tableentry><tableterm><item spaces=" "><itemformat command="samp">asamp--bb2</itemformat></item>
</tableterm></tableentry></table>

<table commandarg="samp" spaces=" " endspaces=" "> 
<beforefirstitem>
<cindex index="cp" spaces=" "><indexterm index="cp" number="8">cindex after line</indexterm></cindex>
</beforefirstitem><tableentry><tableterm><item spaces=" "><itemformat command="samp">asamp--bb2</itemformat></item>
</tableterm></tableentry></table>

<table commandarg="samp" spaces=" " endspaces=" "> 
<beforefirstitem><cindex index="cp" spaces=" "><indexterm index="cp" number="9">cindex first</indexterm></cindex>
<!-- c commant -->
<cindex index="cp" spaces=" "><indexterm index="cp" number="10">second</indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="11">third</indexterm></cindex>
</beforefirstitem><tableentry><tableterm><item spaces=" "><itemformat command="samp">asamp--bb2</itemformat></item>
</tableterm></tableentry></table>


</chapter>
';

1;
