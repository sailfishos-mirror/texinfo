use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'complex_nestings'} = {
  'contents' => [
    {
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
            'normalized' => 'chap'
          }
        ],
        'normalized' => 'chap',
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
              'text' => 'Chapter'
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'deffs
'
                }
              ],
              'parent' => {},
              'type' => 'preformatted'
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
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'my def'
                            }
                          ],
                          'extra' => {
                            'def_role' => 'name'
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
                            'def_role' => 'arg'
                          },
                          'parent' => {},
                          'text' => 'args'
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
                                  'text' => 'arg'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'var',
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
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'spaces'
                        },
                        {
                          'args' => [
                            {
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'dots',
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
                      'number' => 1
                    },
                    'original_def_cmdname' => 'defun'
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
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'other def'
                            }
                          ],
                          'extra' => {
                            'def_role' => 'name'
                          },
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 10,
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
                            'def_role' => 'arg'
                          },
                          'parent' => {},
                          'text' => 'no'
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
                          'text' => 'args'
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
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'defunx',
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
                      'index_at_command' => 'defunx',
                      'index_ignore_chars' => {},
                      'index_name' => 'fn',
                      'index_type_command' => 'defun',
                      'node' => {},
                      'number' => 2
                    },
                    'original_def_cmdname' => 'defunx',
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 10,
                    'macro' => ''
                  },
                  'type' => 'def_line'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'deffn',
                      'contents' => [
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'type'
                                    }
                                  ],
                                  'extra' => {
                                    'def_role' => 'category'
                                  },
                                  'parent' => {},
                                  'source_info' => {
                                    'file_name' => '',
                                    'line_nr' => 11,
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
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'name'
                                    }
                                  ],
                                  'extra' => {
                                    'def_role' => 'name'
                                  },
                                  'parent' => {},
                                  'source_info' => {
                                    'file_name' => '',
                                    'line_nr' => 11,
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
                                    'def_role' => 'arg'
                                  },
                                  'parent' => {},
                                  'text' => 'and'
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
                                  'text' => 'now'
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
                                  'text' => 'the'
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
                                  'text' => 'args'
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
                            'line_nr' => 11,
                            'macro' => ''
                          },
                          'type' => 'def_line'
                        },
                        {
                          'contents' => [
                            {
                              'cmdname' => 'defvar',
                              'contents' => [
                                {
                                  'args' => [
                                    {
                                      'contents' => [
                                        {
                                          'contents' => [
                                            {
                                              'parent' => {},
                                              'text' => 'Variable'
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
                                          'contents' => [
                                            {
                                              'parent' => {},
                                              'text' => 'variables'
                                            }
                                          ],
                                          'extra' => {
                                            'def_role' => 'name'
                                          },
                                          'parent' => {},
                                          'source_info' => {
                                            'file_name' => '',
                                            'line_nr' => 12,
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
                                            'def_role' => 'arg'
                                          },
                                          'parent' => {},
                                          'text' => 'variable-name'
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
                                    'def_command' => 'defvar',
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
                                      'index_at_command' => 'defvar',
                                      'index_ignore_chars' => {},
                                      'index_name' => 'vr',
                                      'index_type_command' => 'defvar',
                                      'node' => {},
                                      'number' => 1
                                    },
                                    'original_def_cmdname' => 'defvar'
                                  },
                                  'parent' => {},
                                  'source_info' => {
                                    'file_name' => '',
                                    'line_nr' => 12,
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
                                          'text' => '
',
                                          'type' => 'empty_line'
                                        }
                                      ],
                                      'parent' => {},
                                      'type' => 'preformatted'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'inter_def_item'
                                },
                                {
                                  'args' => [
                                    {
                                      'contents' => [
                                        {
                                          'contents' => [
                                            {
                                              'parent' => {},
                                              'text' => 'Variable'
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
                                          'contents' => [
                                            {
                                              'parent' => {},
                                              'text' => 'variables too'
                                            }
                                          ],
                                          'extra' => {
                                            'def_role' => 'name'
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
                                            'def_role' => 'arg'
                                          },
                                          'parent' => {},
                                          'text' => 'other-variable'
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
                                      'type' => 'line_arg'
                                    }
                                  ],
                                  'cmdname' => 'defvarx',
                                  'extra' => {
                                    'def_command' => 'defvar',
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
                                      'index_at_command' => 'defvarx',
                                      'index_ignore_chars' => {},
                                      'index_name' => 'vr',
                                      'index_type_command' => 'defvar',
                                      'node' => {},
                                      'number' => 2
                                    },
                                    'original_def_cmdname' => 'defvarx',
                                    'spaces_before_argument' => ' '
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
                                          'parent' => {},
                                          'text' => 'THis is the defvar
'
                                        },
                                        {
                                          'parent' => {},
                                          'text' => '
',
                                          'type' => 'empty_line'
                                        },
                                        {
                                          'parent' => {},
                                          'text' => 'A table within the def
'
                                        }
                                      ],
                                      'parent' => {},
                                      'type' => 'preformatted'
                                    },
                                    {
                                      'args' => [
                                        {
                                          'contents' => [
                                            {
                                              'cmdname' => 'asis',
                                              'parent' => {},
                                              'source_info' => {
                                                'file_name' => '',
                                                'line_nr' => 18,
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
                                                  'cmdname' => 'item',
                                                  'extra' => {
                                                    'spaces_before_argument' => ' '
                                                  },
                                                  'parent' => {},
                                                  'source_info' => {
                                                    'file_name' => '',
                                                    'line_nr' => 19,
                                                    'macro' => ''
                                                  }
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
                                                      'text' => 'text
'
                                                    },
                                                    {
                                                      'parent' => {},
                                                      'text' => '
',
                                                      'type' => 'empty_line'
                                                    },
                                                    {
                                                      'parent' => {},
                                                      'text' => 'more text
'
                                                    }
                                                  ],
                                                  'parent' => {},
                                                  'type' => 'preformatted'
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
                                                          'text' => 'second item'
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
                                                    'line_nr' => 23,
                                                    'macro' => ''
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
                                            'line_nr' => 24,
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
                                        'line_nr' => 18,
                                        'macro' => ''
                                      }
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
                                          'parent' => {},
                                          'text' => 'explanation
'
                                        }
                                      ],
                                      'parent' => {},
                                      'type' => 'preformatted'
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
                                          'text' => 'defvar'
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
                                    'text_arg' => 'defvar'
                                  },
                                  'parent' => {},
                                  'source_info' => {
                                    'file_name' => '',
                                    'line_nr' => 27,
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
                                'line_nr' => 12,
                                'macro' => ''
                              }
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
                            'spaces_before_argument' => ' ',
                            'text_arg' => 'deffn'
                          },
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 28,
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
                        'line_nr' => 11,
                        'macro' => ''
                      }
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
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'defun'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 29,
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
                'line_nr' => 9,
                'macro' => ''
              }
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
                }
              ],
              'parent' => {},
              'type' => 'preformatted'
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
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 7,
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
$result_trees{'complex_nestings'}{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'};
$result_trees{'complex_nestings'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[1]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[1];
$result_trees{'complex_nestings'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'complex_nestings'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'complex_nestings'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[1]{'parent'} = $result_trees{'complex_nestings'};
$result_trees{'complex_nestings'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[2]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[2]{'parent'} = $result_trees{'complex_nestings'};
$result_trees{'complex_nestings'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[3]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[3];
$result_trees{'complex_nestings'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'complex_nestings'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'complex_nestings'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[3]{'parent'} = $result_trees{'complex_nestings'};
$result_trees{'complex_nestings'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'complex_nestings'}{'contents'}[3];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'complex_nestings'}{'contents'}[3];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'complex_nestings'}{'contents'}[3];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'complex_nestings'}{'contents'}[3];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'node'} = $result_trees{'complex_nestings'}{'contents'}[3];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'extra'}{'command_as_argument'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[4];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[3];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[3];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1];
$result_trees{'complex_nestings'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'complex_nestings'}{'contents'}[4];
$result_trees{'complex_nestings'}{'contents'}[4]{'parent'} = $result_trees{'complex_nestings'};

$result_texis{'complex_nestings'} = '@node Top
@top top

@node chap
@chapter Chapter

@example
deffs
@defun {my def} args @var{arg} @dots{}
@defunx {other def} no args
@deffn {type} {name} and now the args
@defvar {variables} variable-name

@defvarx {variables too} other-variable
THis is the defvar

A table within the def
@table @asis
@item item
text

more text
@item second item
@end table

explanation
@end defvar
@end deffn
@end defun

@end example
';


$result_texts{'complex_nestings'} = 'top
***

1 Chapter
*********

deffs
Function: my def args arg ...
Function: other def no args
type: name and now the args
Variable: variables variable-name

Variable: variables too other-variable
THis is the defvar

A table within the def
item
text

more text
second item

explanation

';

$result_sectioning{'complex_nestings'} = {
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
                    'normalized' => 'chap'
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
$result_sectioning{'complex_nestings'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'complex_nestings'}{'structure'}{'section_childs'}[0];
$result_sectioning{'complex_nestings'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'complex_nestings'}{'structure'}{'section_childs'}[0];
$result_sectioning{'complex_nestings'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'complex_nestings'}{'structure'}{'section_childs'}[0];
$result_sectioning{'complex_nestings'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'complex_nestings'};

$result_nodes{'complex_nestings'} = {
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
        'normalized' => 'chap'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'complex_nestings'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'complex_nestings'};
$result_nodes{'complex_nestings'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'complex_nestings'};

$result_menus{'complex_nestings'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'complex_nestings'} = [];


$result_floats{'complex_nestings'} = {};


$result_indices_sort_strings{'complex_nestings'} = {
  'fn' => [
    'my def',
    'name',
    'other def'
  ],
  'vr' => [
    'variables',
    'variables too'
  ]
};



$result_converted{'plaintext'}->{'complex_nestings'} = 'top
***

1 Chapter
*********

     deffs
      -- Function: my def args ARG ...
      -- Function: other def no args
           -- type: name and now the args
                -- Variable: variables variable-name

                -- Variable: variables too other-variable
                    THis is the defvar

                    A table within the def
                    item
                         text

                         more text
                    second item

                    explanation

';


$result_converted{'html_text'}->{'complex_nestings'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h1 class="top" id="top">top</h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h2 class="chapter" id="Chapter">1 Chapter</h2>

<div class="example">
<pre class="example-preformatted">deffs
</pre><dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-my-def"><span class="category-def">Function: </span><span><strong class="def-name">my def</strong> <var class="def-var-arguments">args <var class="var">arg</var> &hellip;</var><a class="copiable-link" href=\'#index-my-def\'> &para;</a></span></dt>
<dt class="deffnx defunx-alias-deffnx def-cmd-deffn" id="index-other-def"><span class="category-def">Function: </span><span><strong class="def-name">other def</strong> <var class="def-var-arguments">no args</var><a class="copiable-link" href=\'#index-other-def\'> &para;</a></span></dt>
<dd><dl class="first-deffn">
<dt class="deffn" id="index-name"><span class="category-def">type: </span><span><strong class="def-name">name</strong> <var class="def-var-arguments">and now the args</var><a class="copiable-link" href=\'#index-name\'> &para;</a></span></dt>
<dd><dl class="first-defvr first-defvar-alias-first-defvr">
<dt class="defvr defvar-alias-defvr" id="index-variables"><span class="category-def">Variable: </span><span><strong class="def-name">variables</strong> <var class="def-var-arguments">variable-name</var><a class="copiable-link" href=\'#index-variables\'> &para;</a></span></dt>
<dd><pre class="example-preformatted">

</pre></dd><dt class="defvrx defvarx-alias-defvrx def-cmd-defvr" id="index-variables-too"><span class="category-def">Variable: </span><span><strong class="def-name">variables too</strong> <var class="def-var-arguments">other-variable</var><a class="copiable-link" href=\'#index-variables-too\'> &para;</a></span></dt>
<dd><pre class="example-preformatted">THis is the defvar

A table within the def
</pre><dl class="table">
<dt><code class="table-term-preformatted-code">item</code></dt>
<dd><pre class="example-preformatted">text

more text
</pre></dd>
<dt><code class="table-term-preformatted-code">second item</code></dt>
</dl>
<pre class="example-preformatted">

explanation
</pre></dd></dl>
</dd></dl>
</dd></dl>
<pre class="example-preformatted">

</pre></div>
</div>
</div>
';


$result_converted{'xml'}->{'complex_nestings'} = '<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node name="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>

<example endspaces=" ">
<pre xml:space="preserve">deffs
</pre><defun spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="1">my def</indexterm><defcategory automatic="on" bracketed="on">Function</defcategory> <deffunction bracketed="on">my def</deffunction> <defparam>args</defparam> <defparam><var>arg</var></defparam> <defparam>&dots;</defparam></definitionterm>
<defunx spaces=" "><definitionterm><indexterm index="fn" number="2">other def</indexterm><defcategory automatic="on" bracketed="on">Function</defcategory> <deffunction bracketed="on">other def</deffunction> <defparam>no</defparam> <defparam>args</defparam></definitionterm></defunx>
<definitionitem><deffn spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="3">name</indexterm><defcategory bracketed="on">type</defcategory> <deffunction bracketed="on">name</deffunction> <defparam>and</defparam> <defparam>now</defparam> <defparam>the</defparam> <defparam>args</defparam></definitionterm>
<definitionitem><defvar spaces=" " endspaces=" "><definitionterm><indexterm index="vr" number="1">variables</indexterm><defcategory automatic="on" bracketed="on">Variable</defcategory> <defvariable bracketed="on">variables</defvariable> <defparam>variable-name</defparam></definitionterm>
<pre xml:space="preserve">
</pre><defvarx spaces=" "><definitionterm><indexterm index="vr" number="2">variables too</indexterm><defcategory automatic="on" bracketed="on">Variable</defcategory> <defvariable bracketed="on">variables too</defvariable> <defparam>other-variable</defparam></definitionterm></defvarx>
<definitionitem><pre xml:space="preserve">THis is the defvar

A table within the def
</pre><table commandarg="asis" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="asis">item</itemformat></item>
</tableterm><tableitem><pre xml:space="preserve">text

more text
</pre></tableitem></tableentry><tableentry><tableterm><item spaces=" "><itemformat command="asis">second item</itemformat></item>
</tableterm></tableentry></table>
<pre xml:space="preserve">
explanation
</pre></definitionitem></defvar>
</definitionitem></deffn>
</definitionitem></defun>
<pre xml:space="preserve">
</pre></example>
</chapter>
';


$result_converted{'docbook'}->{'complex_nestings'} = '<chapter label="1" id="chap">
<title>Chapter</title>

<screen>deffs
</screen><synopsis><indexterm role="fn"><primary>my def</primary></indexterm><phrase role="category"><emphasis role="bold">Function</emphasis>:</phrase> <function>my def</function> <emphasis role="arg">args</emphasis> <emphasis role="arg"><replaceable>arg</replaceable></emphasis> <emphasis role="arg">&#8230;</emphasis></synopsis>
<synopsis><indexterm role="fn"><primary>other def</primary></indexterm><phrase role="category"><emphasis role="bold">Function</emphasis>:</phrase> <function>other def</function> <emphasis role="arg">no</emphasis> <emphasis role="arg">args</emphasis></synopsis>
<blockquote><synopsis><indexterm role="fn"><primary>name</primary></indexterm><phrase role="category"><emphasis role="bold">type</emphasis>:</phrase> <function>name</function> <emphasis role="arg">and</emphasis> <emphasis role="arg">now</emphasis> <emphasis role="arg">the</emphasis> <emphasis role="arg">args</emphasis></synopsis>
<blockquote><synopsis><indexterm role="vr"><primary>variables</primary></indexterm><phrase role="category"><emphasis role="bold">Variable</emphasis>:</phrase> <varname>variables</varname> <emphasis role="arg">variable-name</emphasis></synopsis>
<screen>
</screen><synopsis><indexterm role="vr"><primary>variables too</primary></indexterm><phrase role="category"><emphasis role="bold">Variable</emphasis>:</phrase> <varname>variables too</varname> <emphasis role="arg">other-variable</emphasis></synopsis>
<blockquote><screen>THis is the defvar

A table within the def
</screen><variablelist><varlistentry><term>item
</term><listitem><screen>text

more text
</screen></listitem></varlistentry><varlistentry><term>second item
</term></varlistentry></variablelist><screen>
explanation
</screen></blockquote></blockquote></blockquote><screen>
</screen></chapter>
';


$result_converted{'latex_text'}->{'complex_nestings'} = '\\label{anchor:Top}%
\\chapter{{Chapter}}
\\label{anchor:chap}%

\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}%
\\ttfamily deffs
\\end{GNUTexinfopreformatted}

\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{my def \\EmbracOn{}\\textnormal{\\textsl{args \\GNUTexinfocommandstyletextvar{arg} \\dots{}\\@}}\\EmbracOff{}}& [Function]
\\end{tabularx}

\\index[fn]{my def@\\texttt{my def}}%

\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{other def \\EmbracOn{}\\textnormal{\\textsl{no args}}\\EmbracOff{}}& [Function]
\\end{tabularx}

\\index[fn]{other def@\\texttt{other def}}%
\\begin{quote}
\\unskip{\\parskip=0pt\\noindent}%

\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{name \\EmbracOn{}\\textnormal{\\textsl{and now the args}}\\EmbracOff{}}& [type]
\\end{tabularx}

\\index[fn]{name@\\texttt{name}}%
\\begin{quote}
\\unskip{\\parskip=0pt\\noindent}%

\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{variables \\EmbracOn{}\\textnormal{\\textsl{variable-name}}\\EmbracOff{}}& [Variable]
\\end{tabularx}

\\index[vr]{variables@\\texttt{variables}}%
\\begin{GNUTexinfopreformatted}%
\\ttfamily 
\\end{GNUTexinfopreformatted}

\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{variables too \\EmbracOn{}\\textnormal{\\textsl{other-variable}}\\EmbracOff{}}& [Variable]
\\end{tabularx}

\\index[vr]{variables too@\\texttt{variables too}}%
\\begin{quote}
\\unskip{\\parskip=0pt\\noindent}%
\\begin{GNUTexinfopreformatted}%
\\ttfamily THis is the defvar

A table within the def
\\end{GNUTexinfopreformatted}
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
item}}]
\\begin{GNUTexinfopreformatted}%
\\ttfamily text

more text
\\end{GNUTexinfopreformatted}
\\item[{\\parbox[b]{\\linewidth}{%
second item}}]
\\end{description}
\\begin{GNUTexinfopreformatted}%
\\ttfamily 
explanation
\\end{GNUTexinfopreformatted}
\\end{quote}
\\end{quote}
\\end{quote}
\\begin{GNUTexinfopreformatted}%
\\ttfamily 
\\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}
';

1;
