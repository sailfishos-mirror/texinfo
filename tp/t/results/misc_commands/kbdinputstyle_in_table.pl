use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'kbdinputstyle_in_table'} = {
  'contents' => [
    {
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
              'text' => '@end example
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 19,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' codekbdmacro
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
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
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 23,
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
                  'cmdname' => 'kbd',
                  'extra' => {
                    'code' => 1
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 25,
                    'macro' => 'codekbdmacro'
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
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 25,
                        'macro' => 'codekbdmacro'
                      }
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'table'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 25,
                'macro' => 'codekbdmacro'
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'command_as_argument_kbd_code' => 1,
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 25,
            'macro' => 'codekbdmacro'
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
                  'args' => [
                    {
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'kbd',
                  'extra' => {
                    'code' => 1
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 25,
                    'macro' => 'codekbdmacro'
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
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 25,
                        'macro' => 'codekbdmacro'
                      }
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'table'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 25,
                'macro' => 'codekbdmacro'
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'command_as_argument_kbd_code' => 1,
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 25,
            'macro' => 'codekbdmacro'
          }
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
          'args' => [
            {
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'example',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'kbd',
                      'extra' => {
                        'code' => 1
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 25,
                        'macro' => 'codekbdmacro'
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
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 25,
                            'macro' => 'codekbdmacro'
                          }
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
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'table'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 25,
                    'macro' => 'codekbdmacro'
                  }
                }
              ],
              'extra' => {
                'command_as_argument' => {},
                'command_as_argument_kbd_code' => 1,
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 25,
                'macro' => 'codekbdmacro'
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'kbd',
                      'extra' => {
                        'code' => 1
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 25,
                        'macro' => 'codekbdmacro'
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
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 25,
                            'macro' => 'codekbdmacro'
                          }
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
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'table'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 25,
                    'macro' => 'codekbdmacro'
                  }
                }
              ],
              'extra' => {
                'command_as_argument' => {},
                'command_as_argument_kbd_code' => 1,
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 25,
                'macro' => 'codekbdmacro'
              }
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'example'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 25,
                'macro' => 'codekbdmacro'
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 25,
            'macro' => 'codekbdmacro'
          }
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
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 29,
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
                  'cmdname' => 'kbd',
                  'extra' => {
                    'code' => 1
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 31,
                    'macro' => 'codekbdmacro'
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
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'codekbdmacro'
                      }
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'table'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 31,
                'macro' => 'codekbdmacro'
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'command_as_argument_kbd_code' => 1,
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 31,
            'macro' => 'codekbdmacro'
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
                  'args' => [
                    {
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'kbd',
                  'extra' => {
                    'code' => 1
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 31,
                    'macro' => 'codekbdmacro'
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
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'codekbdmacro'
                      }
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'table'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 31,
                'macro' => 'codekbdmacro'
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'command_as_argument_kbd_code' => 1,
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 31,
            'macro' => 'codekbdmacro'
          }
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
          'args' => [
            {
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'example',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'kbd',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'codekbdmacro'
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
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 31,
                            'macro' => 'codekbdmacro'
                          }
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
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'table'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 31,
                    'macro' => 'codekbdmacro'
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
                'line_nr' => 31,
                'macro' => 'codekbdmacro'
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'kbd',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'codekbdmacro'
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
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 31,
                            'macro' => 'codekbdmacro'
                          }
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
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'table'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 31,
                    'macro' => 'codekbdmacro'
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
                'line_nr' => 31,
                'macro' => 'codekbdmacro'
              }
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'example'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 31,
                'macro' => 'codekbdmacro'
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 31,
            'macro' => 'codekbdmacro'
          }
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
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 35,
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
                  'cmdname' => 'kbd',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 37,
                    'macro' => 'codekbdmacro'
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
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 37,
                        'macro' => 'codekbdmacro'
                      }
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'table'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 37,
                'macro' => 'codekbdmacro'
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
            'line_nr' => 37,
            'macro' => 'codekbdmacro'
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
                  'args' => [
                    {
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'kbd',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 37,
                    'macro' => 'codekbdmacro'
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
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 37,
                        'macro' => 'codekbdmacro'
                      }
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'table'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 37,
                'macro' => 'codekbdmacro'
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
            'line_nr' => 37,
            'macro' => 'codekbdmacro'
          }
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
          'args' => [
            {
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'example',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'kbd',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 37,
                        'macro' => 'codekbdmacro'
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
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 37,
                            'macro' => 'codekbdmacro'
                          }
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
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'table'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 37,
                    'macro' => 'codekbdmacro'
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
                'line_nr' => 37,
                'macro' => 'codekbdmacro'
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'kbd',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 37,
                        'macro' => 'codekbdmacro'
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
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 37,
                            'macro' => 'codekbdmacro'
                          }
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
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'table'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 37,
                    'macro' => 'codekbdmacro'
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
                'line_nr' => 37,
                'macro' => 'codekbdmacro'
              }
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'example'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 37,
                'macro' => 'codekbdmacro'
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 37,
            'macro' => 'codekbdmacro'
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[16]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[17]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[17]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[17]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[17];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[17]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[2];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[2];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[4];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[10];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[2]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[2];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[13];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[13];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[15]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[15]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[15]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[15];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[16]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[17]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[18]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[19]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[20]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[21]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[21];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[21]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[2]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[2];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[22]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[23]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[24];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[24];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[24]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[25]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[26]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[26]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[26]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[26];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[26]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[27]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[28]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[29]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[30]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[31]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[32];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[32]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'extra'}{'command_as_argument'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[2]{'args'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[2];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'contents'}[33]{'parent'} = $result_trees{'kbdinputstyle_in_table'}{'contents'}[0];
$result_trees{'kbdinputstyle_in_table'}{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_in_table'};

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

‘i--tem out of example’

‘braced i--tem out of example’

   in example
     ‘i--tem in example’
     ‘braced i--tem in example’

   @kbdinputstyle example

‘i--tem out of example’

‘braced i--tem out of example’

   in example
     ‘i--tem in example’
     ‘braced i--tem in example’

   @kbdinputstyle distinct

‘i--tem out of example’

‘braced i--tem out of example’

   in example
     ‘i--tem in example’
     ‘braced i--tem in example’
';


$result_converted{'html_text'}->{'kbdinputstyle_in_table'} = '
<p>@kbdinputstyle code
</p>

<dl class="table">
<dt><code class="code as-code-kbd">i--tem out of example</code></dt>
</dl>

<dl class="table">
<dt><code class="code as-code-kbd">braced i--tem out of example</code></dt>
</dl>

<p>in example
</p><div class="example">
<dl class="table">
<dt><code class="table-term-preformatted-code"><code class="code as-code-kbd">i--tem in example</code></code></dt>
</dl>
<dl class="table">
<dt><code class="table-term-preformatted-code"><code class="code as-code-kbd">braced i--tem in example</code></code></dt>
</dl>
</div>

<p>@kbdinputstyle example
</p>

<dl class="table">
<dt><code class="code as-code-kbd">i--tem out of example</code></dt>
</dl>

<dl class="table">
<dt><code class="code as-code-kbd">braced i--tem out of example</code></dt>
</dl>

<p>in example
</p><div class="example">
<dl class="table">
<dt><code class="table-term-preformatted-code"><kbd class="kbd">i--tem in example</kbd></code></dt>
</dl>
<dl class="table">
<dt><code class="table-term-preformatted-code"><kbd class="kbd">braced i--tem in example</kbd></code></dt>
</dl>
</div>

<p>@kbdinputstyle distinct
</p>

<dl class="table">
<dt><kbd class="kbd">i--tem out of example</kbd></dt>
</dl>

<dl class="table">
<dt><kbd class="kbd">braced i--tem out of example</kbd></dt>
</dl>

<p>in example
</p><div class="example">
<dl class="table">
<dt><code class="table-term-preformatted-code"><kbd class="kbd">i--tem in example</kbd></code></dt>
</dl>
<dl class="table">
<dt><code class="table-term-preformatted-code"><kbd class="kbd">braced i--tem in example</kbd></code></dt>
</dl>
</div>
';


$result_converted{'latex'}->{'kbdinputstyle_in_table'} = '\\documentclass{book}
\\usepackage{amsfonts}
\\usepackage{amsmath}
\\usepackage[gen]{eurosym}
\\usepackage[T1]{fontenc}
\\usepackage{textcomp}
\\usepackage{graphicx}
\\usepackage{etoolbox}
\\usepackage{enumitem}
\\usepackage{titleps}
\\usepackage{float}
% use hidelinks to remove boxes around links to be similar to Texinfo TeX
\\usepackage[hidelinks]{hyperref}
\\usepackage[utf8]{inputenc}

\\makeatletter
\\newcommand{\\Texinfosettitle}{No Title}%

% style command for kbd in \'cmd_text\' formatting context
\\newcommand\\Texinfocommandstyletextkbd[1]{{\\ttfamily\\textsl{#1}}}%

% redefine the \\mainmatter command such that it does not clear page
% as if in double page
\\renewcommand\\mainmatter{\\clearpage\\@mainmattertrue\\pagenumbering{arabic}}
\\newenvironment{Texinfopreformatted}{%
  \\par\\GNUTobeylines\\obeyspaces\\frenchspacing\\parskip=\\z@\\parindent=\\z@}{}
{\\catcode`\\^^M=13 \\gdef\\GNUTobeylines{\\catcode`\\^^M=13 \\def^^M{\\null\\par}}}
\\newenvironment{Texinfoindented}{\\begin{list}{}{}\\item\\relax}{\\end{list}}

% set defaults for lists that match Texinfo TeX formatting
\\setlist[description]{style=nextline, font=\\normalfont}

% used for substitutions in commands
\\newcommand{\\Texinfoplaceholder}[1]{}

\\newpagestyle{single}{\\sethead[\\chaptername{} \\thechapter{} \\chaptertitle{}][][\\thepage]
                              {\\chaptername{} \\thechapter{} \\chaptertitle{}}{}{\\thepage}}

% allow line breaking at underscore
\\let\\Texinfounderscore\\_
\\renewcommand{\\_}{\\Texinfounderscore\\discretionary{}{}{}}
\\renewcommand{\\includegraphics}[1]{\\fbox{FIG \\detokenize{#1}}}

\\makeatother
% set default for @setchapternewpage
\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\Texinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother
\\pagestyle{single}%


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
\\begin{Texinfoindented}
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\texttt{i{-}{-}tem in example}}}]
\\end{description}
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\texttt{braced i{-}{-}tem in example}}}]
\\end{description}
\\end{Texinfoindented}

@kbdinputstyle example


\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\texttt{i{-}{-}tem out of example}}}]
\\end{description}

\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\texttt{braced i{-}{-}tem out of example}}}]
\\end{description}

in example
\\begin{Texinfoindented}
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\Texinfocommandstyletextkbd{i{-}{-}tem in example}}}]
\\end{description}
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\Texinfocommandstyletextkbd{braced i{-}{-}tem in example}}}]
\\end{description}
\\end{Texinfoindented}

@kbdinputstyle distinct


\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\Texinfocommandstyletextkbd{i{-}{-}tem out of example}}}]
\\end{description}

\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\Texinfocommandstyletextkbd{braced i{-}{-}tem out of example}}}]
\\end{description}

in example
\\begin{Texinfoindented}
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\Texinfocommandstyletextkbd{i{-}{-}tem in example}}}]
\\end{description}
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\Texinfocommandstyletextkbd{braced i{-}{-}tem in example}}}]
\\end{description}
\\end{Texinfoindented}
\\end{document}
';

1;
