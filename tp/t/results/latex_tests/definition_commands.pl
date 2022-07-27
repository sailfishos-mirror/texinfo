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
                      'text' => 'combined_fonts.info'
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
                'text_arg' => 'combined_fonts.info'
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
                        'line_nr' => 9,
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
                        'line_nr' => 9,
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
                        'line_nr' => 9,
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
                  'number' => 1
                },
                'original_def_cmdname' => 'deftypefn'
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
          'cmdname' => 'noindent',
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 13,
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
                        'line_nr' => 14,
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
                'line_nr' => 14,
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
                        'line_nr' => 15,
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
                'line_nr' => 16,
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
            'line_nr' => 14,
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
                            'line_nr' => 19,
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
                            'line_nr' => 19,
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
                            'line_nr' => 19,
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
                      'number' => 2
                    },
                    'original_def_cmdname' => 'deftypefn'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 19,
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
                            'line_nr' => 20,
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
                    'line_nr' => 21,
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
                'line_nr' => 19,
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
                'line_nr' => 22,
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
            'line_nr' => 18,
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
                  'number' => 3
                },
                'original_def_cmdname' => 'defun'
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
                        'line_nr' => 25,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' calls '
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
                        'line_nr' => 25,
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
                        'line_nr' => 28,
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
                        'line_nr' => 28,
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
                              'text' => 'var1'
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
                        'line_nr' => 28,
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
                              'text' => 'type other'
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'var2'
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
                        'line_nr' => 28,
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
                        'line_nr' => 29,
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
                        'line_nr' => 29,
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
                  'number' => 4
                },
                'original_def_cmdname' => 'deffn'
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
                      'parent' => {},
                      'text' => 'In deffn
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
                'line_nr' => 31,
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
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[9];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[14];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'definition_commands'}{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[4]{'extra'}{'command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'definition_commands'}{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'extra'}{'end_command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[0]{'extra'}{'command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[9];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[14];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'definition_commands'}{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'extra'}{'end_command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[8]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[9]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'definition_commands'}{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'extra'}{'end_command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[10]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[11]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[10];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[15]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[15]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[15]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[15];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[17]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[18]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[18]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[18];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[18]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[19]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[20]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[21]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[21]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[21]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[21];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[21]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[22]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[23]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[24]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[24]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[24]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[24];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[24]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[25]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[26]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[27]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[27]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[27]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[27];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[27]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[28]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[29]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'definition_commands'}{'contents'}[3];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[1]{'contents'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[1];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[1]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[2]{'args'}[0];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[2]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'extra'}{'end_command'} = $result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'contents'}[2];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[12]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'contents'}[13]{'parent'} = $result_trees{'definition_commands'}{'contents'}[4];
$result_trees{'definition_commands'}{'contents'}[4]{'parent'} = $result_trees{'definition_commands'};

$result_texis{'definition_commands'} = '@setfilename combined_fonts.info

@node Top
@top top section

@node chapter
@chapter chapter

@deftypefn {Library Function} int foobar  (int @var{foo}, float @var{bar})
@dots{}
@end deftypefn

@noindent produces:
@defcv {Class Option} Window border-pattern
@dots{}
@end defcv

@quotation
@deftypefn {Library Function} int foobar  (int @var{foo}, float @var{bar})
@dots{}
@end deftypefn
@end quotation

@defun apply function &rest arguments
@code{apply} calls @var{function} with @var{arguments}
@end defun

@deffn Category name argument @code{int} @code{a--b} @var{var1}, word @code{--} (@code{type other}, @var{var2}  [@code{float} [@var{var4})
In deffn
@end deffn

';


$result_texts{'definition_commands'} = '
top section
***********

1 chapter
*********

Library Function: int foobar (int foo, float bar)
...

produces:
Class Option of Window: border-pattern
...

Library Function: int foobar (int foo, float bar)
...

Function: apply function &rest arguments
apply calls function with arguments

Category: name argument int a--b var1, word -- (type other, var2  [float [var4)
In deffn

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
    'foobar',
    'foobar',
    'name'
  ],
  'vr' => [
    'border-pattern'
  ]
};



$result_converted{'latex'}->{'definition_commands'} = '
\\begin{document}
\\chapter{chapter}
\\label{anchor:chapter}%

\\noindent\\texttt{int foobar \\bgroup{}\\normalfont{}\\textsl{(int \\textsl{foo}, float \\textsl{bar})}\\egroup{}}\\hfill[Library Function]



\\index[fn]{foobar@\\texttt{foobar}}%
\\dots{}\\@

\\noindent{}produces:
\\noindent\\texttt{border-pattern}\\hfill[Class Option of \\texttt{Window}]



\\index[vr]{border-pattern@\\texttt{border-pattern}}%
\\dots{}\\@

\\begin{quote}
\\noindent\\texttt{int foobar \\bgroup{}\\normalfont{}\\textsl{(int \\textsl{foo}, float \\textsl{bar})}\\egroup{}}\\hfill[Library Function]



\\index[fn]{foobar@\\texttt{foobar}}%
\\dots{}\\@
\\end{quote}

\\noindent\\texttt{apply \\bgroup{}\\normalfont{}\\textsl{function \\&rest arguments}\\egroup{}}\\hfill[Function]



\\index[fn]{apply@\\texttt{apply}}%
\\texttt{apply} calls \\textsl{function} with \\textsl{arguments}

\\noindent\\texttt{name \\bgroup{}\\normalfont{}\\textsl{argument \\texttt{int} \\texttt{a{-}{-}b} \\textsl{var1}, word \\texttt{{-}{-}} (\\texttt{type other}, \\textsl{var2}  {[}\\texttt{float} {[}\\textsl{var4})}\\egroup{}}\\hfill[Category]



\\index[fn]{name@\\texttt{name}}%
In deffn

';

1;
