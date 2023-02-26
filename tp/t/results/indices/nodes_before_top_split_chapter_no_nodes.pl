use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'nodes_before_top_split_chapter_no_nodes'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => '\\input texinfo @c -*-texinfo-*-
',
              'type' => 'text_before_beginning'
            },
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
                  'text' => ' test nodes before Top node
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' test nodes before Top node
'
                ]
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
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
              'text' => 'first before top'
            }
          ],
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => 'Top'
            }
          ],
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'type' => 'line_arg'
        },
        {
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => '('
            },
            {
              'text' => 'dir'
            },
            {
              'text' => ')'
            }
          ],
          'info' => {
            'spaces_after_argument' => {
              'text' => '
'
            }
          },
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
                  'text' => 'first before top'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'element_node' => {},
            'index_entry' => {
              'entry_element' => {},
              'entry_number' => 1,
              'in_code' => 0,
              'index_name' => 'cp'
            }
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
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
                  'text' => 'cp'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
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
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 8,
            'macro' => ''
          }
        },
        {
          'contents' => [
            {
              'text' => 'in first node
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'args' => [
            {
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'node in menu before top'
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_node_label' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'node-in-menu-before-top'
                }
              },
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
                      'text' => 'menu'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => 'nodes_before_top.texi',
                'line_nr' => 12,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 10,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'isindex' => 1,
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
        'normalized' => 'first-before-top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
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
              'text' => 'node in menu before top'
            }
          ],
          'type' => 'line_arg'
        },
        {
          'type' => 'line_arg'
        },
        {
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => 'first before top'
            }
          ],
          'info' => {
            'spaces_after_argument' => {
              'text' => '
'
            }
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
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
                  'text' => 'node in menu before top'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'element_node' => {},
            'index_entry' => {
              'entry_element' => {},
              'entry_number' => 2,
              'in_code' => 0,
              'index_name' => 'cp'
            }
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
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
                  'text' => 'cp'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
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
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 17,
            'macro' => ''
          }
        },
        {
          'contents' => [
            {
              'text' => 'node in menu before top text
'
            }
          ],
          'type' => 'paragraph'
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
                  'text' => 'printindex node in menu before top'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'element_node' => {},
            'index_entry' => {
              'entry_element' => {},
              'entry_number' => 3,
              'in_code' => 0,
              'index_name' => 'cp'
            }
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 20,
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
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'isindex' => 1,
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
        'normalized' => 'node-in-menu-before-top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
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
              'text' => 'Top'
            }
          ],
          'type' => 'line_arg'
        },
        {
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => 'first before top'
            }
          ],
          'info' => {
            'spaces_after_argument' => {
              'text' => '
'
            }
          },
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
                  'text' => 'entry a'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'element_node' => {},
            'index_entry' => {
              'entry_element' => {},
              'entry_number' => 4,
              'in_code' => 0,
              'index_name' => 'cp'
            }
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 24,
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
                'spaces_after_argument' => {
                  'text' => '
'
                }
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
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 26,
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
                'spaces_after_argument' => {
                  'text' => '
'
                }
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
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 28,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'And one one more index
'
            }
          ],
          'type' => 'paragraph'
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
                'spaces_after_argument' => {
                  'text' => '
'
                }
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
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 32,
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
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'chap first'
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_node_label' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'chap-first'
                }
              },
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
                      'text' => 'menu'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => 'nodes_before_top.texi',
                'line_nr' => 36,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 34,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'isindex' => 1,
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
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
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
              'text' => 'chap first'
            }
          ],
          'type' => 'line_arg'
        },
        {
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => 'Top'
            }
          ],
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => 'Top'
            }
          ],
          'info' => {
            'spaces_after_argument' => {
              'text' => '
'
            },
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'text' => 'Text and then index entries
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => '! entry in node'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'element_node' => {},
            'index_entry' => {
              'entry_element' => {},
              'entry_number' => 5,
              'in_code' => 0,
              'index_name' => 'cp'
            }
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
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
                  'text' => 'fun in node'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'findex',
          'extra' => {
            'element_node' => {},
            'index_entry' => {
              'entry_element' => {},
              'entry_number' => 1,
              'in_code' => 1,
              'index_name' => 'fn'
            }
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
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
                  'text' => 'entry in node'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'element_node' => {},
            'index_entry' => {
              'entry_element' => {},
              'entry_number' => 6,
              'in_code' => 0,
              'index_name' => 'cp'
            }
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 42,
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
                'spaces_after_argument' => {
                  'text' => '
'
                }
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
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 44,
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
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'second'
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_node_label' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'second'
                }
              },
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
                      'text' => 'menu'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => 'nodes_before_top.texi',
                'line_nr' => 48,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 46,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'isindex' => 1,
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'chap-first'
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
        'normalized' => 'chap-first'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
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
              'text' => 'second'
            }
          ],
          'type' => 'line_arg'
        },
        {
          'type' => 'line_arg'
        },
        {
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => 'chap first'
            }
          ],
          'info' => {
            'spaces_after_argument' => {
              'text' => '
'
            }
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
      'contents' => [
        {
          'args' => [
            {
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'a node'
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_node_label' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'a-node'
                }
              },
              'source_info' => {
                'file_name' => 'nodes_before_top.texi',
                'line_nr' => 52,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'another'
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_node_label' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'another'
                }
              },
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
                      'text' => 'menu'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => 'nodes_before_top.texi',
                'line_nr' => 54,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 51,
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
                'spaces_after_argument' => {
                  'text' => '
'
                }
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
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 56,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'isindex' => 1,
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
            'normalized' => 'chap-first'
          }
        ],
        'normalized' => 'second'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
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
              'text' => 'another'
            }
          ],
          'type' => 'line_arg'
        },
        {
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => 'a node'
            }
          ],
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => 'second'
            }
          ],
          'info' => {
            'spaces_after_argument' => {
              'text' => '
'
            },
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
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
                  'text' => 'something'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'element_node' => {},
            'index_entry' => {
              'entry_element' => {},
              'entry_number' => 7,
              'in_code' => 0,
              'index_name' => 'cp'
            }
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
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
                  'text' => 'somewhere'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'findex',
          'extra' => {
            'element_node' => {},
            'index_entry' => {
              'entry_element' => {},
              'entry_number' => 2,
              'in_code' => 1,
              'index_name' => 'fn'
            }
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
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
                  'text' => 'another'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'element_node' => {},
            'index_entry' => {
              'entry_element' => {},
              'entry_number' => 8,
              'in_code' => 0,
              'index_name' => 'cp'
            }
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 62,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
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
        'normalized' => 'another'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
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
              'text' => 'a node'
            }
          ],
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => 'another'
            }
          ],
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'type' => 'line_arg'
        },
        {
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => 'second'
            }
          ],
          'info' => {
            'spaces_after_argument' => {
              'text' => '
'
            }
          },
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
                  'text' => 'entry after printindex'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'element_node' => {},
            'index_entry' => {
              'entry_element' => {},
              'entry_number' => 9,
              'in_code' => 0,
              'index_name' => 'cp'
            }
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 65,
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
                'spaces_after_argument' => {
                  'text' => '
'
                }
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
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 67,
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
                  'text' => 'a function'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'findex',
          'extra' => {
            'element_node' => {},
            'index_entry' => {
              'entry_element' => {},
              'entry_number' => 3,
              'in_code' => 1,
              'index_name' => 'fn'
            }
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
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
                  'text' => 'a concept a node'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'element_node' => {},
            'index_entry' => {
              'entry_element' => {},
              'entry_number' => 10,
              'in_code' => 0,
              'index_name' => 'cp'
            }
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 70,
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
                'spaces_after_argument' => {
                  'text' => '
'
                }
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
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'nodes_before_top.texi',
            'line_nr' => 72,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'isindex' => 1,
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
        'normalized' => 'a-node'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'nodes_before_top.texi',
        'line_nr' => 64,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'text' => '
',
          'type' => 'misc_arg'
        }
      ],
      'cmdname' => 'bye'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[1]{'contents'}[0]{'extra'}{'element_node'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[1];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[1]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_node_label'}{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[1]{'extra'}{'nodes_manuals'}[1]{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[1]{'extra'}{'nodes_manuals'}[3]{'manual_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[1]{'args'}[3]{'contents'}[1];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[2]{'contents'}[1]{'extra'}{'element_node'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[2];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[2]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[2]{'contents'}[1];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[2]{'contents'}[5]{'extra'}{'element_node'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[2];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[2]{'contents'}[5]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[2]{'contents'}[5];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[2]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[2]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[2]{'args'}[3]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[3]{'contents'}[0]{'extra'}{'element_node'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[3];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[3]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[3]{'contents'}[10]{'contents'}[0]{'extra'}{'menu_entry_node_label'}{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[3]{'contents'}[10]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[3]{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[3]{'args'}[2]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[4]{'contents'}[1]{'extra'}{'element_node'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[4];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[4]{'contents'}[1];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[4]{'contents'}[2]{'extra'}{'element_node'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[4];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[4]{'contents'}[2];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[4]{'contents'}[3]{'extra'}{'element_node'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[4];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[4]{'contents'}[3];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'extra'}{'menu_entry_node_label'}{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[4]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[4]{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[4]{'args'}[2]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[4]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[4]{'args'}[3]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[5]{'contents'}[0]{'contents'}[0]{'extra'}{'menu_entry_node_label'}{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[5]{'contents'}[0]{'contents'}[1]{'extra'}{'menu_entry_node_label'}{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[5]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[5]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[5]{'args'}[3]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[6]{'contents'}[1]{'extra'}{'element_node'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[6];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[6]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[6]{'contents'}[1];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[6]{'contents'}[2]{'extra'}{'element_node'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[6];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[6]{'contents'}[2]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[6]{'contents'}[2];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[6]{'contents'}[3]{'extra'}{'element_node'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[6];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[6]{'contents'}[3]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[6]{'contents'}[3];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[6]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[6]{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[6]{'args'}[2]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[6]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[6]{'args'}[3]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[7]{'contents'}[0]{'extra'}{'element_node'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[7];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[7]{'contents'}[0]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[7]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[7]{'contents'}[4]{'extra'}{'element_node'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[7];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[7]{'contents'}[4]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[7]{'contents'}[4];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[7]{'contents'}[5]{'extra'}{'element_node'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[7];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[7]{'contents'}[5]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[7]{'contents'}[5];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[7]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[7]{'extra'}{'nodes_manuals'}[1]{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[7]{'args'}[1]{'contents'}[0];
$result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[7]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'nodes_before_top_split_chapter_no_nodes'}{'contents'}[7]{'args'}[3]{'contents'}[0];

$result_texis{'nodes_before_top_split_chapter_no_nodes'} = '\\input texinfo @c -*-texinfo-*-

@c test nodes before Top node


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
* chap first::
@end menu

@node chap first,,Top, Top
Text and then index entries
@cindex ! entry in node
@findex fun in node
@cindex entry in node

@printindex cp

@menu
* second::
@end menu

@node second,,,chap first
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


$result_texts{'nodes_before_top_split_chapter_no_nodes'} = '

in first node
* node in menu before top::


node in menu before top text






And one one more index


* chap first::

Text and then index entries


* second::

* a node::
* another::








';

$result_nodes{'nodes_before_top_split_chapter_no_nodes'} = {
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
  'info' => {},
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
        'normalized' => 'chap-first'
      },
      'info' => {},
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
          'info' => {},
          'structure' => {
            'menu_child' => {
              'cmdname' => 'node',
              'extra' => {
                'isindex' => 1,
                'normalized' => 'a-node'
              },
              'info' => {},
              'structure' => {
                'node_next' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'another'
                  },
                  'info' => {},
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
      'info' => {},
      'structure' => {
        'menu_child' => {
          'cmdname' => 'node',
          'extra' => {
            'isindex' => 1,
            'normalized' => 'node-in-menu-before-top'
          },
          'info' => {},
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
$result_nodes{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_nodes{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_nodes{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_nodes{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'menu_child'};
$result_nodes{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'nodes_before_top_split_chapter_no_nodes'};
$result_nodes{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'nodes_before_top_split_chapter_no_nodes'};
$result_nodes{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'node_prev'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'node_prev'};
$result_nodes{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'node_prev'}{'structure'}{'node_next'} = $result_nodes{'nodes_before_top_split_chapter_no_nodes'};

$result_menus{'nodes_before_top_split_chapter_no_nodes'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'isindex' => 1,
        'normalized' => 'chap-first'
      },
      'info' => {},
      'structure' => {
        'menu_child' => {
          'cmdname' => 'node',
          'extra' => {
            'isindex' => 1,
            'normalized' => 'second'
          },
          'info' => {},
          'structure' => {
            'menu_child' => {
              'cmdname' => 'node',
              'extra' => {
                'isindex' => 1,
                'normalized' => 'a-node'
              },
              'info' => {},
              'structure' => {
                'menu_next' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'another'
                  },
                  'info' => {},
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
              'chap-first' => 1
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
$result_menus{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_menus{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_menus{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_menus{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'menu_child'};
$result_menus{'nodes_before_top_split_chapter_no_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'nodes_before_top_split_chapter_no_nodes'};

$result_errors{'nodes_before_top_split_chapter_no_nodes'} = [];


$result_floats{'nodes_before_top_split_chapter_no_nodes'} = {};


$result_indices_sort_strings{'nodes_before_top_split_chapter_no_nodes'} = {
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


$result_converted_errors{'file_html'}->{'nodes_before_top_split_chapter_no_nodes'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'nodes_before_top.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' for @printindex cp outside of any section
',
    'file_name' => 'nodes_before_top.texi',
    'line_nr' => 40,
    'macro' => '',
    'text' => 'entry for index `cp\' for @printindex cp outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' for @printindex cp outside of any section
',
    'file_name' => 'nodes_before_top.texi',
    'line_nr' => 70,
    'macro' => '',
    'text' => 'entry for index `cp\' for @printindex cp outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' for @printindex cp outside of any section
',
    'file_name' => 'nodes_before_top.texi',
    'line_nr' => 62,
    'macro' => '',
    'text' => 'entry for index `cp\' for @printindex cp outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' for @printindex cp outside of any section
',
    'file_name' => 'nodes_before_top.texi',
    'line_nr' => 24,
    'macro' => '',
    'text' => 'entry for index `cp\' for @printindex cp outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' for @printindex cp outside of any section
',
    'file_name' => 'nodes_before_top.texi',
    'line_nr' => 65,
    'macro' => '',
    'text' => 'entry for index `cp\' for @printindex cp outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' for @printindex cp outside of any section
',
    'file_name' => 'nodes_before_top.texi',
    'line_nr' => 42,
    'macro' => '',
    'text' => 'entry for index `cp\' for @printindex cp outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' for @printindex cp outside of any section
',
    'file_name' => 'nodes_before_top.texi',
    'line_nr' => 7,
    'macro' => '',
    'text' => 'entry for index `cp\' for @printindex cp outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' for @printindex cp outside of any section
',
    'file_name' => 'nodes_before_top.texi',
    'line_nr' => 16,
    'macro' => '',
    'text' => 'entry for index `cp\' for @printindex cp outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' for @printindex cp outside of any section
',
    'file_name' => 'nodes_before_top.texi',
    'line_nr' => 20,
    'macro' => '',
    'text' => 'entry for index `cp\' for @printindex cp outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' for @printindex cp outside of any section
',
    'file_name' => 'nodes_before_top.texi',
    'line_nr' => 60,
    'macro' => '',
    'text' => 'entry for index `cp\' for @printindex cp outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' for @printindex fn outside of any section
',
    'file_name' => 'nodes_before_top.texi',
    'line_nr' => 69,
    'macro' => '',
    'text' => 'entry for index `fn\' for @printindex fn outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' for @printindex fn outside of any section
',
    'file_name' => 'nodes_before_top.texi',
    'line_nr' => 41,
    'macro' => '',
    'text' => 'entry for index `fn\' for @printindex fn outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' for @printindex fn outside of any section
',
    'file_name' => 'nodes_before_top.texi',
    'line_nr' => 61,
    'macro' => '',
    'text' => 'entry for index `fn\' for @printindex fn outside of any section',
    'type' => 'warning'
  }
];


1;
