use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'indices'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'type' => 'preamble_before_beginning'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'text' => 'txiindexbackslashignore',
                  'type' => 'misc_arg'
                },
                {
                  'text' => '',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'set',
              'extra' => {
                'misc_args' => [
                  'txiindexbackslashignore',
                  ''
                ]
              },
              'info' => {
                'arg_line' => ' txiindexbackslashignore
'
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            }
          ],
          'type' => 'preamble_before_content'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Top'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
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
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
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
              'text' => 'top section'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'top',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 5,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'chapter'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
      'extra' => {
        'isindex' => 1,
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
        'normalized' => 'chapter'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 7,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Index'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'chapter',
      'contents' => [
        {
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
                          'text' => 'a'
                        }
                      ],
                      'type' => 'following_arg'
                    }
                  ],
                  'cmdname' => '"',
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 10,
                    'macro' => ''
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'o'
                        }
                      ],
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => '"',
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 10,
                    'macro' => ''
                  }
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 1,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {
                '\\' => 1
              },
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'AA'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 2,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {
                '\\' => 1
              },
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'aa'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 3,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {
                '\\' => 1
              },
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 12,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'i'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 4,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {
                '\\' => 1
              },
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 13,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'Z'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 5,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {
                '\\' => 1
              },
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 14,
            'macro' => ''
          },
          'type' => 'index_entry_command'
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
                          'text' => 'i'
                        }
                      ],
                      'type' => 'following_arg'
                    }
                  ],
                  'cmdname' => '^',
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 15,
                    'macro' => ''
                  }
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 6,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {
                '\\' => 1
              },
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 15,
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
          'args' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'a!"'
                        },
                        {
                          'cmdname' => '@'
                        },
                        {
                          'text' => 'b'
                        }
                      ],
                      'type' => 'brace_command_context'
                    }
                  ],
                  'cmdname' => 'math',
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 17,
                    'macro' => ''
                  }
                },
                {
                  'text' => ' "!'
                },
                {
                  'cmdname' => '@'
                },
                {
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'a'
                        }
                      ],
                      'type' => 'following_arg'
                    }
                  ],
                  'cmdname' => '"',
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 17,
                    'macro' => ''
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'o'
                        }
                      ],
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => '"',
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 17,
                    'macro' => ''
                  }
                }
              ],
              'info' => {
                'spaces_after_argument' => ' '
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 7,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {
                '\\' => 1
              },
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            },
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'text' => 'a!"'
                            },
                            {
                              'cmdname' => '@'
                            },
                            {
                              'text' => 'b'
                            }
                          ],
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'sortas',
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 17,
                        'macro' => ''
                      }
                    },
                    {
                      'text' => ' ',
                      'type' => 'spaces_after_close_brace'
                    },
                    {
                      'text' => 'sub'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'text' => 'a!"'
                            },
                            {
                              'cmdname' => '@'
                            },
                            {
                              'text' => 'b'
                            }
                          ],
                          'type' => 'brace_command_context'
                        }
                      ],
                      'cmdname' => 'math',
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 17,
                        'macro' => ''
                      }
                    },
                    {
                      'text' => ' sub "!'
                    },
                    {
                      'cmdname' => '@'
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'text' => 'a'
                            }
                          ],
                          'type' => 'following_arg'
                        }
                      ],
                      'cmdname' => '"',
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 17,
                        'macro' => ''
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'text' => 'o'
                            }
                          ],
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => '"',
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 17,
                        'macro' => ''
                      }
                    },
                    {
                      'text' => ' ',
                      'type' => 'spaces_at_end'
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
                                      'text' => 'a!"'
                                    },
                                    {
                                      'cmdname' => '@'
                                    },
                                    {
                                      'text' => 'b'
                                    }
                                  ],
                                  'type' => 'brace_command_context'
                                }
                              ],
                              'cmdname' => 'math',
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 17,
                                'macro' => ''
                              }
                            },
                            {
                              'text' => ' "!'
                            },
                            {
                              'cmdname' => '@'
                            },
                            {
                              'text' => ' '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'a'
                                    }
                                  ],
                                  'type' => 'following_arg'
                                }
                              ],
                              'cmdname' => '"',
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 17,
                                'macro' => ''
                              }
                            },
                            {
                              'text' => ' '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'o'
                                    }
                                  ],
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => '"',
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 17,
                                'macro' => ''
                              }
                            }
                          ],
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'seealso',
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 17,
                        'macro' => ''
                      }
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'seealso' => {},
                'sortas' => 'a!"@b'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 17,
                'macro' => ''
              }
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 17,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {},
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => '\\cmd'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 8,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {
                '\\' => 1
              },
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 18,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'totocmd'
                },
                {
                  'text' => ' ',
                  'type' => 'spaces_at_end'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => '\\cmd'
                        }
                      ],
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sortas',
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 19,
                    'macro' => ''
                  }
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 9,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {
                '\\' => 1
              },
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'sortas' => '\\cmd'
            },
            'sortas' => '\\cmd'
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 19,
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
          'args' => [
            {
              'text' => 'txiindexbackslashignore',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'clear',
          'extra' => {
            'misc_args' => [
              'txiindexbackslashignore'
            ]
          },
          'info' => {
            'arg_line' => ' txiindexbackslashignore
'
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => '\\some\\command for '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'file'
                        }
                      ],
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'file',
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 23,
                    'macro' => ''
                  }
                }
              ],
              'info' => {
                'comment_at_end' => {
                  'args' => [
                    {
                      'text' => ' comment
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' comment
'
                    ]
                  }
                },
                'spaces_after_argument' => ' '
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 10,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 23,
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
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'the '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'person'
                        }
                      ],
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'r',
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 25,
                    'macro' => ''
                  }
                },
                {
                  'text' => ' index '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'aa'
                        }
                      ],
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'file',
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 25,
                    'macro' => ''
                  }
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'findex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 1,
              'in_code' => 1,
              'index_at_command' => 'findex',
              'index_ignore_chars' => {},
              'index_name' => 'fn',
              'index_type_command' => 'findex'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 25,
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
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'cp'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 27,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'fn'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'fn'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 29,
            'macro' => ''
          }
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 8,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'indices'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'indices'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'indices'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'indices'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'indices'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'indices'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'indices'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'indices'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'indices'}{'contents'}[3];
$result_trees{'indices'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[2];
$result_trees{'indices'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'indices'}{'contents'}[3];
$result_trees{'indices'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[3];
$result_trees{'indices'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'indices'}{'contents'}[3];
$result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'indices'}{'contents'}[3];
$result_trees{'indices'}{'contents'}[4]{'contents'}[5]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[5]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[5]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[5];
$result_trees{'indices'}{'contents'}[4]{'contents'}[5]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'indices'}{'contents'}[3];
$result_trees{'indices'}{'contents'}[4]{'contents'}[6]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[6]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[6]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[6]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[6]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[6];
$result_trees{'indices'}{'contents'}[4]{'contents'}[6]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'indices'}{'contents'}[3];
$result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[8];
$result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'indices'}{'contents'}[3];
$result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'extra'}{'subentry'}{'extra'}{'seealso'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11];
$result_trees{'indices'}{'contents'}[4]{'contents'}[9] = $result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'extra'}{'subentry'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[10];
$result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'indices'}{'contents'}[3];
$result_trees{'indices'}{'contents'}[4]{'contents'}[11]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[11]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[11]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[11]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[11]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[11];
$result_trees{'indices'}{'contents'}[4]{'contents'}[11]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'indices'}{'contents'}[3];
$result_trees{'indices'}{'contents'}[4]{'contents'}[15]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[15]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[15]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[15]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[15]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[15];
$result_trees{'indices'}{'contents'}[4]{'contents'}[15]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'indices'}{'contents'}[3];
$result_trees{'indices'}{'contents'}[4]{'contents'}[17]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[17]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[17]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[17]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[17]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[17];
$result_trees{'indices'}{'contents'}[4]{'contents'}[17]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'indices'}{'contents'}[3];

$result_texis{'indices'} = '
@set txiindexbackslashignore

@node Top
@top top section

@node chapter
@chapter Index

@cindex @"a @"{o}
@cindex AA
@cindex aa
@cindex i
@cindex Z
@cindex @^i

@cindex @math{a!"@@b} "!@@ @"a @"{o} @subentry @sortas{a!"@@b} sub@math{a!"@@b} sub "!@@ @"a @"{o} @seealso{@math{a!"@@b} "!@@ @"a @"{o}}
@cindex \\cmd
@cindex totocmd @sortas{\\cmd}

@clear txiindexbackslashignore

@cindex \\some\\command for @file{file} @c comment

@findex the @r{person} index @file{aa}

@printindex cp

@printindex fn
';


$result_texts{'indices'} = '
top section
***********

1 Index
*******







';

$result_sectioning{'indices'} = {
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
            'info' => {},
            'structure' => {}
          }
        },
        'info' => {},
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'chapter'
                  },
                  'info' => {},
                  'structure' => {}
                }
              },
              'info' => {},
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
$result_sectioning{'indices'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'indices'}{'structure'}{'section_childs'}[0];
$result_sectioning{'indices'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'indices'}{'structure'}{'section_childs'}[0];
$result_sectioning{'indices'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'indices'}{'structure'}{'section_childs'}[0];
$result_sectioning{'indices'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'indices'};

$result_nodes{'indices'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'info' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'info' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'isindex' => 1,
        'normalized' => 'chapter'
      },
      'info' => {},
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'indices'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'indices'};
$result_nodes{'indices'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'indices'};

$result_menus{'indices'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {}
};

$result_errors{'indices'} = [
  {
    'error_line' => 'misplaced {
',
    'file_name' => '',
    'line_nr' => 23,
    'macro' => '',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'file_name' => '',
    'line_nr' => 23,
    'macro' => '',
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'indices'} = {};


$result_indices_sort_strings{'indices'} = {
  'cp' => [
    '\\cmd',
    '\\some\\command for file',
    'a!"@b "!@ a" o", a!"@b',
    'a" o"',
    'AA',
    'aa',
    'cmd',
    'i',
    'i^',
    'Z'
  ],
  'fn' => [
    'the person index aa'
  ]
};



$result_converted{'latex_text'}->{'indices'} = '
\\begin{document}
\\label{anchor:Top}%
\\chapter{{Index}}
\\label{anchor:chapter}%

\\index[cp]{?? ??@"\\""{a} "\\""{o}}%
\\index[cp]{AA@AA}%
\\index[cp]{aa@aa}%
\\index[cp]{i@i}%
\\index[cp]{Z@Z}%
\\index[cp]{??@\\^{i}}%

\\index[cp]{a"!"""@b """!"@ ?? ??@$a"!"""@b$ """!"@ "\\""{a} "\\""{o}!a"!"""@b@sub$a"!"""@b$ sub """!"@ "\\""{a} "\\""{o}|seealso{$a!"@b$ "!@ \\"{a} \\"{o}}}%
\\index[cp]{cmd@\\textbackslash{}cmd}%
\\index[cp]{\\textbackslash{}cmd@totocmd}%


\\index[cp]{\\textbackslash{}some\\textbackslash{}command for file@\\textbackslash{}some\\textbackslash{}command for \\texttt{file}}%

\\index[fn]{the person index aa@\\texttt{the \\textnormal{person}\\ index \\texttt{aa}}}%

\\printindex[cp]

\\printindex[fn]
';

1;
