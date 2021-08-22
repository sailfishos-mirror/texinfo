use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'inter_item_commands_in_table'} = {
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
                'line_nr' => 3,
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
                      'number' => 1
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 5,
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
            'line_nr' => 7,
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
        'line_nr' => 3,
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
                      'number' => 2
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 10,
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
                      'number' => 3
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 12,
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
            'line_nr' => 14,
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
              'cmdname' => 'var',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 16,
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
                      'number' => 1
                    },
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
                          'number' => 1
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
                      'number' => 2
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 21,
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
                      'number' => 3
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
                      'number' => 4
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
            'line_nr' => 30,
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
        'line_nr' => 16,
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
                'line_nr' => 32,
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
                  'number' => 2
                },
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 33,
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
                    'line_nr' => 35,
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
            'line_nr' => 37,
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
        'line_nr' => 32,
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
                'line_nr' => 39,
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
                  'number' => 3
                },
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 40,
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
                    'line_nr' => 42,
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
        'line_nr' => 39,
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
                  'number' => 4
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
                    'line_nr' => 48,
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
            'line_nr' => 50,
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
                'line_nr' => 52,
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
                  'number' => 5
                },
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 53,
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
                    'line_nr' => 55,
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
        'line_nr' => 52,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'text_root'
};
$result_trees{'inter_item_commands_in_table'}{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_table'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[4]{'parent'} = $result_trees{'inter_item_commands_in_table'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[5]{'parent'} = $result_trees{'inter_item_commands_in_table'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[6]{'parent'} = $result_trees{'inter_item_commands_in_table'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[7]{'parent'} = $result_trees{'inter_item_commands_in_table'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[8]{'parent'} = $result_trees{'inter_item_commands_in_table'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[9]{'parent'} = $result_trees{'inter_item_commands_in_table'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[10];
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[10];
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[10];
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[10];
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[10]{'parent'} = $result_trees{'inter_item_commands_in_table'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[11]{'parent'} = $result_trees{'inter_item_commands_in_table'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[12]{'parent'} = $result_trees{'inter_item_commands_in_table'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[13]{'parent'} = $result_trees{'inter_item_commands_in_table'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[14];
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[14];
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[1];
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[14];
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[14];
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'extra'}{'command_as_argument'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'contents'}[2];
$result_trees{'inter_item_commands_in_table'}{'contents'}[14]{'parent'} = $result_trees{'inter_item_commands_in_table'};

$result_texis{'inter_item_commands_in_table'} = '@setfilename inter_item_commands_in_table.info

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
';


$result_texts{'inter_item_commands_in_table'} = '
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
';

$result_errors{'inter_item_commands_in_table'} = [
  {
    'error_line' => ':5: warning: entry for index `vr\' outside of any node
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => 'entry for index `vr\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => ':10: warning: entry for index `vr\' outside of any node
',
    'file_name' => '',
    'line_nr' => 10,
    'macro' => '',
    'text' => 'entry for index `vr\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => ':12: warning: entry for index `vr\' outside of any node
',
    'file_name' => '',
    'line_nr' => 12,
    'macro' => '',
    'text' => 'entry for index `vr\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => ':17: warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 17,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => ':18: warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 18,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => ':21: warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 21,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => ':23: warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 23,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => ':27: warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 27,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => ':33: warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 33,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => ':40: warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 40,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => ':46: warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 46,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => ':53: warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 53,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'inter_item_commands_in_table'} = {};



$result_converted{'plaintext'}->{'inter_item_commands_in_table'} = '\'acode--b\'
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
';


$result_converted{'html_text'}->{'inter_item_commands_in_table'} = '
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
';


$result_converted{'xml'}->{'inter_item_commands_in_table'} = '<setfilename file="inter_item_commands_in_table.info" spaces=" ">inter_item_commands_in_table.info</setfilename>

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
';

1;
