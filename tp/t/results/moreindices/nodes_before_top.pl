use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'nodes_before_top'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '\\input texinfo @c -*-texinfo-*-
',
                  'type' => 'text_before_beginning'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'text_before_beginning'
                }
              ],
              'parent' => {},
              'type' => 'preamble_before_beginning'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_setfilename'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'index_nodes'
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
                'text_arg' => 'index_nodes'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'nodes_before_top.texi',
                'line_nr' => 3,
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
              'text' => 'first before top'
            }
          ],
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top'
            }
          ],
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [],
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '('
            },
            {
              'parent' => {},
              'text' => 'dir'
            },
            {
              'parent' => {},
              'text' => ')'
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
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'first before top'
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
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 1
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 7,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'cp'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 8,
            'macro' => ''
          }
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'in first node
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'args' => [
            {
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'node in menu before top'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'node-in-menu-before-top'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'nodes_before_top.texi',
                'line_nr' => 11,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'menu'
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
                'text_arg' => 'menu'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'nodes_before_top.texi',
                'line_nr' => 12,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 10,
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
        'isindex' => 1,
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'first-before-top'
          },
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          },
          undef,
          {
            'manual_content' => [
              {}
            ]
          }
        ],
        'normalized' => 'first-before-top',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'nodes_before_top.texi',
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
              'text' => 'node in menu before top'
            }
          ],
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [],
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [],
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'first before top'
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
                  'text' => 'node in menu before top'
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
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 2
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 16,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'cp'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 17,
            'macro' => ''
          }
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'node in menu before top text
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
                  'text' => 'printindex node in menu before top'
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
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 3
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 20,
            'macro' => ''
          },
          'type' => 'index_entry_command'
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
        'isindex' => 1,
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'node-in-menu-before-top'
          },
          undef,
          undef,
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'first-before-top'
          }
        ],
        'normalized' => 'node-in-menu-before-top',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'nodes_before_top.texi',
        'line_nr' => 14,
        'macro' => ''
      }
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
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [],
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'first before top'
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
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'entry a'
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
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 4
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 24,
            'macro' => ''
          },
          'type' => 'index_entry_command'
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
                  'text' => 'cp'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 26,
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
                  'parent' => {},
                  'text' => 'fn'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'fn'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'And one one more index
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
                  'text' => 'cp'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 32,
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
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'first'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'first'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'nodes_before_top.texi',
                'line_nr' => 35,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'menu'
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
                'text_arg' => 'menu'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'nodes_before_top.texi',
                'line_nr' => 36,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 34,
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
        'isindex' => 1,
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          },
          undef,
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'first-before-top'
          }
        ],
        'normalized' => 'Top',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'nodes_before_top.texi',
        'line_nr' => 23,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'first'
            }
          ],
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [],
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top'
            }
          ],
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top'
            }
          ],
          'extra' => {
            'spaces_after_argument' => '
',
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Text and then index entries
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '! entry in node'
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
                  'index_ignore_chars' => {},
                  'index_name' => 'cp',
                  'index_type_command' => 'cindex',
                  'node' => {},
                  'number' => 5
                },
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'nodes_before_top.texi',
                'line_nr' => 40,
                'macro' => ''
              },
              'type' => 'index_entry_command'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'fun in node'
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
              'cmdname' => 'findex',
              'extra' => {
                'index_entry' => {
                  'command' => {},
                  'content' => [],
                  'content_normalized' => [],
                  'in_code' => 1,
                  'index_at_command' => 'findex',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'findex',
                  'node' => {},
                  'number' => 1
                },
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'nodes_before_top.texi',
                'line_nr' => 41,
                'macro' => ''
              },
              'type' => 'index_entry_command'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'entry in node'
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
                  'index_ignore_chars' => {},
                  'index_name' => 'cp',
                  'index_type_command' => 'cindex',
                  'node' => {},
                  'number' => 6
                },
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'nodes_before_top.texi',
                'line_nr' => 42,
                'macro' => ''
              },
              'type' => 'index_entry_command'
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
                  'text' => 'cp'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 44,
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
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'second'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'second'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'nodes_before_top.texi',
                'line_nr' => 47,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'menu'
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
                'text_arg' => 'menu'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'nodes_before_top.texi',
                'line_nr' => 48,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 46,
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
        'isindex' => 1,
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'first'
          },
          undef,
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          },
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'first',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'nodes_before_top.texi',
        'line_nr' => 38,
        'macro' => ''
      }
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
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [],
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [],
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'first'
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
      'contents' => [
        {
          'args' => [
            {
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a node'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'a-node'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'nodes_before_top.texi',
                'line_nr' => 52,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'another'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'another'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'nodes_before_top.texi',
                'line_nr' => 53,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'menu'
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
                'text_arg' => 'menu'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'nodes_before_top.texi',
                'line_nr' => 54,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'fn'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'fn'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 56,
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
        'isindex' => 1,
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'second'
          },
          undef,
          undef,
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'first'
          }
        ],
        'normalized' => 'second',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'nodes_before_top.texi',
        'line_nr' => 50,
        'macro' => ''
      }
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
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [],
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'a node'
            }
          ],
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'second'
            }
          ],
          'extra' => {
            'spaces_after_argument' => '
',
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
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
                  'text' => 'something'
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
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 7
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 60,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'somewhere'
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
          'cmdname' => 'findex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 1,
              'index_at_command' => 'findex',
              'index_ignore_chars' => {},
              'index_name' => 'fn',
              'index_type_command' => 'findex',
              'node' => {},
              'number' => 2
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 61,
            'macro' => ''
          },
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
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 8
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 62,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'another'
          },
          undef,
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'a-node'
          },
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'second'
          }
        ],
        'normalized' => 'another',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'nodes_before_top.texi',
        'line_nr' => 58,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'a node'
            }
          ],
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'another'
            }
          ],
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [],
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'type' => 'line_arg'
        },
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
      'cmdname' => 'node',
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'entry after printindex'
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
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 9
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 65,
            'macro' => ''
          },
          'type' => 'index_entry_command'
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
                  'text' => 'cp'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 67,
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
                  'parent' => {},
                  'text' => 'a function'
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
          'cmdname' => 'findex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 1,
              'index_at_command' => 'findex',
              'index_ignore_chars' => {},
              'index_name' => 'fn',
              'index_type_command' => 'findex',
              'node' => {},
              'number' => 3
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 69,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'a concept a node'
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
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 10
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 70,
            'macro' => ''
          },
          'type' => 'index_entry_command'
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
                  'text' => 'cp'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 72,
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
        'isindex' => 1,
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'a-node'
          },
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'another'
          },
          undef,
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'second'
          }
        ],
        'normalized' => 'a-node',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'nodes_before_top.texi',
        'line_nr' => 64,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'misc_arg'
        }
      ],
      'cmdname' => 'bye',
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'nodes_before_top'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[0]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[0]{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[0]{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[0]{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'};
$result_trees{'nodes_before_top'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'args'}[1];
$result_trees{'nodes_before_top'}{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'args'}[3];
$result_trees{'nodes_before_top'}{'contents'}[1]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'args'}[3];
$result_trees{'nodes_before_top'}{'contents'}[1]{'args'}[3]{'contents'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'args'}[3];
$result_trees{'nodes_before_top'}{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'nodes_before_top'}{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'args'}[1];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'args'}[3];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'args'}[3];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[1]{'extra'}{'nodes_manuals'}[1]{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[1]{'extra'}{'nodes_manuals'}[3]{'manual_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[1]{'args'}[3]{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[1]{'parent'} = $result_trees{'nodes_before_top'};
$result_trees{'nodes_before_top'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[2]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[2]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[2]{'args'}[3];
$result_trees{'nodes_before_top'}{'contents'}[2]{'args'}[3]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'nodes_before_top'}{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[5]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[5];
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[5]{'extra'}{'index_entry'}{'command'} = $result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[5];
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[5]{'extra'}{'index_entry'}{'content'} = $result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[5]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[5]{'extra'}{'index_entry'}{'node'} = $result_trees{'nodes_before_top'}{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[7]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[2]{'extra'}{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[2]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[2]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[2]{'args'}[3]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[2]{'parent'} = $result_trees{'nodes_before_top'};
$result_trees{'nodes_before_top'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[3]{'args'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[3]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'args'}[2];
$result_trees{'nodes_before_top'}{'contents'}[3]{'args'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'nodes_before_top'}{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[4]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[4];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[4]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[5]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[6];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[6]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[7]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[8]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[8];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[8]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[9]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[0]{'args'}[1];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[0]{'args'}[3];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[0]{'args'}[3];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[1]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[10]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[11]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[3]{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[3]{'args'}[2]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[3]{'parent'} = $result_trees{'nodes_before_top'};
$result_trees{'nodes_before_top'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4];
$result_trees{'nodes_before_top'}{'contents'}[4]{'args'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4];
$result_trees{'nodes_before_top'}{'contents'}[4]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'args'}[2];
$result_trees{'nodes_before_top'}{'contents'}[4]{'args'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4];
$result_trees{'nodes_before_top'}{'contents'}[4]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'args'}[3];
$result_trees{'nodes_before_top'}{'contents'}[4]{'args'}[3]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'nodes_before_top'}{'contents'}[4];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'node'} = $result_trees{'nodes_before_top'}{'contents'}[4];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[3]{'extra'}{'index_entry'}{'command'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[3]{'extra'}{'index_entry'}{'content'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[3]{'extra'}{'index_entry'}{'node'} = $result_trees{'nodes_before_top'}{'contents'}[4];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[0]{'args'}[1];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[0]{'args'}[3];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[0]{'args'}[3];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[4];
$result_trees{'nodes_before_top'}{'contents'}[4]{'extra'}{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[4]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[4]{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[4]{'args'}[2]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[4]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[4]{'args'}[3]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[4]{'parent'} = $result_trees{'nodes_before_top'};
$result_trees{'nodes_before_top'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5];
$result_trees{'nodes_before_top'}{'contents'}[5]{'args'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5];
$result_trees{'nodes_before_top'}{'contents'}[5]{'args'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5];
$result_trees{'nodes_before_top'}{'contents'}[5]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'args'}[3];
$result_trees{'nodes_before_top'}{'contents'}[5]{'args'}[3]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[0]{'args'}[3];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[0]{'args'}[3];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[1]{'args'}[1];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[1]{'args'}[3];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[1]{'args'}[3];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5];
$result_trees{'nodes_before_top'}{'contents'}[5]{'contents'}[3]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[5];
$result_trees{'nodes_before_top'}{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[5]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[5]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[5]{'args'}[3]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[5]{'parent'} = $result_trees{'nodes_before_top'};
$result_trees{'nodes_before_top'}{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[6]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[6];
$result_trees{'nodes_before_top'}{'contents'}[6]{'args'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[6];
$result_trees{'nodes_before_top'}{'contents'}[6]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[6]{'args'}[2];
$result_trees{'nodes_before_top'}{'contents'}[6]{'args'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[6];
$result_trees{'nodes_before_top'}{'contents'}[6]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[6]{'args'}[3];
$result_trees{'nodes_before_top'}{'contents'}[6]{'args'}[3]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[6];
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[6];
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'nodes_before_top'}{'contents'}[6];
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[6];
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[2]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[2]{'extra'}{'index_entry'}{'content'} = $result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[2]{'extra'}{'index_entry'}{'node'} = $result_trees{'nodes_before_top'}{'contents'}[6];
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[6];
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[3]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[3]{'extra'}{'index_entry'}{'command'} = $result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[3];
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[3]{'extra'}{'index_entry'}{'content'} = $result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[3]{'extra'}{'index_entry'}{'node'} = $result_trees{'nodes_before_top'}{'contents'}[6];
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[3]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[6];
$result_trees{'nodes_before_top'}{'contents'}[6]{'contents'}[4]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[6];
$result_trees{'nodes_before_top'}{'contents'}[6]{'extra'}{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[6]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[6]{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[6]{'args'}[2]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[6]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[6]{'args'}[3]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[6]{'parent'} = $result_trees{'nodes_before_top'};
$result_trees{'nodes_before_top'}{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7];
$result_trees{'nodes_before_top'}{'contents'}[7]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'args'}[1];
$result_trees{'nodes_before_top'}{'contents'}[7]{'args'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7];
$result_trees{'nodes_before_top'}{'contents'}[7]{'args'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7];
$result_trees{'nodes_before_top'}{'contents'}[7]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'args'}[3];
$result_trees{'nodes_before_top'}{'contents'}[7]{'args'}[3]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'nodes_before_top'}{'contents'}[7];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[2]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[2];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[3]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[4]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[4];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[4]{'extra'}{'index_entry'}{'command'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[4];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[4]{'extra'}{'index_entry'}{'content'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[4]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[4]{'extra'}{'index_entry'}{'node'} = $result_trees{'nodes_before_top'}{'contents'}[7];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[4]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[5]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[5];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[5]{'extra'}{'index_entry'}{'command'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[5];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[5]{'extra'}{'index_entry'}{'content'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[5]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[5]{'extra'}{'index_entry'}{'node'} = $result_trees{'nodes_before_top'}{'contents'}[7];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[5]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[6]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[7]{'args'}[0];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[7];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[7]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7];
$result_trees{'nodes_before_top'}{'contents'}[7]{'contents'}[8]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[7];
$result_trees{'nodes_before_top'}{'contents'}[7]{'extra'}{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[7]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[7]{'extra'}{'nodes_manuals'}[1]{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[7]{'args'}[1]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[7]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'nodes_before_top'}{'contents'}[7]{'args'}[3]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[7]{'parent'} = $result_trees{'nodes_before_top'};
$result_trees{'nodes_before_top'}{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'nodes_before_top'}{'contents'}[8];
$result_trees{'nodes_before_top'}{'contents'}[8]{'parent'} = $result_trees{'nodes_before_top'};

$result_texis{'nodes_before_top'} = '\\input texinfo @c -*-texinfo-*-

@setfilename index_nodes


@node first before top, Top, ,(dir)
@cindex first before top
@printindex cp
in first node
@menu
* node in menu before top::
@end menu

@node node in menu before top,,,first before top

@cindex node in menu before top
@printindex cp
node in menu before top text

@cindex printindex node in menu before top


@node Top, ,first before top
@cindex entry a

@printindex cp

@printindex fn

And one one more index

@printindex cp

@menu
* first::
@end menu

@node first,,Top, Top
Text and then index entries
@cindex ! entry in node
@findex fun in node
@cindex entry in node

@printindex cp

@menu
* second::
@end menu

@node second,,,first
@menu
* a node::
* another::
@end menu

@printindex fn

@node another, , a node, second

@cindex something
@findex somewhere
@cindex another

@node a node, another, ,second
@cindex entry after printindex

@printindex cp

@findex a function
@cindex a concept a node

@printindex cp

@bye
';


$result_texts{'nodes_before_top'} = '

in first node
* node in menu before top::


node in menu before top text






And one one more index


* first::

Text and then index entries


* second::

* a node::
* another::








';

$result_nodes{'nodes_before_top'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'menus' => [
      {
        'cmdname' => 'menu'
      }
    ],
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'isindex' => 1,
        'menus' => [
          {
            'cmdname' => 'menu'
          }
        ],
        'normalized' => 'first'
      },
      'structure' => {
        'menu_child' => {
          'cmdname' => 'node',
          'extra' => {
            'isindex' => 1,
            'menus' => [
              {
                'cmdname' => 'menu'
              }
            ],
            'normalized' => 'second'
          },
          'structure' => {
            'menu_child' => {
              'cmdname' => 'node',
              'extra' => {
                'isindex' => 1,
                'normalized' => 'a-node'
              },
              'structure' => {
                'node_next' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'another'
                  },
                  'structure' => {
                    'node_prev' => {},
                    'node_up' => {}
                  }
                },
                'node_up' => {}
              }
            },
            'node_up' => {}
          }
        },
        'node_prev' => {},
        'node_up' => {}
      }
    },
    'node_prev' => {
      'cmdname' => 'node',
      'extra' => {
        'isindex' => 1,
        'menus' => [
          {
            'cmdname' => 'menu'
          }
        ],
        'normalized' => 'first-before-top'
      },
      'structure' => {
        'menu_child' => {
          'cmdname' => 'node',
          'extra' => {
            'isindex' => 1,
            'normalized' => 'node-in-menu-before-top'
          },
          'structure' => {
            'node_up' => {}
          }
        },
        'node_next' => {},
        'node_up' => {
          'extra' => {
            'manual_content' => [
              {
                'text' => 'dir'
              }
            ]
          }
        }
      }
    }
  }
};
$result_nodes{'nodes_before_top'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'nodes_before_top'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_nodes{'nodes_before_top'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'nodes_before_top'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_nodes{'nodes_before_top'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'nodes_before_top'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_nodes{'nodes_before_top'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'nodes_before_top'}{'structure'}{'menu_child'};
$result_nodes{'nodes_before_top'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'nodes_before_top'};
$result_nodes{'nodes_before_top'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'nodes_before_top'};
$result_nodes{'nodes_before_top'}{'structure'}{'node_prev'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'nodes_before_top'}{'structure'}{'node_prev'};
$result_nodes{'nodes_before_top'}{'structure'}{'node_prev'}{'structure'}{'node_next'} = $result_nodes{'nodes_before_top'};

$result_menus{'nodes_before_top'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'isindex' => 1,
        'normalized' => 'first'
      },
      'structure' => {
        'menu_child' => {
          'cmdname' => 'node',
          'extra' => {
            'isindex' => 1,
            'normalized' => 'second'
          },
          'structure' => {
            'menu_child' => {
              'cmdname' => 'node',
              'extra' => {
                'isindex' => 1,
                'normalized' => 'a-node'
              },
              'structure' => {
                'menu_next' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'another'
                  },
                  'structure' => {
                    'menu_prev' => {},
                    'menu_up' => {},
                    'menu_up_hash' => {
                      'second' => 1
                    }
                  }
                },
                'menu_up' => {},
                'menu_up_hash' => {
                  'second' => 1
                }
              }
            },
            'menu_up' => {},
            'menu_up_hash' => {
              'first' => 1
            }
          }
        },
        'menu_up' => {},
        'menu_up_hash' => {
          'Top' => 1
        }
      }
    }
  }
};
$result_menus{'nodes_before_top'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'nodes_before_top'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_menus{'nodes_before_top'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'nodes_before_top'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_menus{'nodes_before_top'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'nodes_before_top'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_menus{'nodes_before_top'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'nodes_before_top'}{'structure'}{'menu_child'};
$result_menus{'nodes_before_top'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'nodes_before_top'};

$result_errors{'nodes_before_top'} = [];


$result_floats{'nodes_before_top'} = {};


$result_indices_sort_strings{'nodes_before_top'} = {
  'cp' => [
    '! entry in node',
    'a concept a node',
    'another',
    'entry a',
    'entry after printindex',
    'entry in node',
    'first before top',
    'node in menu before top',
    'printindex node in menu before top',
    'something'
  ],
  'fn' => [
    'a function',
    'fun in node',
    'somewhere'
  ]
};


$result_converted_errors{'file_html'}->{'nodes_before_top'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'nodes_before_top.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
