use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'lowered_subsubsection'} = {
  'contents' => [
    {
      'contents' => [],
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
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {}
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
        },
        {
          'cmdname' => 'menu',
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
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Chapter'
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
                  'normalized' => 'Chapter'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
              'parent' => {},
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
                'command_argument' => 'menu',
                'spaces_before_argument' => ' ',
                'text_arg' => 'menu'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 4,
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
      'extra' => {},
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 2,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {
        'level' => 0
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
            'normalized' => 'Chapter'
          }
        ],
        'normalized' => 'Chapter',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 8,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {}
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
          'cmdname' => 'menu',
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
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Section'
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
                  'normalized' => 'Section'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              },
              'parent' => {},
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
                'command_argument' => 'menu',
                'spaces_before_argument' => ' ',
                'text_arg' => 'menu'
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
            'end_command' => {}
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
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 9,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {
        'level' => 1,
        'number' => 1
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Section'
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
            'normalized' => 'Section'
          }
        ],
        'normalized' => 'Section',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 15,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Section'
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
      'cmdname' => 'section',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'menu',
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
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Subsection'
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
                  'normalized' => 'Subsection'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 19,
                'macro' => ''
              },
              'parent' => {},
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
                'command_argument' => 'menu',
                'spaces_before_argument' => ' ',
                'text_arg' => 'menu'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 20,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 18,
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
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 16,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {
        'level' => 2,
        'number' => '1.1'
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Subsection'
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
            'normalized' => 'Subsection'
          }
        ],
        'normalized' => 'Subsection',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 22,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Subsection'
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
      'cmdname' => 'subsection',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'menu',
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
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Subsubsection'
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
                  'normalized' => 'Subsubsection'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 26,
                'macro' => ''
              },
              'parent' => {},
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
                      'text' => 'Lowered subsec'
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
                  'normalized' => 'Lowered-subsec'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 27,
                'macro' => ''
              },
              'parent' => {},
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
                'command_argument' => 'menu',
                'spaces_before_argument' => ' ',
                'text_arg' => 'menu'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 28,
                'macro' => ''
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
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 23,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {
        'level' => 3,
        'number' => '1.1.1'
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Subsubsection'
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
            'normalized' => 'Subsubsection'
          }
        ],
        'normalized' => 'Subsubsection',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 30,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Subsubsection'
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
      'cmdname' => 'subsubsection',
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
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'lowersections',
          'parent' => {}
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 31,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {
        'level' => 4,
        'number' => '1.1.1.1'
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Lowered subsec'
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
            'normalized' => 'Lowered-subsec'
          }
        ],
        'normalized' => 'Lowered-subsec',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 34,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Lowered subsec'
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
      'cmdname' => 'subsection',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'menu',
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
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Lowered subsubsection'
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
                  'normalized' => 'Lowered-subsubsection'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 38,
                'macro' => ''
              },
              'parent' => {},
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
                'command_argument' => 'menu',
                'spaces_before_argument' => ' ',
                'text_arg' => 'menu'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 39,
                'macro' => ''
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
      'extra' => {
        'sections_level' => -1,
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 35,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {
        'level' => 4,
        'number' => '1.1.1.2'
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Lowered subsubsection'
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
            'normalized' => 'Lowered-subsubsection'
          }
        ],
        'normalized' => 'Lowered-subsubsection',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 41,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Lowered subsubsection'
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
      'cmdname' => 'subsubsection',
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'raisesections',
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
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'contents',
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 45,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'sections_level' => -1,
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 42,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {
        'level' => 4,
        'number' => '1.1.1.3'
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
$result_trees{'lowered_subsubsection'}{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'};
$result_trees{'lowered_subsubsection'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[1]{'args'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'lowered_subsubsection'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'lowered_subsubsection'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[1]{'parent'} = $result_trees{'lowered_subsubsection'};
$result_trees{'lowered_subsubsection'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[2];
$result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[2];
$result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[2];
$result_trees{'lowered_subsubsection'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[2];
$result_trees{'lowered_subsubsection'}{'contents'}[2]{'parent'} = $result_trees{'lowered_subsubsection'};
$result_trees{'lowered_subsubsection'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[3]{'args'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[3];
$result_trees{'lowered_subsubsection'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'lowered_subsubsection'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'lowered_subsubsection'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[3]{'parent'} = $result_trees{'lowered_subsubsection'};
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[4]{'args'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[4];
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[4];
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[4];
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[4];
$result_trees{'lowered_subsubsection'}{'contents'}[4]{'parent'} = $result_trees{'lowered_subsubsection'};
$result_trees{'lowered_subsubsection'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[5]{'args'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[5];
$result_trees{'lowered_subsubsection'}{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'lowered_subsubsection'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[5]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'lowered_subsubsection'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[5]{'parent'} = $result_trees{'lowered_subsubsection'};
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[6]{'args'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[6];
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[6];
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[2];
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'contents'}[2];
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[6];
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[6];
$result_trees{'lowered_subsubsection'}{'contents'}[6]{'parent'} = $result_trees{'lowered_subsubsection'};
$result_trees{'lowered_subsubsection'}{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[7]{'args'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[7];
$result_trees{'lowered_subsubsection'}{'contents'}[7]{'extra'}{'node_content'}[0] = $result_trees{'lowered_subsubsection'}{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[7]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'lowered_subsubsection'}{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[7]{'parent'} = $result_trees{'lowered_subsubsection'};
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'args'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[2];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[2]{'args'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[2];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[2];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[2]{'args'}[3]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[2];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[2]{'extra'}{'menu_entry_description'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[2]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[3];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'contents'}[3];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'contents'}[2]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[8];
$result_trees{'lowered_subsubsection'}{'contents'}[8]{'parent'} = $result_trees{'lowered_subsubsection'};
$result_trees{'lowered_subsubsection'}{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[9]{'args'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[9];
$result_trees{'lowered_subsubsection'}{'contents'}[9]{'extra'}{'node_content'}[0] = $result_trees{'lowered_subsubsection'}{'contents'}[9]{'args'}[0]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[9]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'lowered_subsubsection'}{'contents'}[9]{'args'}[0]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[9]{'parent'} = $result_trees{'lowered_subsubsection'};
$result_trees{'lowered_subsubsection'}{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[10]{'args'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[10];
$result_trees{'lowered_subsubsection'}{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[10];
$result_trees{'lowered_subsubsection'}{'contents'}[10]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[10]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[10]{'contents'}[1]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[10];
$result_trees{'lowered_subsubsection'}{'contents'}[10]{'parent'} = $result_trees{'lowered_subsubsection'};
$result_trees{'lowered_subsubsection'}{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[11]{'args'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[11];
$result_trees{'lowered_subsubsection'}{'contents'}[11]{'extra'}{'node_content'}[0] = $result_trees{'lowered_subsubsection'}{'contents'}[11]{'args'}[0]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[11]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'lowered_subsubsection'}{'contents'}[11]{'args'}[0]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[11]{'parent'} = $result_trees{'lowered_subsubsection'};
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[12]{'args'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[12];
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[12];
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[2];
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1];
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'contents'}[2];
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[1]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[12];
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'contents'}[2]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[12];
$result_trees{'lowered_subsubsection'}{'contents'}[12]{'parent'} = $result_trees{'lowered_subsubsection'};
$result_trees{'lowered_subsubsection'}{'contents'}[13]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[13]{'args'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[13];
$result_trees{'lowered_subsubsection'}{'contents'}[13]{'extra'}{'node_content'}[0] = $result_trees{'lowered_subsubsection'}{'contents'}[13]{'args'}[0]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[13]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'lowered_subsubsection'}{'contents'}[13]{'args'}[0]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[13]{'parent'} = $result_trees{'lowered_subsubsection'};
$result_trees{'lowered_subsubsection'}{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[14]{'args'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[14];
$result_trees{'lowered_subsubsection'}{'contents'}[14]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[14]{'contents'}[0];
$result_trees{'lowered_subsubsection'}{'contents'}[14]{'contents'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[14];
$result_trees{'lowered_subsubsection'}{'contents'}[14]{'contents'}[1]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[14];
$result_trees{'lowered_subsubsection'}{'contents'}[14]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[14]{'contents'}[2];
$result_trees{'lowered_subsubsection'}{'contents'}[14]{'contents'}[2]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[14];
$result_trees{'lowered_subsubsection'}{'contents'}[14]{'parent'} = $result_trees{'lowered_subsubsection'};
$result_trees{'lowered_subsubsection'}{'contents'}[15]{'args'}[0]{'parent'} = $result_trees{'lowered_subsubsection'}{'contents'}[15];
$result_trees{'lowered_subsubsection'}{'contents'}[15]{'parent'} = $result_trees{'lowered_subsubsection'};

$result_texis{'lowered_subsubsection'} = '@node Top
@top

@menu
* Chapter::
@end menu

@node Chapter
@chapter Chapter

@menu
* Section::
@end menu

@node Section
@section Section

@menu
* Subsection::
@end menu

@node Subsection
@subsection Subsection

@menu
* Subsubsection::
* Lowered subsec::
@end menu

@node Subsubsection
@subsubsection Subsubsection

@lowersections
@node Lowered subsec
@subsection Lowered subsec

@menu
* Lowered subsubsection::
@end menu

@node Lowered subsubsection
@subsubsection Lowered subsubsection
@raisesections

@contents
@bye
';


$result_texts{'lowered_subsubsection'} = '
* Chapter::

1 Chapter
*********

* Section::

1.1 Section
===========

* Subsection::

1.1.1 Subsection
----------------

* Subsubsection::
* Lowered subsec::

1.1.1.1 Subsubsection
.....................

1.1.1.2 Lowered subsec
......................

* Lowered subsubsection::

1.1.1.3 Lowered subsubsection
.............................

';

$result_sectioning{'lowered_subsubsection'} = {
  'structure' => {
    'level' => -1,
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top',
              'spaces_before_argument' => ' '
            },
            'structure' => {}
          }
        },
        'structure' => {
          'level' => 0,
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'Chapter',
                    'spaces_before_argument' => ' '
                  },
                  'structure' => {}
                },
                'spaces_before_argument' => ' '
              },
              'structure' => {
                'level' => 1,
                'number' => 1,
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'Section',
                          'spaces_before_argument' => ' '
                        },
                        'structure' => {}
                      },
                      'spaces_before_argument' => ' '
                    },
                    'structure' => {
                      'level' => 2,
                      'number' => '1.1',
                      'section_childs' => [
                        {
                          'cmdname' => 'subsection',
                          'extra' => {
                            'associated_node' => {
                              'cmdname' => 'node',
                              'extra' => {
                                'normalized' => 'Subsection',
                                'spaces_before_argument' => ' '
                              },
                              'structure' => {}
                            },
                            'spaces_before_argument' => ' '
                          },
                          'structure' => {
                            'level' => 3,
                            'number' => '1.1.1',
                            'section_childs' => [
                              {
                                'cmdname' => 'subsubsection',
                                'extra' => {
                                  'associated_node' => {
                                    'cmdname' => 'node',
                                    'extra' => {
                                      'normalized' => 'Subsubsection',
                                      'spaces_before_argument' => ' '
                                    },
                                    'structure' => {}
                                  },
                                  'spaces_before_argument' => ' '
                                },
                                'structure' => {
                                  'level' => 4,
                                  'number' => '1.1.1.1',
                                  'section_up' => {}
                                }
                              },
                              {
                                'cmdname' => 'subsection',
                                'extra' => {
                                  'associated_node' => {
                                    'cmdname' => 'node',
                                    'extra' => {
                                      'normalized' => 'Lowered-subsec',
                                      'spaces_before_argument' => ' '
                                    },
                                    'structure' => {}
                                  },
                                  'sections_level' => -1,
                                  'spaces_before_argument' => ' '
                                },
                                'structure' => {
                                  'level' => 4,
                                  'number' => '1.1.1.2',
                                  'section_prev' => {},
                                  'section_up' => {}
                                }
                              },
                              {
                                'cmdname' => 'subsubsection',
                                'extra' => {
                                  'associated_node' => {
                                    'cmdname' => 'node',
                                    'extra' => {
                                      'normalized' => 'Lowered-subsubsection',
                                      'spaces_before_argument' => ' '
                                    },
                                    'structure' => {}
                                  },
                                  'sections_level' => -1,
                                  'spaces_before_argument' => ' '
                                },
                                'structure' => {
                                  'level' => 4,
                                  'number' => '1.1.1.3',
                                  'section_prev' => {},
                                  'section_up' => {}
                                }
                              }
                            ],
                            'section_up' => {}
                          }
                        }
                      ],
                      'section_up' => {}
                    }
                  }
                ],
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_up' => {}
        }
      }
    ]
  }
};
$result_sectioning{'lowered_subsubsection'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'lowered_subsubsection'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'lowered_subsubsection'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'lowered_subsubsection'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'lowered_subsubsection'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'lowered_subsubsection'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'lowered_subsubsection'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2]{'structure'}{'section_prev'} = $result_sectioning{'lowered_subsubsection'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1];
$result_sectioning{'lowered_subsubsection'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2]{'structure'}{'section_up'} = $result_sectioning{'lowered_subsubsection'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'lowered_subsubsection'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'lowered_subsubsection'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'lowered_subsubsection'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'lowered_subsubsection'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'lowered_subsubsection'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'lowered_subsubsection'}{'structure'}{'section_childs'}[0];
$result_sectioning{'lowered_subsubsection'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'lowered_subsubsection'}{'structure'}{'section_childs'}[0];
$result_sectioning{'lowered_subsubsection'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'lowered_subsubsection'}{'structure'}{'section_childs'}[0];
$result_sectioning{'lowered_subsubsection'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'lowered_subsubsection'};

$result_nodes{'lowered_subsubsection'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {
        'level' => 0
      }
    },
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'menus' => [
    {
      'cmdname' => 'menu',
      'extra' => {
        'end_command' => {
          'cmdname' => 'end',
          'extra' => {
            'command_argument' => 'menu',
            'spaces_before_argument' => ' ',
            'text_arg' => 'menu'
          }
        }
      }
    }
  ],
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'structure' => {
            'level' => 1,
            'number' => 1
          }
        },
        'normalized' => 'Chapter',
        'spaces_before_argument' => ' '
      },
      'menus' => [
        {
          'cmdname' => 'menu',
          'extra' => {
            'end_command' => {
              'cmdname' => 'end',
              'extra' => {
                'command_argument' => 'menu',
                'spaces_before_argument' => ' ',
                'text_arg' => 'menu'
              }
            }
          }
        }
      ],
      'structure' => {
        'menu_child' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'section',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'structure' => {
                'level' => 2,
                'number' => '1.1'
              }
            },
            'normalized' => 'Section',
            'spaces_before_argument' => ' '
          },
          'menus' => [
            {
              'cmdname' => 'menu',
              'extra' => {
                'end_command' => {
                  'cmdname' => 'end',
                  'extra' => {
                    'command_argument' => 'menu',
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'menu'
                  }
                }
              }
            }
          ],
          'structure' => {
            'menu_child' => {
              'cmdname' => 'node',
              'extra' => {
                'associated_section' => {
                  'cmdname' => 'subsection',
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'structure' => {
                    'level' => 3,
                    'number' => '1.1.1'
                  }
                },
                'normalized' => 'Subsection',
                'spaces_before_argument' => ' '
              },
              'menus' => [
                {
                  'cmdname' => 'menu',
                  'extra' => {
                    'end_command' => {
                      'cmdname' => 'end',
                      'extra' => {
                        'command_argument' => 'menu',
                        'spaces_before_argument' => ' ',
                        'text_arg' => 'menu'
                      }
                    }
                  }
                }
              ],
              'structure' => {
                'menu_child' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'associated_section' => {
                      'cmdname' => 'subsubsection',
                      'extra' => {
                        'spaces_before_argument' => ' '
                      },
                      'structure' => {
                        'level' => 4,
                        'number' => '1.1.1.1'
                      }
                    },
                    'normalized' => 'Subsubsection',
                    'spaces_before_argument' => ' '
                  },
                  'structure' => {
                    'node_next' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'associated_section' => {
                          'cmdname' => 'subsection',
                          'extra' => {
                            'sections_level' => -1,
                            'spaces_before_argument' => ' '
                          },
                          'structure' => {
                            'level' => 4,
                            'number' => '1.1.1.2'
                          }
                        },
                        'normalized' => 'Lowered-subsec',
                        'spaces_before_argument' => ' '
                      },
                      'menus' => [
                        {
                          'cmdname' => 'menu',
                          'extra' => {
                            'end_command' => {
                              'cmdname' => 'end',
                              'extra' => {
                                'command_argument' => 'menu',
                                'spaces_before_argument' => ' ',
                                'text_arg' => 'menu'
                              }
                            }
                          }
                        }
                      ],
                      'structure' => {
                        'menu_child' => {
                          'cmdname' => 'node',
                          'extra' => {
                            'associated_section' => {
                              'cmdname' => 'subsubsection',
                              'extra' => {
                                'sections_level' => -1,
                                'spaces_before_argument' => ' '
                              },
                              'structure' => {
                                'level' => 4,
                                'number' => '1.1.1.3'
                              }
                            },
                            'normalized' => 'Lowered-subsubsection',
                            'spaces_before_argument' => ' '
                          },
                          'structure' => {
                            'node_prev' => {},
                            'node_up' => {}
                          }
                        },
                        'node_next' => {},
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
$result_nodes{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'};
$result_nodes{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_nodes{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'} = $result_nodes{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'menu_child'};
$result_nodes{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_nodes{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_nodes{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_nodes{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_nodes{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'lowered_subsubsection'}{'structure'}{'menu_child'};
$result_nodes{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'lowered_subsubsection'};
$result_nodes{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'lowered_subsubsection'};
$result_nodes{'lowered_subsubsection'}{'structure'}{'node_next'} = $result_nodes{'lowered_subsubsection'}{'structure'}{'menu_child'};

$result_menus{'lowered_subsubsection'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'Chapter',
        'spaces_before_argument' => ' '
      },
      'structure' => {
        'menu_child' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'Section',
            'spaces_before_argument' => ' '
          },
          'structure' => {
            'menu_child' => {
              'cmdname' => 'node',
              'extra' => {
                'normalized' => 'Subsection',
                'spaces_before_argument' => ' '
              },
              'structure' => {
                'menu_child' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'Subsubsection',
                    'spaces_before_argument' => ' '
                  },
                  'structure' => {
                    'menu_next' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'normalized' => 'Lowered-subsec',
                        'spaces_before_argument' => ' '
                      },
                      'structure' => {
                        'menu_child' => {
                          'cmdname' => 'node',
                          'extra' => {
                            'normalized' => 'Lowered-subsubsection',
                            'spaces_before_argument' => ' '
                          },
                          'structure' => {
                            'menu_up' => {},
                            'menu_up_hash' => {
                              'Lowered-subsec' => 1
                            }
                          }
                        },
                        'menu_prev' => {},
                        'menu_up' => {},
                        'menu_up_hash' => {
                          'Subsection' => 1
                        }
                      }
                    },
                    'menu_up' => {},
                    'menu_up_hash' => {
                      'Subsection' => 1
                    }
                  }
                },
                'menu_up' => {},
                'menu_up_hash' => {
                  'Section' => 1
                }
              }
            },
            'menu_up' => {},
            'menu_up_hash' => {
              'Chapter' => 1
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
$result_menus{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'};
$result_menus{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_menus{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_menus{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_menus{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_menus{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'lowered_subsubsection'}{'structure'}{'menu_child'};
$result_menus{'lowered_subsubsection'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'lowered_subsubsection'};

$result_errors{'lowered_subsubsection'} = [
  {
    'error_line' => ':34: warning: node next for `Lowered subsec\' is `Lowered subsubsection\' in sectioning but not in menu
',
    'file_name' => '',
    'line_nr' => 34,
    'macro' => '',
    'text' => 'node next for `Lowered subsec\' is `Lowered subsubsection\' in sectioning but not in menu',
    'type' => 'warning'
  },
  {
    'error_line' => ':41: warning: node prev for `Lowered subsubsection\' is `Lowered subsec\' in sectioning but not in menu
',
    'file_name' => '',
    'line_nr' => 41,
    'macro' => '',
    'text' => 'node prev for `Lowered subsubsection\' is `Lowered subsec\' in sectioning but not in menu',
    'type' => 'warning'
  },
  {
    'error_line' => ':41: warning: node up pointer for `Lowered subsubsection\' is `Subsection\' but up is `Lowered subsec\' in menu
',
    'file_name' => '',
    'line_nr' => 41,
    'macro' => '',
    'text' => 'node up pointer for `Lowered subsubsection\' is `Subsection\' but up is `Lowered subsec\' in menu',
    'type' => 'warning'
  },
  {
    'error_line' => ':22: warning: node `Subsection\' lacks menu item for `Lowered subsubsection\' despite being its Up target
',
    'file_name' => '',
    'line_nr' => 22,
    'macro' => '',
    'text' => 'node `Subsection\' lacks menu item for `Lowered subsubsection\' despite being its Up target',
    'type' => 'warning'
  }
];


$result_floats{'lowered_subsubsection'} = {};


1;
