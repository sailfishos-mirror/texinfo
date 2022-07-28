use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'definition_commands'} = {
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
                      'text' => 'definition_commands.info'
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
                'text_arg' => 'definition_commands.info'
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
            }
          ],
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
        'line_nr' => 3,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'top section'
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
        'line_nr' => 6,
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
      'cmdname' => 'chapter',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
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
                      'parent' => {},
                      'text' => 'Func'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'text' => 'fname'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'a---rg1'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'a--rg2'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'spaces_at_end'
                    }
                  ],
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'deffn',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {}
                  ],
                  'content_normalized' => [
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deffn',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deffn',
                  'node' => {},
                  'number' => 1
                },
                'original_def_cmdname' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'deffn no var for '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'a---rg1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 10,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' and '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'a--rg2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 10,
                        'macro' => ''
                      }
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
              'parent' => {},
              'type' => 'def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'deffn'
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
                'command_argument' => 'deffn',
                'spaces_before_argument' => ' ',
                'text_arg' => 'deffn'
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
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 9,
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
                      'parent' => {},
                      'text' => 'Func'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'text' => 'fname'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'a---rg1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 13,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'a--rg2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 13,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'spaces_at_end'
                    }
                  ],
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'deffn',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {}
                  ],
                  'content_normalized' => [
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deffn',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deffn',
                  'node' => {},
                  'number' => 2
                },
                'original_def_cmdname' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 13,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'deffn explict var for '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'a---rg1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 14,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' and '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'a--rg2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 14,
                        'macro' => ''
                      }
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
              'parent' => {},
              'type' => 'def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'deffn'
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
                'command_argument' => 'deffn',
                'spaces_before_argument' => ' ',
                'text_arg' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 15,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
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
                      'parent' => {},
                      'text' => 'Func'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'text' => 'fname'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
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
                                      'text' => 'a---rg1'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'slanted',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 17,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'r',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 17,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
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
                                      'text' => 'a--rg2'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'slanted',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 17,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'r',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 17,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'spaces_at_end'
                    }
                  ],
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'deffn',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {}
                  ],
                  'content_normalized' => [
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deffn',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deffn',
                  'node' => {},
                  'number' => 3
                },
                'original_def_cmdname' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 17,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'deffn r slanted for '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'a---rg1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 18,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' and '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'a--rg2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 18,
                        'macro' => ''
                      }
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
              'parent' => {},
              'type' => 'def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'deffn'
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
                'command_argument' => 'deffn',
                'spaces_before_argument' => ' ',
                'text_arg' => 'deffn'
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
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 17,
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
          'cmdname' => 'defspec',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Special Form'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'type' => 'bracketed_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'text' => 'foobar'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => '(',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'var'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => '[',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'from'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'to'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => '[',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'inc'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ']',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ']',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ')',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'body'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'dots',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 21,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'spaces_at_end'
                    }
                  ],
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'defspec',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {}
                  ],
                  'content_normalized' => [
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'defspec',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'defspec',
                  'node' => {},
                  'number' => 4
                },
                'original_def_cmdname' => 'defspec'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'defspec'
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
                'command_argument' => 'defspec',
                'spaces_before_argument' => ' ',
                'text_arg' => 'defspec'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 22,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 21,
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
          'cmdname' => 'deftypefn',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Library Function'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 24,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'text' => 'int'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'text' => 'foobar'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '  ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => '(',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'int'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'f---oo'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 24,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'float'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'b--ar'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 24,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ')',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'spaces_at_end'
                    }
                  ],
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'deftypefn',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {}
                  ],
                  'content_normalized' => [
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypefn',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypefn',
                  'node' => {},
                  'number' => 5
                },
                'original_def_cmdname' => 'deftypefn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 24,
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
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'dots',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 25,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' with var for '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'f---oo'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 25,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' and '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'b--ar'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 25,
                        'macro' => ''
                      }
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
              'parent' => {},
              'type' => 'def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'deftypefn'
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
                'command_argument' => 'deftypefn',
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypefn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 26,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 24,
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
          'cmdname' => 'deftypefn',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Library Function'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 28,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'text' => 'int'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'text' => 'foobar'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '  ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => '(',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'int'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
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
                                      'text' => 'f---oo'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'slanted',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 28,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'r',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 28,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'float'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
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
                                      'text' => 'b--ar'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'slanted',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 28,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'r',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 28,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ')',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'spaces_at_end'
                    }
                  ],
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'deftypefn',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {}
                  ],
                  'content_normalized' => [
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypefn',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypefn',
                  'node' => {},
                  'number' => 6
                },
                'original_def_cmdname' => 'deftypefn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 28,
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
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'dots',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 29,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' with r slanted for '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'f---oo'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 29,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' and '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'b--ar'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
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
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'parent' => {},
              'type' => 'def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'deftypefn'
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
                'command_argument' => 'deftypefn',
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypefn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 30,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 28,
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
          'cmdname' => 'noindent',
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 32,
            'macro' => ''
          }
        },
        {
          'extra' => {
            'command' => {}
          },
          'parent' => {},
          'text' => ' ',
          'type' => 'empty_spaces_after_command'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'produces:
'
            }
          ],
          'extra' => {
            'noindent' => 1
          },
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'defcv',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Class Option'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 33,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'class'
                      },
                      'parent' => {},
                      'text' => 'Window'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'text' => 'border-pattern'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'spaces_at_end'
                    }
                  ],
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'defcv',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {}
                  ],
                  'content_normalized' => [
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'defcv',
                  'index_ignore_chars' => {},
                  'index_name' => 'vr',
                  'index_type_command' => 'defcv',
                  'node' => {},
                  'number' => 1
                },
                'original_def_cmdname' => 'defcv'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 33,
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
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'dots',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 34,
                        'macro' => ''
                      }
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
              'parent' => {},
              'type' => 'def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'defcv'
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
                'command_argument' => 'defcv',
                'spaces_before_argument' => ' ',
                'text_arg' => 'defcv'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 35,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 33,
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
          'cmdname' => 'deftypecv',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Class Option'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 37,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'class'
                      },
                      'text' => 'Window'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'int'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 37,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'text' => 'border-pattern'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'spaces_at_end'
                    }
                  ],
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'deftypecv',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' of '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' of '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypecv',
                  'index_ignore_chars' => {},
                  'index_name' => 'vr',
                  'index_type_command' => 'deftypecv',
                  'node' => {},
                  'number' => 2
                },
                'original_def_cmdname' => 'deftypecv'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 37,
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
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'dots',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 38,
                        'macro' => ''
                      }
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
              'parent' => {},
              'type' => 'def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'deftypecv'
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
                'command_argument' => 'deftypecv',
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypecv'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 39,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 37,
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
          'cmdname' => 'quotation',
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
              'cmdname' => 'deftypefn',
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'Library Function'
                            }
                          ],
                          'extra' => {
                            'def_role' => 'category'
                          },
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 42,
                            'macro' => ''
                          },
                          'type' => 'bracketed_def_content'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'spaces'
                        },
                        {
                          'extra' => {
                            'def_role' => 'type'
                          },
                          'parent' => {},
                          'text' => 'int'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'spaces'
                        },
                        {
                          'extra' => {
                            'def_role' => 'name'
                          },
                          'parent' => {},
                          'text' => 'foobar'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => '  ',
                          'type' => 'spaces'
                        },
                        {
                          'extra' => {
                            'def_role' => 'delimiter'
                          },
                          'parent' => {},
                          'text' => '(',
                          'type' => 'delimiter'
                        },
                        {
                          'extra' => {
                            'def_role' => 'typearg'
                          },
                          'parent' => {},
                          'text' => 'int'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'spaces'
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'foo'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'var',
                          'contents' => [],
                          'extra' => {
                            'def_role' => 'arg'
                          },
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 42,
                            'macro' => ''
                          }
                        },
                        {
                          'extra' => {
                            'def_role' => 'delimiter'
                          },
                          'parent' => {},
                          'text' => ',',
                          'type' => 'delimiter'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'spaces'
                        },
                        {
                          'extra' => {
                            'def_role' => 'typearg'
                          },
                          'parent' => {},
                          'text' => 'float'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'spaces'
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'bar'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'var',
                          'contents' => [],
                          'extra' => {
                            'def_role' => 'arg'
                          },
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 42,
                            'macro' => ''
                          }
                        },
                        {
                          'extra' => {
                            'def_role' => 'delimiter'
                          },
                          'parent' => {},
                          'text' => ')',
                          'type' => 'delimiter'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => '
',
                          'type' => 'spaces_at_end'
                        }
                      ],
                      'parent' => {},
                      'type' => 'block_line_arg'
                    }
                  ],
                  'extra' => {
                    'def_command' => 'deftypefn',
                    'def_parsed_hash' => {
                      'category' => {},
                      'name' => {},
                      'type' => {}
                    },
                    'index_entry' => {
                      'command' => {},
                      'content' => [
                        {}
                      ],
                      'content_normalized' => [
                        {}
                      ],
                      'in_code' => 1,
                      'index_at_command' => 'deftypefn',
                      'index_ignore_chars' => {},
                      'index_name' => 'fn',
                      'index_type_command' => 'deftypefn',
                      'node' => {},
                      'number' => 7
                    },
                    'original_def_cmdname' => 'deftypefn'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 42,
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
                              'contents' => [],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'dots',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 43,
                            'macro' => ''
                          }
                        },
                        {
                          'parent' => {},
                          'text' => ' for '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'foo'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'var',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 43,
                            'macro' => ''
                          }
                        },
                        {
                          'parent' => {},
                          'text' => ' and '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'bar'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'var',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 43,
                            'macro' => ''
                          }
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
                  'parent' => {},
                  'type' => 'def_item'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'deftypefn'
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
                    'command_argument' => 'deftypefn',
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'deftypefn'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 44,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'end_command' => {},
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 42,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'quotation'
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
                'command_argument' => 'quotation',
                'spaces_before_argument' => ' ',
                'text_arg' => 'quotation'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 41,
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
          'cmdname' => 'defun',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Function'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'type' => 'bracketed_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'text' => 'apply'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'function'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => '&rest'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'arguments'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'spaces_at_end'
                    }
                  ],
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'defun',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {}
                  ],
                  'content_normalized' => [
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'defun',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'defun',
                  'node' => {},
                  'number' => 8
                },
                'original_def_cmdname' => 'defun'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 47,
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
                              'parent' => {},
                              'text' => 'apply'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 48,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' calls no var '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'function'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 48,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' with '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'arguments'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 48,
                        'macro' => ''
                      }
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
              'parent' => {},
              'type' => 'def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'defun'
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
                'command_argument' => 'defun',
                'spaces_before_argument' => ' ',
                'text_arg' => 'defun'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 49,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 47,
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
          'cmdname' => 'defun',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Function'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'type' => 'bracketed_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'text' => 'apply'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'function'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
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
                                      'text' => '&rest'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'b',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 51,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'r',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 51,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'argument'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'spaces_at_end'
                    }
                  ],
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'defun',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {}
                  ],
                  'content_normalized' => [
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'defun',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'defun',
                  'node' => {},
                  'number' => 9
                },
                'original_def_cmdname' => 'defun'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 51,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'explicit keyword marking, no var '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'function'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 52,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' with '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'arguments'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 52,
                        'macro' => ''
                      }
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
              'parent' => {},
              'type' => 'def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'defun'
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
                'command_argument' => 'defun',
                'spaces_before_argument' => ' ',
                'text_arg' => 'defun'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 53,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 51,
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
                      'parent' => {},
                      'text' => 'Category'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'text' => 'name'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'argument'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'int'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 55,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'a--b'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 55,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'v--ar1'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 55,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'word'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => '--'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 55,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => '(',
                      'type' => 'delimiter'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'type o--ther'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 55,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ',',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'v---ar2'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 55,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '  ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => '[',
                      'type' => 'delimiter'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'float'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 56,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => '[',
                      'type' => 'delimiter'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'var4'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 56,
                        'macro' => ''
                      }
                    },
                    {
                      'extra' => {
                        'def_role' => 'delimiter'
                      },
                      'parent' => {},
                      'text' => ')',
                      'type' => 'delimiter'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'spaces_at_end'
                    }
                  ],
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'deffn',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {}
                  ],
                  'content_normalized' => [
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deffn',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deffn',
                  'node' => {},
                  'number' => 10
                },
                'original_def_cmdname' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 55,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'In deffn with code and var used
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'parent' => {},
              'type' => 'def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'deffn'
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
                'command_argument' => 'deffn',
                'spaces_before_argument' => ' ',
                'text_arg' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 58,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 55,
            'macro' => ''
          }
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 7,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'definition_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[0]{'parent'} = $result_trees{'definition_commands'};
$result_trees{'definition_commands'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[1]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'definition_commands'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'definition_commands'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[1]{'parent'} = $result_trees{'definition_commands'};
$result_trees{'definition_commands'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[2]{'parent'} = $result_trees{'definition_commands'};
$result_trees{'definition_commands'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[3]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'definition_commands'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'definition_commands'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[3]{'parent'} = $result_trees{'definition_commands'};
$result_trees{'definition_commands'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'definition_commands'}{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'definition_commands'}{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'definition_commands'}{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'extra'}{'end_command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[17]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[18]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[19]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[19];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[19]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[20]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'definition_commands'}{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'extra'}{'end_command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[9];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[14];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'definition_commands'}{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'extra'}{'end_command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[9];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[14];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'definition_commands'}{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'extra'}{'end_command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[13]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[14]{'extra'}{'command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[13];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[14]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[15]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[15];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[15]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'definition_commands'}{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'extra'}{'end_command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[16]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[17]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'definition_commands'}{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'extra'}{'end_command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[18]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[19]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[0]{'extra'}{'command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[9];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[14];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'definition_commands'}{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'extra'}{'end_command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[20]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[21]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'definition_commands'}{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'extra'}{'end_command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[22]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[23]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'definition_commands'}{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'extra'}{'end_command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[24]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[25]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[10];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[15]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[15]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[15]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[15];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[17]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[18]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[18]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[18];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[18]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[19]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[20]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[21]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[21]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[21]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[21];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[21]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[22]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[23]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[24]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[24]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[24]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[24];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[24]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[25]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[26]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[27]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[27]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[27]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[27];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[27]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[28]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[29]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'definition_commands'}{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'extra'}{'end_command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[26]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[27]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'parent'} = $result_trees{'definition_commands'};

$result_texis{'definition_commands'} = '@setfilename definition_commands.info

@node Top
@top top section

@node chapter
@chapter chapter

@deffn Func fname a---rg1 a--rg2
deffn no var for @var{a---rg1} and @var{a--rg2}
@end deffn

@deffn Func fname @var{a---rg1} @var{a--rg2}
deffn explict var for @var{a---rg1} and @var{a--rg2}
@end deffn

@deffn Func fname @r{@slanted{a---rg1}} @r{@slanted{a--rg2}}
deffn r slanted for @var{a---rg1} and @var{a--rg2}
@end deffn

@defspec foobar (var [from to [inc]]) body@dots{}
@end defspec

@deftypefn {Library Function} int foobar  (int @var{f---oo}, float @var{b--ar})
@dots{} with var for @var{f---oo} and @var{b--ar}
@end deftypefn

@deftypefn {Library Function} int foobar  (int @r{@slanted{f---oo}}, float @r{@slanted{b--ar}})
@dots{} with r slanted for @var{f---oo} and @var{b--ar}
@end deftypefn

@noindent produces:
@defcv {Class Option} Window border-pattern
@dots{}
@end defcv

@deftypecv {Class Option} Window @code{int} border-pattern
@dots{}
@end deftypecv

@quotation
@deftypefn {Library Function} int foobar  (int @var{foo}, float @var{bar})
@dots{} for @var{foo} and @var{bar}
@end deftypefn
@end quotation

@defun apply function &rest arguments
@code{apply} calls no var @var{function} with @var{arguments}
@end defun

@defun apply function @r{@b{&rest}} argument
explicit keyword marking, no var @var{function} with @var{arguments}
@end defun

@deffn Category name argument @code{int} @code{a--b} @var{v--ar1}, word @code{--} (@code{type o--ther}, @var{v---ar2}  [@code{float} [@var{var4})
In deffn with code and var used
@end deffn

';


$result_texts{'definition_commands'} = '
top section
***********

1 chapter
*********

Func: fname a---rg1 a--rg2
deffn no var for a--rg1 and a-rg2

Func: fname a---rg1 a--rg2
deffn explict var for a--rg1 and a-rg2

Func: fname a---rg1 a--rg2
deffn r slanted for a--rg1 and a-rg2

Special Form: foobar (var [from to [inc]]) body...

Library Function: int foobar (int f---oo, float b--ar)
... with var for f--oo and b-ar

Library Function: int foobar (int f---oo, float b--ar)
... with r slanted for f--oo and b-ar

produces:
Class Option of Window: border-pattern
...

Class Option of Window: int border-pattern
...

Library Function: int foobar (int foo, float bar)
... for foo and bar

Function: apply function &rest arguments
apply calls no var function with arguments

Function: apply function &rest argument
explicit keyword marking, no var function with arguments

Category: name argument int a--b v--ar1, word -- (type o--ther, v---ar2  [float [var4)
In deffn with code and var used

';

$result_sectioning{'definition_commands'} = {
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
$result_sectioning{'definition_commands'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'definition_commands'}{'structure'}{'section_childs'}[0];
$result_sectioning{'definition_commands'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'definition_commands'}{'structure'}{'section_childs'}[0];
$result_sectioning{'definition_commands'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'definition_commands'}{'structure'}{'section_childs'}[0];
$result_sectioning{'definition_commands'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'definition_commands'};

$result_nodes{'definition_commands'} = {
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
$result_nodes{'definition_commands'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'definition_commands'};
$result_nodes{'definition_commands'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'definition_commands'};

$result_menus{'definition_commands'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'definition_commands'} = [];


$result_floats{'definition_commands'} = {};


$result_indices_sort_strings{'definition_commands'} = {
  'fn' => [
    'apply',
    'apply',
    'fname',
    'fname',
    'fname',
    'foobar',
    'foobar',
    'foobar',
    'foobar',
    'name'
  ],
  'vr' => [
    'border-pattern',
    'border-pattern of Window'
  ]
};



$result_converted{'plaintext'}->{'definition_commands'} = 'top section
***********

1 chapter
*********

 -- Func: fname a---rg1 a--rg2
     deffn no var for A—RG1 and A–RG2

 -- Func: fname A---RG1 A--RG2
     deffn explict var for A—RG1 and A–RG2

 -- Func: fname a—rg1 a–rg2
     deffn r slanted for A—RG1 and A–RG2

 -- Special Form: foobar (var [from to [inc]]) body...

 -- Library Function: int foobar (int F---OO, float B--AR)
     ... with var for F—OO and B–AR

 -- Library Function: int foobar (int f—oo, float b–ar)
     ... with r slanted for F—OO and B–AR

produces:
 -- Class Option of Window: border-pattern
     ...

 -- Class Option of Window: int border-pattern
     ...

      -- Library Function: int foobar (int FOO, float BAR)
          ... for FOO and BAR

 -- Function: apply function &rest arguments
     ‘apply’ calls no var FUNCTION with ARGUMENTS

 -- Function: apply function &rest argument
     explicit keyword marking, no var FUNCTION with ARGUMENTS

 -- Category: name argument int a--b V--AR1, word -- (type o--ther,
          V---AR2 [float [VAR4)
     In deffn with code and var used

';


$result_converted{'html_text'}->{'definition_commands'} = '
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h1 class="top" id="top-section">top section</h1>

<ul class="mini-toc">
<li><a href="#chapter" accesskey="1">chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h2 class="chapter" id="chapter-1">1 chapter</h2>

<dl class="first-deffn">
<dt class="deffn" id="index-fname"><span class="category-def">Func: </span><span><strong class="strong">fname</strong> <em class="emph">a---rg1 a--rg2</em><a class="copiable-link" href=\'#index-fname\'> &para;</a></span></dt>
<dd><p>deffn no var for <var class="var">a&mdash;rg1</var> and <var class="var">a&ndash;rg2</var>
</p></dd></dl>

<dl class="first-deffn">
<dt class="deffn" id="index-fname-1"><span class="category-def">Func: </span><span><strong class="strong">fname</strong> <em class="emph"><var class="var">a---rg1</var> <var class="var">a--rg2</var></em><a class="copiable-link" href=\'#index-fname-1\'> &para;</a></span></dt>
<dd><p>deffn explict var for <var class="var">a&mdash;rg1</var> and <var class="var">a&ndash;rg2</var>
</p></dd></dl>

<dl class="first-deffn">
<dt class="deffn" id="index-fname-2"><span class="category-def">Func: </span><span><strong class="strong">fname</strong> <em class="emph"><span class="r"><i class="slanted">a&mdash;rg1</i></span> <span class="r"><i class="slanted">a&ndash;rg2</i></span></em><a class="copiable-link" href=\'#index-fname-2\'> &para;</a></span></dt>
<dd><p>deffn r slanted for <var class="var">a&mdash;rg1</var> and <var class="var">a&ndash;rg2</var>
</p></dd></dl>

<dl class="first-deffn first-defspec-alias-first-deffn">
<dt class="deffn defspec-alias-deffn" id="index-foobar"><span class="category-def">Special Form: </span><span><strong class="strong">foobar</strong> <em class="emph">(var [from to [inc]]) body&hellip;</em><a class="copiable-link" href=\'#index-foobar\'> &para;</a></span></dt>
</dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-foobar-1"><span class="category-def">Library Function: </span><span><em class="emph">int</em> <strong class="strong">foobar</strong> <em class="emph">(int <var class="var">f---oo</var>, float <var class="var">b--ar</var>)</em><a class="copiable-link" href=\'#index-foobar-1\'> &para;</a></span></dt>
<dd><p>&hellip; with var for <var class="var">f&mdash;oo</var> and <var class="var">b&ndash;ar</var>
</p></dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-foobar-2"><span class="category-def">Library Function: </span><span><em class="emph">int</em> <strong class="strong">foobar</strong> <em class="emph">(int <span class="r"><i class="slanted">f&mdash;oo</i></span>, float <span class="r"><i class="slanted">b&ndash;ar</i></span>)</em><a class="copiable-link" href=\'#index-foobar-2\'> &para;</a></span></dt>
<dd><p>&hellip; with r slanted for <var class="var">f&mdash;oo</var> and <var class="var">b&ndash;ar</var>
</p></dd></dl>

<p>produces:
</p><dl class="first-defcv">
<dt class="defcv" id="index-border_002dpattern"><span>Class Option of Window: <strong class="strong">border-pattern</strong><a class="copiable-link" href=\'#index-border_002dpattern\'> &para;</a></span></dt>
<dd><p>&hellip;
</p></dd></dl>

<dl class="first-deftypecv">
<dt class="deftypecv" id="index-border_002dpattern-of-Window"><span>Class Option of Window: <em class="emph"><code class="code">int</code></em> <strong class="strong">border-pattern</strong><a class="copiable-link" href=\'#index-border_002dpattern-of-Window\'> &para;</a></span></dt>
<dd><p>&hellip;
</p></dd></dl>

<blockquote class="quotation">
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-foobar-3"><span class="category-def">Library Function: </span><span><em class="emph">int</em> <strong class="strong">foobar</strong> <em class="emph">(int <var class="var">foo</var>, float <var class="var">bar</var>)</em><a class="copiable-link" href=\'#index-foobar-3\'> &para;</a></span></dt>
<dd><p>&hellip; for <var class="var">foo</var> and <var class="var">bar</var>
</p></dd></dl>
</blockquote>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-apply"><span class="category-def">Function: </span><span><strong class="strong">apply</strong> <em class="emph">function &amp;rest arguments</em><a class="copiable-link" href=\'#index-apply\'> &para;</a></span></dt>
<dd><p><code class="code">apply</code> calls no var <var class="var">function</var> with <var class="var">arguments</var>
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-apply-1"><span class="category-def">Function: </span><span><strong class="strong">apply</strong> <em class="emph">function <span class="r"><b class="b">&amp;rest</b></span> argument</em><a class="copiable-link" href=\'#index-apply-1\'> &para;</a></span></dt>
<dd><p>explicit keyword marking, no var <var class="var">function</var> with <var class="var">arguments</var>
</p></dd></dl>

<dl class="first-deffn">
<dt class="deffn" id="index-name"><span class="category-def">Category: </span><span><strong class="strong">name</strong> <em class="emph">argument <code class="code">int</code> <code class="code">a--b</code> <var class="var">v--ar1</var>, word <code class="code">--</code> (<code class="code">type o--ther</code>, <var class="var">v---ar2</var>  [<code class="code">float</code> [<var class="var">var4</var>)</em><a class="copiable-link" href=\'#index-name\'> &para;</a></span></dt>
<dd><p>In deffn with code and var used
</p></dd></dl>

</div>
</div>
';


$result_converted{'xml'}->{'definition_commands'} = '<setfilename file="definition_commands.info" spaces=" ">definition_commands.info</setfilename>

<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter</nodenext></node>
<top spaces=" "><sectiontitle>top section</sectiontitle>

</top>
<node name="chapter" spaces=" "><nodename>chapter</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chapter</sectiontitle>

<deffn spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="1">fname</indexterm><defcategory>Func</defcategory> <deffunction>fname</deffunction> <defparam>a---rg1</defparam> <defparam>a--rg2</defparam></definitionterm>
<definitionitem><para>deffn no var for <var>a&textmdash;rg1</var> and <var>a&textndash;rg2</var>
</para></definitionitem></deffn>

<deffn spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="2">fname</indexterm><defcategory>Func</defcategory> <deffunction>fname</deffunction> <defparam><var>a---rg1</var></defparam> <defparam><var>a--rg2</var></defparam></definitionterm>
<definitionitem><para>deffn explict var for <var>a&textmdash;rg1</var> and <var>a&textndash;rg2</var>
</para></definitionitem></deffn>

<deffn spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="3">fname</indexterm><defcategory>Func</defcategory> <deffunction>fname</deffunction> <defparam><r><slanted>a&textmdash;rg1</slanted></r></defparam> <defparam><r><slanted>a&textndash;rg2</slanted></r></defparam></definitionterm>
<definitionitem><para>deffn r slanted for <var>a&textmdash;rg1</var> and <var>a&textndash;rg2</var>
</para></definitionitem></deffn>

<defspec spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="4">foobar</indexterm><defcategory automatic="on" bracketed="on">Special Form</defcategory> <deffunction>foobar</deffunction> <defdelimiter>(</defdelimiter><defparam>var</defparam> <defdelimiter>[</defdelimiter><defparam>from</defparam> <defparam>to</defparam> <defdelimiter>[</defdelimiter><defparam>inc</defparam><defdelimiter>]</defdelimiter><defdelimiter>]</defdelimiter><defdelimiter>)</defdelimiter> <defparam>body</defparam><defparam>&dots;</defparam></definitionterm>
</defspec>

<deftypefn spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="5">foobar</indexterm><defcategory bracketed="on">Library Function</defcategory> <deftype>int</deftype> <deffunction>foobar</deffunction>  <defdelimiter>(</defdelimiter><defparamtype>int</defparamtype> <defparam><var>f---oo</var></defparam><defdelimiter>,</defdelimiter> <defparamtype>float</defparamtype> <defparam><var>b--ar</var></defparam><defdelimiter>)</defdelimiter></definitionterm>
<definitionitem><para>&dots; with var for <var>f&textmdash;oo</var> and <var>b&textndash;ar</var>
</para></definitionitem></deftypefn>

<deftypefn spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="6">foobar</indexterm><defcategory bracketed="on">Library Function</defcategory> <deftype>int</deftype> <deffunction>foobar</deffunction>  <defdelimiter>(</defdelimiter><defparamtype>int</defparamtype> <defparam><r><slanted>f&textmdash;oo</slanted></r></defparam><defdelimiter>,</defdelimiter> <defparamtype>float</defparamtype> <defparam><r><slanted>b&textndash;ar</slanted></r></defparam><defdelimiter>)</defdelimiter></definitionterm>
<definitionitem><para>&dots; with r slanted for <var>f&textmdash;oo</var> and <var>b&textndash;ar</var>
</para></definitionitem></deftypefn>

<noindent></noindent><para>produces:
</para><defcv spaces=" " endspaces=" "><definitionterm><indexterm index="vr" number="1">border-pattern</indexterm><defcategory bracketed="on">Class Option</defcategory> <defclass>Window</defclass> <defclassvar>border-pattern</defclassvar></definitionterm>
<definitionitem><para>&dots;
</para></definitionitem></defcv>

<deftypecv spaces=" " endspaces=" "><definitionterm><indexterm index="vr" number="2">border-pattern of Window</indexterm><defcategory bracketed="on">Class Option</defcategory> <defclass>Window</defclass> <deftype><code>int</code></deftype> <defclassvar>border-pattern</defclassvar></definitionterm>
<definitionitem><para>&dots;
</para></definitionitem></deftypecv>

<quotation endspaces=" ">
<deftypefn spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="7">foobar</indexterm><defcategory bracketed="on">Library Function</defcategory> <deftype>int</deftype> <deffunction>foobar</deffunction>  <defdelimiter>(</defdelimiter><defparamtype>int</defparamtype> <defparam><var>foo</var></defparam><defdelimiter>,</defdelimiter> <defparamtype>float</defparamtype> <defparam><var>bar</var></defparam><defdelimiter>)</defdelimiter></definitionterm>
<definitionitem><para>&dots; for <var>foo</var> and <var>bar</var>
</para></definitionitem></deftypefn>
</quotation>

<defun spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="8">apply</indexterm><defcategory automatic="on" bracketed="on">Function</defcategory> <deffunction>apply</deffunction> <defparam>function</defparam> <defparam>&amp;rest</defparam> <defparam>arguments</defparam></definitionterm>
<definitionitem><para><code>apply</code> calls no var <var>function</var> with <var>arguments</var>
</para></definitionitem></defun>

<defun spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="9">apply</indexterm><defcategory automatic="on" bracketed="on">Function</defcategory> <deffunction>apply</deffunction> <defparam>function</defparam> <defparam><r><b>&amp;rest</b></r></defparam> <defparam>argument</defparam></definitionterm>
<definitionitem><para>explicit keyword marking, no var <var>function</var> with <var>arguments</var>
</para></definitionitem></defun>

<deffn spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="10">name</indexterm><defcategory>Category</defcategory> <deffunction>name</deffunction> <defparam>argument</defparam> <defparam><code>int</code></defparam> <defparam><code>a--b</code></defparam> <defparam><var>v--ar1</var></defparam><defdelimiter>,</defdelimiter> <defparam>word</defparam> <defparam><code>--</code></defparam> <defdelimiter>(</defdelimiter><defparam><code>type o--ther</code></defparam><defdelimiter>,</defdelimiter> <defparam><var>v---ar2</var></defparam>  <defdelimiter>[</defdelimiter><defparam><code>float</code></defparam> <defdelimiter>[</defdelimiter><defparam><var>var4</var></defparam><defdelimiter>)</defdelimiter></definitionterm>
<definitionitem><para>In deffn with code and var used
</para></definitionitem></deffn>

</chapter>
';


$result_converted{'docbook'}->{'definition_commands'} = '<chapter label="1" id="chapter">
<title>chapter</title>

<synopsis><indexterm role="fn"><primary>fname</primary></indexterm><phrase role="category"><emphasis role="bold">Func</emphasis>:</phrase> <function>fname</function> <emphasis role="arg">a---rg1</emphasis> <emphasis role="arg">a--rg2</emphasis></synopsis>
<blockquote><para>deffn no var for <replaceable>a&#8212;rg1</replaceable> and <replaceable>a&#8211;rg2</replaceable>
</para></blockquote>
<synopsis><indexterm role="fn"><primary>fname</primary></indexterm><phrase role="category"><emphasis role="bold">Func</emphasis>:</phrase> <function>fname</function> <emphasis role="arg"><replaceable>a---rg1</replaceable></emphasis> <emphasis role="arg"><replaceable>a--rg2</replaceable></emphasis></synopsis>
<blockquote><para>deffn explict var for <replaceable>a&#8212;rg1</replaceable> and <replaceable>a&#8211;rg2</replaceable>
</para></blockquote>
<synopsis><indexterm role="fn"><primary>fname</primary></indexterm><phrase role="category"><emphasis role="bold">Func</emphasis>:</phrase> <function>fname</function> <emphasis role="arg">a&#8212;rg1</emphasis> <emphasis role="arg">a&#8211;rg2</emphasis></synopsis>
<blockquote><para>deffn r slanted for <replaceable>a&#8212;rg1</replaceable> and <replaceable>a&#8211;rg2</replaceable>
</para></blockquote>
<synopsis><indexterm role="fn"><primary>foobar</primary></indexterm><phrase role="category"><emphasis role="bold">Special Form</emphasis>:</phrase> <function>foobar</function> (<emphasis role="arg">var</emphasis> [<emphasis role="arg">from</emphasis> <emphasis role="arg">to</emphasis> [<emphasis role="arg">inc</emphasis>]]) <emphasis role="arg">body</emphasis><emphasis role="arg">&#8230;</emphasis></synopsis>

<synopsis><indexterm role="fn"><primary>foobar</primary></indexterm><phrase role="category"><emphasis role="bold">Library Function</emphasis>:</phrase> <returnvalue>int</returnvalue> <function>foobar</function>  (<type>int</type> <emphasis role="arg"><replaceable>f---oo</replaceable></emphasis>, <type>float</type> <emphasis role="arg"><replaceable>b--ar</replaceable></emphasis>)</synopsis>
<blockquote><para>&#8230; with var for <replaceable>f&#8212;oo</replaceable> and <replaceable>b&#8211;ar</replaceable>
</para></blockquote>
<synopsis><indexterm role="fn"><primary>foobar</primary></indexterm><phrase role="category"><emphasis role="bold">Library Function</emphasis>:</phrase> <returnvalue>int</returnvalue> <function>foobar</function>  (<type>int</type> <emphasis role="arg">f&#8212;oo</emphasis>, <type>float</type> <emphasis role="arg">b&#8211;ar</emphasis>)</synopsis>
<blockquote><para>&#8230; with r slanted for <replaceable>f&#8212;oo</replaceable> and <replaceable>b&#8211;ar</replaceable>
</para></blockquote>
<para>produces:
</para><synopsis><indexterm role="vr"><primary>border-pattern</primary></indexterm><phrase role="category"><emphasis role="bold">Class Option</emphasis>:</phrase> <ooclass><classname>Window</classname></ooclass> <property>border-pattern</property></synopsis>
<blockquote><para>&#8230;
</para></blockquote>
<synopsis><indexterm role="vr"><primary>border-pattern of Window</primary></indexterm><phrase role="category"><emphasis role="bold">Class Option</emphasis>:</phrase> <ooclass><classname>Window</classname></ooclass> <returnvalue>int</returnvalue> <property>border-pattern</property></synopsis>
<blockquote><para>&#8230;
</para></blockquote>
<blockquote><synopsis><indexterm role="fn"><primary>foobar</primary></indexterm><phrase role="category"><emphasis role="bold">Library Function</emphasis>:</phrase> <returnvalue>int</returnvalue> <function>foobar</function>  (<type>int</type> <emphasis role="arg"><replaceable>foo</replaceable></emphasis>, <type>float</type> <emphasis role="arg"><replaceable>bar</replaceable></emphasis>)</synopsis>
<blockquote><para>&#8230; for <replaceable>foo</replaceable> and <replaceable>bar</replaceable>
</para></blockquote></blockquote>
<synopsis><indexterm role="fn"><primary>apply</primary></indexterm><phrase role="category"><emphasis role="bold">Function</emphasis>:</phrase> <function>apply</function> <emphasis role="arg">function</emphasis> <emphasis role="arg">&amp;rest</emphasis> <emphasis role="arg">arguments</emphasis></synopsis>
<blockquote><para><literal>apply</literal> calls no var <replaceable>function</replaceable> with <replaceable>arguments</replaceable>
</para></blockquote>
<synopsis><indexterm role="fn"><primary>apply</primary></indexterm><phrase role="category"><emphasis role="bold">Function</emphasis>:</phrase> <function>apply</function> <emphasis role="arg">function</emphasis> <emphasis role="arg"><emphasis role="bold">&amp;rest</emphasis></emphasis> <emphasis role="arg">argument</emphasis></synopsis>
<blockquote><para>explicit keyword marking, no var <replaceable>function</replaceable> with <replaceable>arguments</replaceable>
</para></blockquote>
<synopsis><indexterm role="fn"><primary>name</primary></indexterm><phrase role="category"><emphasis role="bold">Category</emphasis>:</phrase> <function>name</function> <emphasis role="arg">argument</emphasis> <emphasis role="arg">int</emphasis> <emphasis role="arg">a--b</emphasis> <emphasis role="arg"><replaceable>v--ar1</replaceable></emphasis>, <emphasis role="arg">word</emphasis> <emphasis role="arg">--</emphasis> (<emphasis role="arg">type o--ther</emphasis>, <emphasis role="arg"><replaceable>v---ar2</replaceable></emphasis>  [<emphasis role="arg">float</emphasis> [<emphasis role="arg"><replaceable>var4</replaceable></emphasis>)</synopsis>
<blockquote><para>In deffn with code and var used
</para></blockquote>
</chapter>
';

1;
