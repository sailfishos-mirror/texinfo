use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'kbdinputstyle_in_table'} = {
  'contents' => [
    {
      'args' => [
        {
          'parent' => {},
          'text' => 'codekbdmacro',
          'type' => 'macro_name'
        }
      ],
      'cmdname' => 'macro',
      'contents' => [
        {
          'parent' => {},
          'text' => '@table @kbd
',
          'type' => 'raw'
        },
        {
          'parent' => {},
          'text' => '@item i--tem out of example
',
          'type' => 'raw'
        },
        {
          'parent' => {},
          'text' => '@end table
',
          'type' => 'raw'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'raw'
        },
        {
          'parent' => {},
          'text' => '@table @kbd{}
',
          'type' => 'raw'
        },
        {
          'parent' => {},
          'text' => '@item braced i--tem out of example
',
          'type' => 'raw'
        },
        {
          'parent' => {},
          'text' => '@end table
',
          'type' => 'raw'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'raw'
        },
        {
          'parent' => {},
          'text' => 'in example
',
          'type' => 'raw'
        },
        {
          'parent' => {},
          'text' => '@example
',
          'type' => 'raw'
        },
        {
          'parent' => {},
          'text' => '@table @kbd
',
          'type' => 'raw'
        },
        {
          'parent' => {},
          'text' => '@item i--tem in example
',
          'type' => 'raw'
        },
        {
          'parent' => {},
          'text' => '@end table
',
          'type' => 'raw'
        },
        {
          'parent' => {},
          'text' => '@table @kbd{}
',
          'type' => 'raw'
        },
        {
          'parent' => {},
          'text' => '@item braced i--tem in example
',
          'type' => 'raw'
        },
        {
          'parent' => {},
          'text' => '@end table
',
          'type' => 'raw'
        },
        {
          'parent' => {},
          'text' => '@end example',
          'type' => 'raw'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'last_raw_newline'
        }
      ],
      'extra' => {
        'arg_line' => ' codekbdmacro
'
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
      'type' => 'empty_line_after_command'
    },
    {
      'parent' => {},
      'text' => '
',
      'type' => 'empty_line'
    },
    {
      'contents' => [
        {
          'cmdname' => '@',
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => 'kbdinputstyle code
'
        }
      ],
      'parent' => {},
      'type' => 'paragraph'
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
              'parent' => {},
              'text' => 'code'
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
      'cmdname' => 'kbdinputstyle',
      'extra' => {
        'misc_args' => [
          'code'
        ],
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
              'cmdname' => 'kbd',
              'contents' => [],
              'extra' => {
                'code' => 1
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 25,
                'macro' => 'codekbdmacro'
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
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'i--tem out of example'
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
                    'line_nr' => 25,
                    'macro' => 'codekbdmacro'
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
            'line_nr' => 25,
            'macro' => 'codekbdmacro'
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'command_as_argument' => {},
        'command_as_argument_kbd_code' => 1,
        'end_command' => {},
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 25,
        'macro' => 'codekbdmacro'
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
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'kbd',
              'contents' => [],
              'extra' => {
                'code' => 1
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 25,
                'macro' => 'codekbdmacro'
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
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'braced i--tem out of example'
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
                    'line_nr' => 25,
                    'macro' => 'codekbdmacro'
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
            'line_nr' => 25,
            'macro' => 'codekbdmacro'
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'command_as_argument' => {},
        'command_as_argument_kbd_code' => 1,
        'end_command' => {},
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 25,
        'macro' => 'codekbdmacro'
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
      'contents' => [
        {
          'parent' => {},
          'text' => 'in example
'
        }
      ],
      'parent' => {},
      'type' => 'paragraph'
    },
    {
      'cmdname' => 'example',
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
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'kbd',
                  'contents' => [],
                  'extra' => {
                    'code' => 1
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 25,
                    'macro' => 'codekbdmacro'
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
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'i--tem in example'
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
                        'line_nr' => 25,
                        'macro' => 'codekbdmacro'
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
                'line_nr' => 25,
                'macro' => 'codekbdmacro'
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'command_as_argument_kbd_code' => 1,
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 25,
            'macro' => 'codekbdmacro'
          },
          'parent' => {}
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'kbd',
                  'contents' => [],
                  'extra' => {
                    'code' => 1
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 25,
                    'macro' => 'codekbdmacro'
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
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'braced i--tem in example'
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
                        'line_nr' => 25,
                        'macro' => 'codekbdmacro'
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
                'line_nr' => 25,
                'macro' => 'codekbdmacro'
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'command_as_argument_kbd_code' => 1,
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 25,
            'macro' => 'codekbdmacro'
          },
          'parent' => {}
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'example'
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
            'command_argument' => 'example',
            'spaces_before_argument' => ' ',
            'text_arg' => 'example'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 25,
            'macro' => 'codekbdmacro'
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'end_command' => {}
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 25,
        'macro' => 'codekbdmacro'
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
      'contents' => [
        {
          'cmdname' => '@',
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => 'kbdinputstyle example
'
        }
      ],
      'parent' => {},
      'type' => 'paragraph'
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
              'parent' => {},
              'text' => 'example'
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
      'cmdname' => 'kbdinputstyle',
      'extra' => {
        'misc_args' => [
          'example'
        ],
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
              'cmdname' => 'kbd',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 31,
                'macro' => 'codekbdmacro'
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
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'i--tem out of example'
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
                    'line_nr' => 31,
                    'macro' => 'codekbdmacro'
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
            'line_nr' => 31,
            'macro' => 'codekbdmacro'
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
        'line_nr' => 31,
        'macro' => 'codekbdmacro'
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
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'kbd',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 31,
                'macro' => 'codekbdmacro'
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
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'braced i--tem out of example'
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
                    'line_nr' => 31,
                    'macro' => 'codekbdmacro'
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
            'line_nr' => 31,
            'macro' => 'codekbdmacro'
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
        'line_nr' => 31,
        'macro' => 'codekbdmacro'
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
      'contents' => [
        {
          'parent' => {},
          'text' => 'in example
'
        }
      ],
      'parent' => {},
      'type' => 'paragraph'
    },
    {
      'cmdname' => 'example',
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
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'kbd',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 31,
                    'macro' => 'codekbdmacro'
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
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'i--tem in example'
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
                        'line_nr' => 31,
                        'macro' => 'codekbdmacro'
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
                'line_nr' => 31,
                'macro' => 'codekbdmacro'
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
            'line_nr' => 31,
            'macro' => 'codekbdmacro'
          },
          'parent' => {}
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'kbd',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 31,
                    'macro' => 'codekbdmacro'
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
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'braced i--tem in example'
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
                        'line_nr' => 31,
                        'macro' => 'codekbdmacro'
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
                'line_nr' => 31,
                'macro' => 'codekbdmacro'
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
            'line_nr' => 31,
            'macro' => 'codekbdmacro'
          },
          'parent' => {}
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'example'
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
            'command_argument' => 'example',
            'spaces_before_argument' => ' ',
            'text_arg' => 'example'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 31,
            'macro' => 'codekbdmacro'
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'end_command' => {}
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 31,
        'macro' => 'codekbdmacro'
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
      'contents' => [
        {
          'cmdname' => '@',
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => 'kbdinputstyle distinct
'
        }
      ],
      'parent' => {},
      'type' => 'paragraph'
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
              'parent' => {},
              'text' => 'distinct'
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
      'cmdname' => 'kbdinputstyle',
      'extra' => {
        'misc_args' => [
          'distinct'
        ],
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 35,
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
              'cmdname' => 'kbd',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 37,
                'macro' => 'codekbdmacro'
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
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'i--tem out of example'
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
                    'line_nr' => 37,
                    'macro' => 'codekbdmacro'
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
            'line_nr' => 37,
            'macro' => 'codekbdmacro'
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
        'line_nr' => 37,
        'macro' => 'codekbdmacro'
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
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'kbd',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 37,
                'macro' => 'codekbdmacro'
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
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'braced i--tem out of example'
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
                    'line_nr' => 37,
                    'macro' => 'codekbdmacro'
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
            'line_nr' => 37,
            'macro' => 'codekbdmacro'
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
        'line_nr' => 37,
        'macro' => 'codekbdmacro'
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
      'contents' => [
        {
          'parent' => {},
          'text' => 'in example
'
        }
      ],
      'parent' => {},
      'type' => 'paragraph'
    },
    {
      'cmdname' => 'example',
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
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'kbd',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 37,
                    'macro' => 'codekbdmacro'
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
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'i--tem in example'
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
                        'line_nr' => 37,
                        'macro' => 'codekbdmacro'
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
                'line_nr' => 37,
                'macro' => 'codekbdmacro'
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
            'line_nr' => 37,
            'macro' => 'codekbdmacro'
          },
          'parent' => {}
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'kbd',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 37,
                    'macro' => 'codekbdmacro'
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
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'braced i--tem in example'
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
                        'line_nr' => 37,
                        'macro' => 'codekbdmacro'
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
                'line_nr' => 37,
                'macro' => 'codekbdmacro'
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
            'line_nr' => 37,
            'macro' => 'codekbdmacro'
          },
          'parent' => {}
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'example'
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
            'command_argument' => 'example',
            'spaces_before_argument' => ' ',
            'text_arg' => 'example'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 37,
            'macro' => 'codekbdmacro'
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'end_command' => {}
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 37,
        'macro' => 'codekbdmacro'
      },
      'parent' => {}
    }
  ],
  'type' => 'text_root'
};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[16]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[3];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[3];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[3]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[4]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[5]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[5];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[5]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[6]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[7];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[7];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[7];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[7]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[8]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[9];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[9];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[9];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[9]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[10]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[11];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[11]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[0]{'extra'}{'command'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[3]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[3];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[3]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'contents'}[3];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[12]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[13]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[14]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[14];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[14]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[14];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[14]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[15]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[16]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[16];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[16]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[17]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[18];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[18];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[18];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[18]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[19]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[20];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[20];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[20];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[20]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[21]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[22]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[22];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[22]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[0]{'extra'}{'command'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[3]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[3];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[3]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'contents'}[3];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[23]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[24]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[25]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[25];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[25]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[25];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[25]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[26]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[27]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[27]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[27]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[27];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[27]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[28]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[29];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[29];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[29];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[29]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[30]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[31];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[31];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[31];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[31]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[32]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[33]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[33];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[33]{'parent'} = $result_trees{'kbdinputstyle_in_table'};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[0]{'extra'}{'command'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[3]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[3];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[3]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'contents'}[3];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[34]{'parent'} = $result_trees{'kbdinputstyle_in_table'};

$result_texis{'kbdinputstyle_in_table'} = '@macro codekbdmacro
@table @kbd
@item i--tem out of example
@end table

@table @kbd{}
@item braced i--tem out of example
@end table

in example
@example
@table @kbd
@item i--tem in example
@end table
@table @kbd{}
@item braced i--tem in example
@end table
@end example
@end macro

@@kbdinputstyle code

@kbdinputstyle code

@table @kbd
@item i--tem out of example
@end table

@table @kbd{}
@item braced i--tem out of example
@end table

in example
@example
@table @kbd
@item i--tem in example
@end table
@table @kbd{}
@item braced i--tem in example
@end table
@end example

@@kbdinputstyle example

@kbdinputstyle example

@table @kbd
@item i--tem out of example
@end table

@table @kbd{}
@item braced i--tem out of example
@end table

in example
@example
@table @kbd
@item i--tem in example
@end table
@table @kbd{}
@item braced i--tem in example
@end table
@end example

@@kbdinputstyle distinct

@kbdinputstyle distinct

@table @kbd
@item i--tem out of example
@end table

@table @kbd{}
@item braced i--tem out of example
@end table

in example
@example
@table @kbd
@item i--tem in example
@end table
@table @kbd{}
@item braced i--tem in example
@end table
@end example
';


$result_texts{'kbdinputstyle_in_table'} = '
@kbdinputstyle code


i-tem out of example

braced i-tem out of example

in example
i--tem in example
braced i--tem in example

@kbdinputstyle example


i-tem out of example

braced i-tem out of example

in example
i--tem in example
braced i--tem in example

@kbdinputstyle distinct


i-tem out of example

braced i-tem out of example

in example
i--tem in example
braced i--tem in example
';

$result_errors{'kbdinputstyle_in_table'} = [];


$result_floats{'kbdinputstyle_in_table'} = {};



$result_converted{'plaintext'}->{'kbdinputstyle_in_table'} = '@kbdinputstyle code

\'i--tem out of example\'

\'braced i--tem out of example\'

   in example
     \'i--tem in example\'
     \'braced i--tem in example\'

   @kbdinputstyle example

\'i--tem out of example\'

\'braced i--tem out of example\'

   in example
     \'i--tem in example\'
     \'braced i--tem in example\'

   @kbdinputstyle distinct

\'i--tem out of example\'

\'braced i--tem out of example\'

   in example
     \'i--tem in example\'
     \'braced i--tem in example\'
';


$result_converted{'html_text'}->{'kbdinputstyle_in_table'} = '
<p>@kbdinputstyle code
</p>

<dl>
<dt><code>i--tem out of example</code></dt>
</dl>

<dl>
<dt><code>braced i--tem out of example</code></dt>
</dl>

<p>in example
</p><div class="example">
<dl>
<dt><tt><code>i--tem in example</code></tt></dt>
</dl>
<dl>
<dt><tt><code>braced i--tem in example</code></tt></dt>
</dl>
</div>

<p>@kbdinputstyle example
</p>

<dl>
<dt><kbd>i--tem out of example</kbd></dt>
</dl>

<dl>
<dt><kbd>braced i--tem out of example</kbd></dt>
</dl>

<p>in example
</p><div class="example">
<dl>
<dt><tt><kbd>i--tem in example</kbd></tt></dt>
</dl>
<dl>
<dt><tt><kbd>braced i--tem in example</kbd></tt></dt>
</dl>
</div>

<p>@kbdinputstyle distinct
</p>

<dl>
<dt><kbd>i--tem out of example</kbd></dt>
</dl>

<dl>
<dt><kbd>braced i--tem out of example</kbd></dt>
</dl>

<p>in example
</p><div class="example">
<dl>
<dt><tt><kbd>i--tem in example</kbd></tt></dt>
</dl>
<dl>
<dt><tt><kbd>braced i--tem in example</kbd></tt></dt>
</dl>
</div>
';


$result_converted{'latex'}->{'kbdinputstyle_in_table'} = '
@kbdinputstyle code


\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\texttt{i{-}{-}tem out of example}}}]
\\end{description}

\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\texttt{braced i{-}{-}tem out of example}}}]
\\end{description}

in example
\\par\\begingroup\\obeylines\\obeyspaces\\frenchspacing\\leftskip=2em\\relax\\parskip=0pt\\relax\\ttfamily{}%
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\texttt{i{-}{-}tem in example}}}]
\\end{description}
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\texttt{braced i{-}{-}tem in example}}}]
\\end{description}
\\endgroup{}%

@kbdinputstyle example


\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\GNUTexinfotablestylekbd{i{-}{-}tem out of example}}}]
\\end{description}

\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\GNUTexinfotablestylekbd{braced i{-}{-}tem out of example}}}]
\\end{description}

in example
\\par\\begingroup\\obeylines\\obeyspaces\\frenchspacing\\leftskip=2em\\relax\\parskip=0pt\\relax\\ttfamily{}%
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\texttt{i{-}{-}tem in example}}}]
\\end{description}
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\texttt{braced i{-}{-}tem in example}}}]
\\end{description}
\\endgroup{}%

@kbdinputstyle distinct


\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\GNUTexinfotablestylekbd{i{-}{-}tem out of example}}}]
\\end{description}

\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\GNUTexinfotablestylekbd{braced i{-}{-}tem out of example}}}]
\\end{description}

in example
\\par\\begingroup\\obeylines\\obeyspaces\\frenchspacing\\leftskip=2em\\relax\\parskip=0pt\\relax\\ttfamily{}%
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\GNUTexinfotablestylekbd{i{-}{-}tem in example}}}]
\\end{description}
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\GNUTexinfotablestylekbd{braced i{-}{-}tem in example}}}]
\\end{description}
\\endgroup{}%
';

1;
