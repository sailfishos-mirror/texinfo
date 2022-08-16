use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'character_and_spaces_in_refs'} = {
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
              'text' => 'Test refs'
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
                      'text' => 'other nodes'
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
                  'normalized' => 'other-nodes'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
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
                      'text' => 'node to avoid DocBook or LaTeX Top ignored'
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
                  'normalized' => 'node-to-avoid-DocBook-or-LaTeX-Top-ignored'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
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
                'command_argument' => 'menu',
                'spaces_before_argument' => ' ',
                'text_arg' => 'menu'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
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
            'line_nr' => 4,
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
              'text' => 'node to avoid DocBook or LaTeX Top ignored'
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
                  'text' => 'Testing distant nodes'
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
          'cmdname' => 'subheading',
          'extra' => {
            'spaces_before_argument' => ' '
          },
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
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a  node'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => ' ',
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'manual'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'contents' => [],
              'extra' => {
                'node_argument' => {
                  'node_content' => [
                    {}
                  ]
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => ':'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'manual'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'contents' => [],
              'extra' => {
                'node_argument' => {
                  'node_content' => [
                    {}
                  ]
                }
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
'
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
                    'spaces_after_argument' => ' ',
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'manual'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'contents' => [],
              'extra' => {
                'node_argument' => {
                  'node_content' => [
                    {}
                  ]
                }
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
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '('
                    },
                    {
                      'parent' => {},
                      'text' => 'texinfo'
                    },
                    {
                      'parent' => {},
                      'text' => ')'
                    },
                    {
                      'parent' => {},
                      'text' => 'Cross References'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'contents' => [],
              'extra' => {
                'node_argument' => {
                  'manual_content' => [
                    {}
                  ],
                  'node_content' => [
                    {}
                  ]
                }
              },
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
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'node'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '../manual/doc'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'contents' => [],
              'extra' => {
                'node_argument' => {
                  'node_content' => [
                    {}
                  ]
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 16,
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
                  'text' => 'Testing local nodes'
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
          'cmdname' => 'subheading',
          'extra' => {
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
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '!_"#$%&\'()*+-.'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'contents' => [],
              'extra' => {
                'label' => {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '!_"#$%&\'()*+-.'
                        }
                      ],
                      'parent' => {},
                      'type' => 'line_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '/;<=>?[\\]^_`|~'
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
                          'text' => 'other nodes'
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
                          'text' => 'other nodes'
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
                        'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                      },
                      {
                        'node_content' => [
                          {}
                        ],
                        'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                      },
                      {
                        'node_content' => [
                          {}
                        ],
                        'normalized' => 'other-nodes'
                      },
                      {
                        'node_content' => [
                          {}
                        ],
                        'normalized' => 'other-nodes'
                      }
                    ],
                    'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e',
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 34,
                    'macro' => ''
                  }
                },
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                }
              },
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
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '/;<=>?[\\]^_`|~'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'contents' => [],
              'extra' => {
                'label' => {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '/;<=>?[\\]^_`|~'
                        }
                      ],
                      'parent' => {},
                      'type' => 'line_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'local   node'
                        }
                      ],
                      'parent' => {},
                      'type' => 'line_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '!_"#$%&\'()*+-.'
                        }
                      ],
                      'parent' => {},
                      'type' => 'line_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'other nodes'
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
                        'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                      },
                      {
                        'node_content' => [
                          {}
                        ],
                        'normalized' => 'local-node'
                      },
                      {
                        'node_content' => [
                          {}
                        ],
                        'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                      },
                      {
                        'node_content' => [
                          {}
                        ],
                        'normalized' => 'other-nodes'
                      }
                    ],
                    'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e',
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 36,
                    'macro' => ''
                  }
                },
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                }
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
'
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
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'contents' => [],
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'Top'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 22,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'local   node'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => '  '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'contents' => [],
              'extra' => {
                'label' => {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'local   node'
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
                          'text' => '/;<=>?[\\]^_`|~'
                        }
                      ],
                      'parent' => {},
                      'type' => 'line_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'other nodes'
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
                        'normalized' => 'local-node'
                      },
                      undef,
                      {
                        'node_content' => [
                          {}
                        ],
                        'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                      },
                      {
                        'node_content' => [
                          {}
                        ],
                        'normalized' => 'other-nodes'
                      }
                    ],
                    'normalized' => 'local-node',
                    'spaces_before_argument' => '  '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 38,
                    'macro' => ''
                  }
                },
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'local-node'
                }
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
            'normalized' => 'node-to-avoid-DocBook-or-LaTeX-Top-ignored'
          }
        ],
        'normalized' => 'node-to-avoid-DocBook-or-LaTeX-Top-ignored',
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
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'other nodes'
            }
          ],
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '!_"#$%&\'()*+-.'
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
            'normalized' => 'other-nodes'
          },
          {
            'node_content' => [
              {}
            ],
            'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
          },
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
        'normalized' => 'other-nodes',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 25,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Chapter with nodes'
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
                      'text' => '!_"#$%&\'()*+-.'
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
                  'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 29,
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
                      'text' => '/;<=>?[\\]^_`|~'
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
                  'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 30,
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
                      'text' => 'local node'
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
                  'normalized' => 'local-node'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 31,
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
                'command_argument' => 'menu',
                'spaces_before_argument' => ' ',
                'text_arg' => 'menu'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 32,
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
        'line_nr' => 26,
        'macro' => ''
      }
    },
    {},
    {},
    {},
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
$result_trees{'character_and_spaces_in_refs'}{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[1]{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'extra'}{'menu_entry_description'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[0]{'args'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[2]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[2]{'args'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[2]{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[2]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[4]{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[4];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[4]{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[4];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[4]{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[4];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[4]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[4]{'args'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[4]{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[4];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[4]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[6]{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[6]{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[6]{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[6]{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[6];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[6]{'extra'}{'node_argument'}{'manual_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[6]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[7]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[8]{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[8];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[8]{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[8];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[8]{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[8];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[8]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[8]{'args'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[8]{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[8];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[8]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[8]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'contents'}[9]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[4]{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[4];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[4]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[5]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'args'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'args'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'args'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[1]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'args'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'args'}[2]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'args'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'}{'parent'} = $result_trees{'character_and_spaces_in_refs'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'args'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'args'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'args'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[1]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'args'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'args'}[2]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'args'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'}{'parent'} = $result_trees{'character_and_spaces_in_refs'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[4]{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[4];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[4]{'extra'}{'label'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[4]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[4]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[5]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'}{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'}{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'}{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'}{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'}{'args'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'}{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'}{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'}{'args'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'}{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'}{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'}{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'}{'args'}[2]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'}{'args'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'}{'parent'} = $result_trees{'character_and_spaces_in_refs'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[7]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[7]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'args'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'args'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'args'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'extra'}{'nodes_manuals'}[1]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'args'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'args'}[2]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'args'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'parent'} = $result_trees{'character_and_spaces_in_refs'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'args'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'extra'}{'menu_entry_description'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[3]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[3]{'args'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[3]{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[3]{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[3]{'args'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[3]{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[3]{'extra'}{'menu_entry_description'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[3]{'args'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[3]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[3]{'args'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'parent'} = $result_trees{'character_and_spaces_in_refs'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[6] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[7] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[2]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[8] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[3]{'contents'}[6]{'contents'}[6]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs'}{'contents'}[9];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[9]{'parent'} = $result_trees{'character_and_spaces_in_refs'};

$result_texis{'character_and_spaces_in_refs'} = '@node Top
@top Test refs

@menu
* other nodes::
* node to avoid DocBook or LaTeX Top ignored::
@end menu

@node node to avoid DocBook or LaTeX Top ignored
@subheading Testing distant nodes

@ref{ a  node ,,, manual}
@ref{:,,,manual}
@ref{ top ,,, manual}
@ref{(texinfo)Cross References}
@ref{node,,, ../manual/doc}

@subheading Testing local nodes

@ref{!_"#$%&\'()*+-.}
@ref{/;<=>?[\\]^_`|~}
@ref{ Top}
@ref{  local   node}

@node other nodes, !_"#$%&\'()*+-., Top, Top
@chapter Chapter with nodes

@menu
* !_"#$%&\'()*+-.::
* /;<=>?[\\]^_`|~::
* local node::
@end menu

@node !_"#$%&\'()*+-., /;<=>?[\\]^_`|~, other nodes, other nodes

@node /;<=>?[\\]^_`|~,local   node,!_"#$%&\'()*+-., other nodes

@node  local   node,,/;<=>?[\\]^_`|~,other nodes

@bye
';


$result_texts{'character_and_spaces_in_refs'} = 'Test refs
*********

* other nodes::
* node to avoid DocBook or LaTeX Top ignored::

Testing distant nodes
---------------------

a  node
:
top
(texinfo)Cross References
node

Testing local nodes
-------------------

!_"#$%&\'()*+-.
/;<=>?[\\]^_`|~
Top
local   node

1 Chapter with nodes
********************

* !_"#$%&\'()*+-.::
* /;<=>?[\\]^_`|~::
* local node::




';

$result_sectioning{'character_and_spaces_in_refs'} = {
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
                    'normalized' => 'other-nodes'
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
$result_sectioning{'character_and_spaces_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'character_and_spaces_in_refs'}{'structure'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'character_and_spaces_in_refs'}{'structure'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'character_and_spaces_in_refs'}{'structure'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'character_and_spaces_in_refs'};

$result_nodes{'character_and_spaces_in_refs'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'menus' => [
      {
        'cmdname' => 'menu',
        'extra' => {}
      }
    ],
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'menus' => [
          {
            'cmdname' => 'menu',
            'extra' => {}
          }
        ],
        'normalized' => 'other-nodes'
      },
      'structure' => {
        'menu_child' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
          },
          'structure' => {
            'node_next' => {
              'cmdname' => 'node',
              'extra' => {
                'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
              },
              'structure' => {
                'node_next' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'local-node'
                  },
                  'structure' => {
                    'node_prev' => {},
                    'node_up' => {}
                  }
                },
                'node_prev' => {},
                'node_up' => {}
              }
            },
            'node_prev' => {},
            'node_up' => {}
          }
        },
        'node_next' => {},
        'node_prev' => {},
        'node_up' => {}
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'};
$result_nodes{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'character_and_spaces_in_refs'}{'structure'}{'menu_child'};
$result_nodes{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_nodes{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'character_and_spaces_in_refs'}{'structure'}{'menu_child'};
$result_nodes{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'character_and_spaces_in_refs'}{'structure'}{'menu_child'};
$result_nodes{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'character_and_spaces_in_refs'}{'structure'}{'menu_child'};
$result_nodes{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'node_next'} = $result_nodes{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_nodes{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'character_and_spaces_in_refs'};
$result_nodes{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'character_and_spaces_in_refs'};
$result_nodes{'character_and_spaces_in_refs'}{'structure'}{'node_next'} = $result_nodes{'character_and_spaces_in_refs'}{'structure'}{'menu_child'};

$result_menus{'character_and_spaces_in_refs'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'other-nodes'
      },
      'structure' => {
        'menu_child' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
          },
          'structure' => {
            'menu_next' => {
              'cmdname' => 'node',
              'extra' => {
                'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
              },
              'structure' => {
                'menu_next' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'local-node'
                  },
                  'structure' => {
                    'menu_prev' => {},
                    'menu_up' => {},
                    'menu_up_hash' => {
                      'other-nodes' => 1
                    }
                  }
                },
                'menu_prev' => {},
                'menu_up' => {},
                'menu_up_hash' => {
                  'other-nodes' => 1
                }
              }
            },
            'menu_up' => {},
            'menu_up_hash' => {
              'other-nodes' => 1
            }
          }
        },
        'menu_next' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'node-to-avoid-DocBook-or-LaTeX-Top-ignored'
          },
          'structure' => {
            'menu_prev' => {},
            'menu_up' => {},
            'menu_up_hash' => {
              'Top' => 1
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
$result_menus{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'};
$result_menus{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'character_and_spaces_in_refs'}{'structure'}{'menu_child'};
$result_menus{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_menus{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'character_and_spaces_in_refs'}{'structure'}{'menu_child'};
$result_menus{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'character_and_spaces_in_refs'}{'structure'}{'menu_child'};
$result_menus{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'character_and_spaces_in_refs'}{'structure'}{'menu_child'};
$result_menus{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'character_and_spaces_in_refs'};
$result_menus{'character_and_spaces_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'character_and_spaces_in_refs'};

$result_errors{'character_and_spaces_in_refs'} = [];


$result_floats{'character_and_spaces_in_refs'} = {};



$result_converted{'info'}->{'character_and_spaces_in_refs'} = 'This is , produced from .


File: ,  Node: Top,  Next: other nodes,  Up: (dir)

Test refs
*********

* Menu:

* other nodes::
* node to avoid DocBook or LaTeX Top ignored::


File: ,  Node: node to avoid DocBook or LaTeX Top ignored,  Prev: other nodes,  Up: Top

Testing distant nodes
---------------------

*note (manual)a node:: *note (manual)::: *note (manual)top:: *note
(texinfo)Cross References:: *note (../manual/doc)node::

Testing local nodes
-------------------

*note !_"#$%&\'()*+-.:: *note /;<=>?[\\]^_`|~:: *note Top:: *note local
node::


File: ,  Node: other nodes,  Next: !_"#$%&\'()*+-.,  Prev: Top,  Up: Top

1 Chapter with nodes
********************

* Menu:

* !_"#$%&\'()*+-.::
* /;<=>?[\\]^_`|~::
* local node::


File: ,  Node: !_"#$%&\'()*+-.,  Next: /;<=>?[\\]^_`|~,  Prev: other nodes,  Up: other nodes


File: ,  Node: /;<=>?[\\]^_`|~,  Next: local node,  Prev: !_"#$%&\'()*+-.,  Up: other nodes


File: ,  Node: local node,  Prev: /;<=>?[\\]^_`|~,  Up: other nodes



Tag Table:
Node: Top27
Node: node to avoid DocBook or LaTeX Top ignored175
Node: other nodes556
Node: !_"#$%&\'()*+-.737
Node: /;<=>?[\\]^_`|~831
Node: local node924

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'character_and_spaces_in_refs'} = [
  {
    'error_line' => 'warning: @ref node name should not contain `:\'
',
    'file_name' => '',
    'line_nr' => 13,
    'macro' => '',
    'text' => '@ref node name should not contain `:\'',
    'type' => 'warning'
  }
];



$result_converted{'html'}->{'character_and_spaces_in_refs'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Test refs</title>

<meta name="description" content="Test refs">
<meta name="keywords" content="Test refs">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">


</head>

<body lang="en">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#other-nodes" accesskey="n" rel="next">Chapter with nodes</a> &nbsp; </p>
</div>
<h1 class="top" id="Test-refs">Test refs</h1>


<ul class="mini-toc">
<li><a href="#other-nodes" accesskey="1">Chapter with nodes</a></li>
</ul>
<hr>
<a class="node-id" id="node-to-avoid-DocBook-or-LaTeX-Top-ignored"></a><div class="nav-panel">
<p>
Previous: <a href="#other-nodes" accesskey="p" rel="prev">Chapter with nodes</a>, Up: <a href="#Top" accesskey="u" rel="up">Test refs</a> &nbsp; </p>
</div>
<h4 class="node">node to avoid DocBook or LaTeX Top ignored</h4>
<h4 class="subheading" id="Testing-distant-nodes">Testing distant nodes</h4>

<p><a data-manual="manual" href="manual.html#a-node">(manual)a  node</a>
<a data-manual="manual" href="manual.html#g_t_003a">(manual):</a>
<a data-manual="manual" href="manual.html#Top">(manual)top</a>
<a data-manual="texinfo" href="texinfo.html#Cross-References">(texinfo)Cross References</a>
<a data-manual="../manual/doc" href="doc.html#node">(../manual/doc)node</a>
</p>
<h4 class="subheading" id="Testing-local-nodes">Testing local nodes</h4>

<p><a class="ref" href="#g_t_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e">!_&quot;#$%&amp;\'()*+-.</a>
<a class="ref" href="#g_t_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e">/;&lt;=&gt;?[\\]^_`|~</a>
<a class="ref" href="#Top">Test refs</a>
<a class="ref" href="#local-node">local   node</a>
</p>
<hr>
<div class="chapter-level-extent" id="other-nodes">
<div class="nav-panel">
<p>
Next: <a href="#g_t_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e" accesskey="n" rel="next">!_&quot;#$%&amp;\'()*+-.</a>, Previous: <a href="#Top" accesskey="p" rel="prev">Test refs</a>, Up: <a href="#Top" accesskey="u" rel="up">Test refs</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Chapter-with-nodes">1 Chapter with nodes</h2>


<hr>
<a class="node-id" id="g_t_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e"></a><div class="nav-panel">
<p>
Next: <a href="#g_t_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e" accesskey="n" rel="next">/;&lt;=&gt;?[\\]^_`|~</a>, Previous: <a href="#other-nodes" accesskey="p" rel="prev">Chapter with nodes</a>, Up: <a href="#other-nodes" accesskey="u" rel="up">Chapter with nodes</a> &nbsp; </p>
</div>
<h4 class="node">!_&quot;#$%&amp;\'()*+-.</h4>

<hr>
<a class="node-id" id="g_t_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e"></a><div class="nav-panel">
<p>
Next: <a href="#local-node" accesskey="n" rel="next">local   node</a>, Previous: <a href="#g_t_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e" accesskey="p" rel="prev">!_&quot;#$%&amp;\'()*+-.</a>, Up: <a href="#other-nodes" accesskey="u" rel="up">Chapter with nodes</a> &nbsp; </p>
</div>
<h4 class="node">/;&lt;=&gt;?[\\]^_`|~</h4>

<hr>
<a class="node-id" id="local-node"></a><div class="nav-panel">
<p>
Previous: <a href="#g_t_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e" accesskey="p" rel="prev">/;&lt;=&gt;?[\\]^_`|~</a>, Up: <a href="#other-nodes" accesskey="u" rel="up">Chapter with nodes</a> &nbsp; </p>
</div>
<h4 class="node">local   node</h4>

</div>
</div>



</body>
</html>
';


$result_converted{'docbook'}->{'character_and_spaces_in_refs'} = '<anchor id="node-to-avoid-DocBook-or-LaTeX-Top-ignored"/>
<bridgehead renderas="sect2">Testing distant nodes</bridgehead>

<para>&#8220;a  node&#8221; in <filename>manual</filename>
&#8220;:&#8221; in <filename>manual</filename>
&#8220;top&#8221; in <filename>manual</filename>
<link>(texinfo)Cross References</link>
&#8220;node&#8221; in <filename>../manual/doc</filename>
</para>
<bridgehead renderas="sect2">Testing local nodes</bridgehead>

<para><link linkend="_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e">!_&quot;#$%&amp;&#8217;()*+-.</link>
<link linkend="_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e">/;&lt;=&gt;?[\\]^_&#8216;|~</link>
<link linkend="Top">Top</link>
<link linkend="local-node">local   node</link>
</para>
<chapter label="1" id="other-nodes">
<title>Chapter with nodes</title>


</chapter>
<anchor id="_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e"/>

<anchor id="_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e"/>

<anchor id="local-node"/>

';

1;
