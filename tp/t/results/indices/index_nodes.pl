use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'index_nodes'} = {
  'contents' => [
    {
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
            }
          ],
          'type' => 'preamble_before_setfilename'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'index_nodes'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'setfilename',
              'extra' => {
                'text_arg' => 'index_nodes'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'index_nodes.texi',
                'line_nr' => 3,
                'macro' => ''
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
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => 'index_nodes.texi',
            'line_nr' => 6,
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
            'file_name' => 'index_nodes.texi',
            'line_nr' => 8,
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
            'file_name' => 'index_nodes.texi',
            'line_nr' => 10,
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
            'file_name' => 'index_nodes.texi',
            'line_nr' => 14,
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
                'spaces_after_argument' => '
'
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
            {
              'args' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'first'
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
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'first'
                }
              },
              'source_info' => {
                'file_name' => 'index_nodes.texi',
                'line_nr' => 17,
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
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'index_nodes.texi',
                'line_nr' => 18,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => 'index_nodes.texi',
            'line_nr' => 16,
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
        'file_name' => 'index_nodes.texi',
        'line_nr' => 5,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'first'
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
            'spaces_after_argument' => '
',
            'spaces_before_argument' => ' '
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
                  'index_ignore_chars' => {},
                  'index_name' => 'cp',
                  'index_type_command' => 'cindex'
                }
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'index_nodes.texi',
                'line_nr' => 22,
                'macro' => ''
              },
              'type' => 'index_entry_command'
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
                  'index_ignore_chars' => {},
                  'index_name' => 'cp',
                  'index_type_command' => 'cindex'
                }
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'index_nodes.texi',
                'line_nr' => 23,
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
                'file_name' => 'index_nodes.texi',
                'line_nr' => 24,
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
                  'index_ignore_chars' => {},
                  'index_name' => 'cp',
                  'index_type_command' => 'cindex'
                }
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'index_nodes.texi',
                'line_nr' => 25,
                'macro' => ''
              },
              'type' => 'index_entry_command'
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
            'file_name' => 'index_nodes.texi',
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
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
            {
              'args' => [
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
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'second'
                }
              },
              'source_info' => {
                'file_name' => 'index_nodes.texi',
                'line_nr' => 30,
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
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'index_nodes.texi',
                'line_nr' => 31,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => 'index_nodes.texi',
            'line_nr' => 29,
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
        'normalized' => 'first'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'index_nodes.texi',
        'line_nr' => 20,
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
              'text' => 'first'
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
      'contents' => [
        {
          'args' => [
            {
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
            {
              'args' => [
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
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'a-node'
                }
              },
              'source_info' => {
                'file_name' => 'index_nodes.texi',
                'line_nr' => 35,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
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
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'another'
                }
              },
              'source_info' => {
                'file_name' => 'index_nodes.texi',
                'line_nr' => 36,
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
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'index_nodes.texi',
                'line_nr' => 37,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => 'index_nodes.texi',
            'line_nr' => 34,
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
            'file_name' => 'index_nodes.texi',
            'line_nr' => 39,
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
        'normalized' => 'second'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'index_nodes.texi',
        'line_nr' => 33,
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
            'spaces_before_argument' => ' '
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
            'spaces_before_argument' => ' '
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
            'spaces_after_argument' => '
',
            'spaces_before_argument' => ' '
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
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => 'index_nodes.texi',
            'line_nr' => 43,
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
              'entry_number' => 2,
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
            'file_name' => 'index_nodes.texi',
            'line_nr' => 44,
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
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => 'index_nodes.texi',
            'line_nr' => 45,
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
        'normalized' => 'another'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'index_nodes.texi',
        'line_nr' => 41,
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
            'spaces_before_argument' => ' '
          },
          'type' => 'line_arg'
        },
        {
          'info' => {
            'spaces_before_argument' => ' '
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
            'spaces_after_argument' => '
'
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
              'entry_number' => 7,
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
            'file_name' => 'index_nodes.texi',
            'line_nr' => 48,
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
            'file_name' => 'index_nodes.texi',
            'line_nr' => 50,
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
              'entry_number' => 3,
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
            'file_name' => 'index_nodes.texi',
            'line_nr' => 52,
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
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => 'index_nodes.texi',
            'line_nr' => 53,
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
            'file_name' => 'index_nodes.texi',
            'line_nr' => 55,
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
        'normalized' => 'a-node'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'index_nodes.texi',
        'line_nr' => 47,
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
$result_trees{'index_nodes'}{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_nodes'}{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_nodes'}{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_nodes'}{'contents'}[1]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'index_nodes'}{'contents'}[1];
$result_trees{'index_nodes'}{'contents'}[1]{'contents'}[10]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'index_nodes'}{'contents'}[1]{'contents'}[10]{'contents'}[0]{'args'}[3];
$result_trees{'index_nodes'}{'contents'}[1]{'contents'}[10]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'index_nodes'}{'contents'}[1]{'contents'}[10]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'index_nodes'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'index_nodes'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[1];
$result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'index_nodes'}{'contents'}[2];
$result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[2];
$result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'index_nodes'}{'contents'}[2];
$result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[3]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[3]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[3];
$result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[3]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'index_nodes'}{'contents'}[2];
$result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[4]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[4]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[4]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[4];
$result_trees{'index_nodes'}{'contents'}[2]{'contents'}[0]{'contents'}[4]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'index_nodes'}{'contents'}[2];
$result_trees{'index_nodes'}{'contents'}[2]{'contents'}[4]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'index_nodes'}{'contents'}[2]{'contents'}[4]{'contents'}[0]{'args'}[3];
$result_trees{'index_nodes'}{'contents'}[2]{'contents'}[4]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'index_nodes'}{'contents'}[2]{'contents'}[4]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[2]{'extra'}{'node_content'}[0] = $result_trees{'index_nodes'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[2]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'index_nodes'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[2]{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'index_nodes'}{'contents'}[2]{'args'}[2]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[2]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'index_nodes'}{'contents'}[2]{'args'}[3]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[3]{'contents'}[0]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'index_nodes'}{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[3];
$result_trees{'index_nodes'}{'contents'}[3]{'contents'}[0]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'index_nodes'}{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[3]{'contents'}[0]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'index_nodes'}{'contents'}[3]{'contents'}[0]{'contents'}[1]{'args'}[3];
$result_trees{'index_nodes'}{'contents'}[3]{'contents'}[0]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'index_nodes'}{'contents'}[3]{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'index_nodes'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'index_nodes'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[3]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'index_nodes'}{'contents'}[3]{'args'}[3]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_nodes'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_nodes'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_nodes'}{'contents'}[4]{'contents'}[1];
$result_trees{'index_nodes'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'index_nodes'}{'contents'}[4];
$result_trees{'index_nodes'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_nodes'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_nodes'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_nodes'}{'contents'}[4]{'contents'}[2];
$result_trees{'index_nodes'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'index_nodes'}{'contents'}[4];
$result_trees{'index_nodes'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_nodes'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_nodes'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_nodes'}{'contents'}[4]{'contents'}[3];
$result_trees{'index_nodes'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'index_nodes'}{'contents'}[4];
$result_trees{'index_nodes'}{'contents'}[4]{'extra'}{'node_content'}[0] = $result_trees{'index_nodes'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[4]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'index_nodes'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[4]{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'index_nodes'}{'contents'}[4]{'args'}[2]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[4]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'index_nodes'}{'contents'}[4]{'args'}[3]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_nodes'}{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_nodes'}{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_nodes'}{'contents'}[5]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'index_nodes'}{'contents'}[5];
$result_trees{'index_nodes'}{'contents'}[5]{'contents'}[4]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_nodes'}{'contents'}[5]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[5]{'contents'}[4]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_nodes'}{'contents'}[5]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[5]{'contents'}[4]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_nodes'}{'contents'}[5]{'contents'}[4];
$result_trees{'index_nodes'}{'contents'}[5]{'contents'}[4]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'index_nodes'}{'contents'}[5];
$result_trees{'index_nodes'}{'contents'}[5]{'contents'}[5]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_nodes'}{'contents'}[5]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[5]{'contents'}[5]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_nodes'}{'contents'}[5]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'index_nodes'}{'contents'}[5]{'contents'}[5]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_nodes'}{'contents'}[5]{'contents'}[5];
$result_trees{'index_nodes'}{'contents'}[5]{'contents'}[5]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'index_nodes'}{'contents'}[5];
$result_trees{'index_nodes'}{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'index_nodes'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[5]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'index_nodes'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[5]{'extra'}{'nodes_manuals'}[1]{'node_content'}[0] = $result_trees{'index_nodes'}{'contents'}[5]{'args'}[1]{'contents'}[0];
$result_trees{'index_nodes'}{'contents'}[5]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'index_nodes'}{'contents'}[5]{'args'}[3]{'contents'}[0];

$result_texis{'index_nodes'} = '\\input texinfo @c -*-texinfo-*-

@setfilename index_nodes

@node Top
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
@cindex entry in node
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


$result_texts{'index_nodes'} = '



And one one more index


* first::

Text and then index entries


* second::

* a node::
* another::








';

$result_nodes{'index_nodes'} = {
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
        'normalized' => 'first'
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
    'node_next' => {}
  }
};
$result_nodes{'index_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'index_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_nodes{'index_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'index_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_nodes{'index_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'index_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_nodes{'index_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'index_nodes'}{'structure'}{'menu_child'};
$result_nodes{'index_nodes'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'index_nodes'};
$result_nodes{'index_nodes'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'index_nodes'};
$result_nodes{'index_nodes'}{'structure'}{'node_next'} = $result_nodes{'index_nodes'}{'structure'}{'menu_child'};

$result_menus{'index_nodes'} = {
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
        'normalized' => 'first'
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
$result_menus{'index_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'index_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_menus{'index_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'index_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_menus{'index_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'index_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_menus{'index_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'index_nodes'}{'structure'}{'menu_child'};
$result_menus{'index_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'index_nodes'};

$result_errors{'index_nodes'} = [];


$result_floats{'index_nodes'} = {};


$result_indices_sort_strings{'index_nodes'} = {
  'cp' => [
    '! entry in node',
    'a concept a node',
    'another',
    'entry a',
    'entry after printindex',
    'entry in node',
    'entry in node',
    'something'
  ],
  'fn' => [
    'a function',
    'fun in node',
    'somewhere'
  ]
};


$result_converted_errors{'file_html'}->{'index_nodes'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'index_nodes.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
