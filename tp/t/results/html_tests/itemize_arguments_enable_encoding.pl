use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'itemize_arguments_enable_encoding'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'itemize_arguments_enable_encoding.info'
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
            'text_arg' => 'itemize_arguments_enable_encoding.info'
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
                  'parent' => {},
                  'text' => '---'
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item ---
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
                'line_nr' => 5,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
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
                  'parent' => {},
                  'text' => 'a\'\'b\'c'
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item a\'\'b\'c
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
                'line_nr' => 8,
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
                'line_nr' => 9,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 7,
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'a\'\'b\'c'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'code',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 11,
                    'macro' => ''
                  },
                  'parent' => {}
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item code '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'a\'\'b\'c'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 12,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
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
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 11,
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
                  'parent' => {},
                  'text' => 'a``b`c'
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item a``b`c
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
                'line_nr' => 16,
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
                'line_nr' => 17,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
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
                  'cmdname' => 'today',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 19,
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item today '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'today',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 20,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
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
                'line_nr' => 20,
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
                'line_nr' => 21,
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
            'line_nr' => 19,
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
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'aa',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 23,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
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
                          'cmdname' => 'aa',
                          'contents' => [],
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 23,
                            'macro' => ''
                          },
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sc',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 23,
                    'macro' => ''
                  },
                  'parent' => {}
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item aa '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'aa',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 24,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' '
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
                              'cmdname' => 'aa',
                              'contents' => [],
                              'line_nr' => {
                                'file_name' => '',
                                'line_nr' => 24,
                                'macro' => ''
                              },
                              'parent' => {}
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'sc',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 24,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
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
                'line_nr' => 24,
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
                'line_nr' => 25,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
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
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'tie',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 27,
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item tie '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'tie',
                      'contents' => [],
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
                'line_nr' => 28,
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
                'line_nr' => 29,
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
            'line_nr' => 27,
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
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'tie',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 31,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' a'
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item tie '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'tie',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 32,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' a
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
                'line_nr' => 32,
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
                'line_nr' => 33,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
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
                  'cmdname' => 'atchar',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 35,
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item atchar
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
                'line_nr' => 36,
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
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'atchar',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 39,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' a'
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item atchar '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'atchar',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 40,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' a
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
                'line_nr' => 40,
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
                'line_nr' => 41,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
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
                  'cmdname' => '*',
                  'parent' => {}
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item * '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
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
                'line_nr' => 44,
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
                'line_nr' => 45,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 43,
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
                  'cmdname' => '{',
                  'parent' => {}
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item '
                    },
                    {
                      'cmdname' => '{',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
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
                'line_nr' => 48,
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
                'line_nr' => 49,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 47,
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
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'registeredsymbol',
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
          'cmdname' => 'itemize',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item registeredsymbol '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'registeredsymbol',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 52,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
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
                'line_nr' => 52,
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
                'line_nr' => 53,
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
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'registeredsymbol',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 55,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' a'
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item registeredsymbol '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'registeredsymbol',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 56,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' a
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
                'line_nr' => 56,
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
                'line_nr' => 57,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 55,
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
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'enddots',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 59,
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item dots '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'enddots',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 60,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
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
                'line_nr' => 60,
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
                'line_nr' => 61,
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
            'line_nr' => 59,
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
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'enddots',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 63,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' a'
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item dots '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'enddots',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 64,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' a
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
                'line_nr' => 64,
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
                'line_nr' => 65,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 63,
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'e'
                        }
                      ],
                      'parent' => {},
                      'type' => 'following_arg'
                    }
                  ],
                  'cmdname' => '^',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 67,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'e'
                                }
                              ],
                              'parent' => {},
                              'type' => 'following_arg'
                            }
                          ],
                          'cmdname' => '^',
                          'contents' => [],
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 67,
                            'macro' => ''
                          },
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sc',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 67,
                    'macro' => ''
                  },
                  'parent' => {}
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item e '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'e'
                            }
                          ],
                          'parent' => {},
                          'type' => 'following_arg'
                        }
                      ],
                      'cmdname' => '^',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 68,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'e'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'following_arg'
                                }
                              ],
                              'cmdname' => '^',
                              'contents' => [],
                              'line_nr' => {
                                'file_name' => '',
                                'line_nr' => 68,
                                'macro' => ''
                              },
                              'parent' => {}
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'sc',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 68,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
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
                'line_nr' => 68,
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
                'line_nr' => 69,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 67,
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'E'
                        }
                      ],
                      'parent' => {},
                      'type' => 'following_arg'
                    }
                  ],
                  'cmdname' => '^',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 71,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'E'
                                }
                              ],
                              'parent' => {},
                              'type' => 'following_arg'
                            }
                          ],
                          'cmdname' => '^',
                          'contents' => [],
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 71,
                            'macro' => ''
                          },
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sc',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 71,
                    'macro' => ''
                  },
                  'parent' => {}
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item E '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'E'
                            }
                          ],
                          'parent' => {},
                          'type' => 'following_arg'
                        }
                      ],
                      'cmdname' => '^',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 72,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'E'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'following_arg'
                                }
                              ],
                              'cmdname' => '^',
                              'contents' => [],
                              'line_nr' => {
                                'file_name' => '',
                                'line_nr' => 72,
                                'macro' => ''
                              },
                              'parent' => {}
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'sc',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 72,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
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
                'line_nr' => 72,
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
                'line_nr' => 73,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'i'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'dotless',
                          'contents' => [],
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 75,
                            'macro' => ''
                          },
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => '~',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 75,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'i'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'dotless',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 75,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'args' => [
                                    {
                                      'contents' => [
                                        {
                                          'parent' => {},
                                          'text' => 'i'
                                        }
                                      ],
                                      'parent' => {},
                                      'type' => 'brace_command_arg'
                                    }
                                  ],
                                  'cmdname' => 'dotless',
                                  'contents' => [],
                                  'line_nr' => {
                                    'file_name' => '',
                                    'line_nr' => 75,
                                    'macro' => ''
                                  },
                                  'parent' => {}
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => '~',
                          'contents' => [],
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 75,
                            'macro' => ''
                          },
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => ' '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'i'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'dotless',
                          'contents' => [],
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 75,
                            'macro' => ''
                          },
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sc',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 75,
                    'macro' => ''
                  },
                  'parent' => {}
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item dotless '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'i'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'dotless',
                              'contents' => [],
                              'line_nr' => {
                                'file_name' => '',
                                'line_nr' => 76,
                                'macro' => ''
                              },
                              'parent' => {}
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => '~',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 76,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'i'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'dotless',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 76,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'args' => [
                                        {
                                          'contents' => [
                                            {
                                              'parent' => {},
                                              'text' => 'i'
                                            }
                                          ],
                                          'parent' => {},
                                          'type' => 'brace_command_arg'
                                        }
                                      ],
                                      'cmdname' => 'dotless',
                                      'contents' => [],
                                      'line_nr' => {
                                        'file_name' => '',
                                        'line_nr' => 76,
                                        'macro' => ''
                                      },
                                      'parent' => {}
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => '~',
                              'contents' => [],
                              'line_nr' => {
                                'file_name' => '',
                                'line_nr' => 76,
                                'macro' => ''
                              },
                              'parent' => {}
                            },
                            {
                              'parent' => {},
                              'text' => ' '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'i'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'dotless',
                              'contents' => [],
                              'line_nr' => {
                                'file_name' => '',
                                'line_nr' => 76,
                                'macro' => ''
                              },
                              'parent' => {}
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'sc',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 76,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
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
                'line_nr' => 76,
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
                'line_nr' => 77,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 75,
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'r'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'udotaccent',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 79,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'r'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => '\'',
                          'contents' => [],
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 79,
                            'macro' => ''
                          },
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'v',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 79,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'r'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'udotaccent',
                          'contents' => [],
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 79,
                            'macro' => ''
                          },
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => ' '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'args' => [
                                    {
                                      'contents' => [
                                        {
                                          'parent' => {},
                                          'text' => 'r'
                                        }
                                      ],
                                      'parent' => {},
                                      'type' => 'brace_command_arg'
                                    }
                                  ],
                                  'cmdname' => '\'',
                                  'contents' => [],
                                  'line_nr' => {
                                    'file_name' => '',
                                    'line_nr' => 79,
                                    'macro' => ''
                                  },
                                  'parent' => {}
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'v',
                          'contents' => [],
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 79,
                            'macro' => ''
                          },
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sc',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 79,
                    'macro' => ''
                  },
                  'parent' => {}
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item complex a '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'r'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'udotaccent',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 80,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'r'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => '\'',
                              'contents' => [],
                              'line_nr' => {
                                'file_name' => '',
                                'line_nr' => 80,
                                'macro' => ''
                              },
                              'parent' => {}
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'v',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 80,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'r'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'udotaccent',
                              'contents' => [],
                              'line_nr' => {
                                'file_name' => '',
                                'line_nr' => 80,
                                'macro' => ''
                              },
                              'parent' => {}
                            },
                            {
                              'parent' => {},
                              'text' => ' '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'args' => [
                                        {
                                          'contents' => [
                                            {
                                              'parent' => {},
                                              'text' => 'r'
                                            }
                                          ],
                                          'parent' => {},
                                          'type' => 'brace_command_arg'
                                        }
                                      ],
                                      'cmdname' => '\'',
                                      'contents' => [],
                                      'line_nr' => {
                                        'file_name' => '',
                                        'line_nr' => 80,
                                        'macro' => ''
                                      },
                                      'parent' => {}
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'v',
                              'contents' => [],
                              'line_nr' => {
                                'file_name' => '',
                                'line_nr' => 80,
                                'macro' => ''
                              },
                              'parent' => {}
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'sc',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 80,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
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
                'line_nr' => 80,
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
                'line_nr' => 81,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 79,
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'args' => [
                                    {
                                      'contents' => [
                                        {
                                          'parent' => {},
                                          'text' => 'n'
                                        }
                                      ],
                                      'parent' => {},
                                      'type' => 'brace_command_arg'
                                    }
                                  ],
                                  'cmdname' => '~',
                                  'contents' => [],
                                  'line_nr' => {
                                    'file_name' => '',
                                    'line_nr' => 83,
                                    'macro' => ''
                                  },
                                  'parent' => {}
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => ',',
                          'contents' => [],
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 83,
                            'macro' => ''
                          },
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => '=',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 83,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ' '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'args' => [
                                    {
                                      'contents' => [
                                        {
                                          'args' => [
                                            {
                                              'contents' => [
                                                {
                                                  'parent' => {},
                                                  'text' => 'n'
                                                }
                                              ],
                                              'parent' => {},
                                              'type' => 'brace_command_arg'
                                            }
                                          ],
                                          'cmdname' => '~',
                                          'contents' => [],
                                          'line_nr' => {
                                            'file_name' => '',
                                            'line_nr' => 83,
                                            'macro' => ''
                                          },
                                          'parent' => {}
                                        }
                                      ],
                                      'parent' => {},
                                      'type' => 'brace_command_arg'
                                    }
                                  ],
                                  'cmdname' => ',',
                                  'contents' => [],
                                  'line_nr' => {
                                    'file_name' => '',
                                    'line_nr' => 83,
                                    'macro' => ''
                                  },
                                  'parent' => {}
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => '=',
                          'contents' => [],
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 83,
                            'macro' => ''
                          },
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sc',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 83,
                    'macro' => ''
                  },
                  'parent' => {}
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item complex n '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'args' => [
                                        {
                                          'contents' => [
                                            {
                                              'parent' => {},
                                              'text' => 'n'
                                            }
                                          ],
                                          'parent' => {},
                                          'type' => 'brace_command_arg'
                                        }
                                      ],
                                      'cmdname' => '~',
                                      'contents' => [],
                                      'line_nr' => {
                                        'file_name' => '',
                                        'line_nr' => 84,
                                        'macro' => ''
                                      },
                                      'parent' => {}
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => ',',
                              'contents' => [],
                              'line_nr' => {
                                'file_name' => '',
                                'line_nr' => 84,
                                'macro' => ''
                              },
                              'parent' => {}
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => '=',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 84,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => ' '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'args' => [
                                        {
                                          'contents' => [
                                            {
                                              'args' => [
                                                {
                                                  'contents' => [
                                                    {
                                                      'parent' => {},
                                                      'text' => 'n'
                                                    }
                                                  ],
                                                  'parent' => {},
                                                  'type' => 'brace_command_arg'
                                                }
                                              ],
                                              'cmdname' => '~',
                                              'contents' => [],
                                              'line_nr' => {
                                                'file_name' => '',
                                                'line_nr' => 84,
                                                'macro' => ''
                                              },
                                              'parent' => {}
                                            }
                                          ],
                                          'parent' => {},
                                          'type' => 'brace_command_arg'
                                        }
                                      ],
                                      'cmdname' => ',',
                                      'contents' => [],
                                      'line_nr' => {
                                        'file_name' => '',
                                        'line_nr' => 84,
                                        'macro' => ''
                                      },
                                      'parent' => {}
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => '=',
                              'contents' => [],
                              'line_nr' => {
                                'file_name' => '',
                                'line_nr' => 84,
                                'macro' => ''
                              },
                              'parent' => {}
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'sc',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 84,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
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
                'line_nr' => 84,
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
                'line_nr' => 85,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
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
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'asis',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 87,
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item asis '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'asis',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 88,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
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
                'line_nr' => 88,
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
            'line_nr' => 87,
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
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'click',
                  'contents' => [],
                  'extra' => {
                    'clickstyle' => 'arrow'
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 91,
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item click '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'click',
                      'contents' => [],
                      'extra' => {
                        'clickstyle' => 'arrow'
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 92,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
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
                'line_nr' => 92,
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
                'line_nr' => 93,
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
            'line_nr' => 91,
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
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'click',
                  'contents' => [],
                  'extra' => {
                    'clickstyle' => 'arrow'
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 95,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' a'
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item click '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'click',
                      'contents' => [],
                      'extra' => {
                        'clickstyle' => 'arrow'
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 96,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' a
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
                'line_nr' => 96,
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
                'line_nr' => 97,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 95,
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
              'parent' => {},
              'text' => '@result',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'clickstyle',
          'extra' => {
            'arg_line' => ' @result
',
            'misc_args' => [
              '@result'
            ]
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 99,
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
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'click',
                  'contents' => [],
                  'extra' => {
                    'clickstyle' => 'result'
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 101,
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item result click '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'click',
                      'contents' => [],
                      'extra' => {
                        'clickstyle' => 'result'
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 102,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
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
                'line_nr' => 102,
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
                'line_nr' => 103,
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
            'line_nr' => 101,
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
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'click',
                  'contents' => [],
                  'extra' => {
                    'clickstyle' => 'result'
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 105,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' a'
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item result click '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'click',
                      'contents' => [],
                      'extra' => {
                        'clickstyle' => 'result'
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 106,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
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
                'line_nr' => 106,
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
                'line_nr' => 107,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 105,
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
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'error',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 109,
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item error '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'error',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 110,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
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
                'line_nr' => 110,
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
                'line_nr' => 111,
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
            'line_nr' => 109,
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
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'error',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 113,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' a'
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item error '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'error',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 114,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' a
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
                'line_nr' => 114,
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
                'line_nr' => 115,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 113,
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
                  'parent' => {},
                  'text' => 'fr'
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
          'cmdname' => 'documentlanguage',
          'extra' => {
            'spaces_before_argument' => ' ',
            'text_arg' => 'fr'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 117,
            'macro' => ''
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
                  'cmdname' => 'error',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 118,
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item fr error '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'error',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 119,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
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
                'line_nr' => 119,
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
                'line_nr' => 120,
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
            'line_nr' => 118,
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
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'error',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 122,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' a'
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item fr error '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'error',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 123,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' a
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
                'line_nr' => 123,
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
                'line_nr' => 124,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 122,
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
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[4];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[4];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[4];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[8];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[8]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[8];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[8]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[8];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[8]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[8]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'extra'}{'command_as_argument'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[2];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'extra'}{'command_as_argument'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[16]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[17]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[18]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[18]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[18];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[18]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[18];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[18]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[18]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[18]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[18]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[18]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[18];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[18]{'extra'}{'command_as_argument'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[18]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[18]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[18]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[18]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[19]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[20]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[21]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[22]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[23]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[24]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[25]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'extra'}{'command_as_argument'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[26]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[27]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[28]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[29]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'extra'}{'command_as_argument'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[30]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[31]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[32]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[33]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'args'}[0]{'contents'}[2];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[34]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[35]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'args'}[0]{'contents'}[2];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[36]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[37]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[2];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[4];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[2];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[38]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[39]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[2];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[4];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[2];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[40]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[41]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[2];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[42]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[43]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'extra'}{'command_as_argument'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[44]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[45]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'extra'}{'command_as_argument'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[46]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[47]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[48]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[49]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[50]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[50];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[50]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[51]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'extra'}{'command_as_argument'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[52]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[53]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[54]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[55]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'extra'}{'command_as_argument'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[56]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[57]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[58]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[59]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[60]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[60]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[60]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[60];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[60]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'extra'}{'command_as_argument'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[61]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[62]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'extra'}{'end_command'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'contents'}[1];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[63]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'contents'}[64]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0];
$result_trees{'itemize_arguments_enable_encoding'}{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments_enable_encoding'};

$result_texis{'itemize_arguments_enable_encoding'} = '@setfilename itemize_arguments_enable_encoding.info

@itemize ---
@item item ---
@end itemize

@itemize a\'\'b\'c
@item item a\'\'b\'c
@end itemize

@itemize @code{a\'\'b\'c}
@item item code @code{a\'\'b\'c}
@end itemize

@itemize a``b`c
@item item a``b`c
@end itemize

@itemize @today
@item item today @today{}
@end itemize

@itemize @aa{} @sc{@aa{}}
@item item aa @aa{} @sc{@aa{}}
@end itemize

@itemize @tie{}
@item item tie @tie{}
@end itemize

@itemize @tie{} a
@item item tie @tie{} a
@end itemize

@itemize @atchar
@item item atchar
@end itemize

@itemize @atchar{} a
@item item atchar @atchar{} a
@end itemize

@itemize @*
@item item * @*
@end itemize

@itemize @{
@item item @{
@end itemize

@itemize @registeredsymbol{}
@item item registeredsymbol @registeredsymbol{}
@end itemize

@itemize @registeredsymbol{} a
@item item registeredsymbol @registeredsymbol{} a
@end itemize

@itemize @enddots{}
@item item dots @enddots{}
@end itemize

@itemize @enddots{} a
@item item dots @enddots{} a
@end itemize

@itemize @^e @sc{@^e}
@item item e @^e @sc{@^e}
@end itemize

@itemize @^E @sc{@^E}
@item item E @^E @sc{@^E}
@end itemize

@itemize @~{@dotless{i}} @dotless{i} @sc{@~{@dotless{i}} @dotless{i}}
@item item dotless @~{@dotless{i}} @dotless{i} @sc{@~{@dotless{i}} @dotless{i}}
@end itemize

@itemize @udotaccent{r} @v{@\'{r}} @sc{@udotaccent{r} @v{@\'{r}}}
@item item complex a @udotaccent{r} @v{@\'{r}} @sc{@udotaccent{r} @v{@\'{r}}}
@end itemize

@itemize @={@,{@~{n}}} @sc{ @={@,{@~{n}}}}
@item item complex n @={@,{@~{n}}} @sc{ @={@,{@~{n}}}}
@end itemize

@itemize @asis
@item item asis @asis{}
@end itemize

@itemize @click{}
@item item click @click{}
@end itemize

@itemize @click{} a
@item item click @click{} a
@end itemize

@clickstyle @result

@itemize @click{}
@item item result click @click{}
@end itemize

@itemize @click{} a
@item item result click @click{}
@end itemize

@itemize @error{}
@item item error @error{}
@end itemize

@itemize @error{} a
@item item error @error{} a
@end itemize

@documentlanguage fr
@itemize @error{}
@item item fr error @error{}
@end itemize

@itemize @error{} a
@item item fr error @error{} a
@end itemize

';


$result_texts{'itemize_arguments_enable_encoding'} = '
item --

item a"b\'c

item code a\'\'b\'c

item a"b`c

item today a sunny day

item aa aa AA

item tie  

item tie   a

item atchar

item atchar @ a

item * 


item {

item registeredsymbol (R)

item registeredsymbol (R) a

item dots ...

item dots ... a

item e e^ E^

item E E^ E^

item dotless i~ i I~ I

item complex a .r r\'< .R R\'<

item complex n n~,=  N~,=

item asis 

item click ->

item click -> a


item result click =>

item result click =>

item error error-->

item error error--> a

item fr error error-->

item fr error error--> a

';

$result_errors{'itemize_arguments_enable_encoding'} = [];


$result_floats{'itemize_arguments_enable_encoding'} = {};


$result_converted_errors{'file_html'}->{'itemize_arguments_enable_encoding'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
