use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'character_and_spaces_in_refs'} = {
  'contents' => [
    {
      'contents' => [
        {
          'type' => 'preamble_before_content'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
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
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'character_and_spaces_in_refs_text.texi',
        'line_nr' => 1
      }
    },
    {
      'cmdname' => 'top',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Test refs'
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
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'menu',
          'contents' => [
            {
              'contents' => [
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
              'type' => 'arguments_line'
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
                      'text' => 'node to avoid DocBook or LaTeX ignored'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'node-to-avoid-DocBook-or-LaTeX-ignored'
                  },
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
              'source_info' => {
                'file_name' => 'character_and_spaces_in_refs_text.texi',
                'line_nr' => 5
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
                      'text' => 'other nodes'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'other-nodes'
                  },
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
              'source_info' => {
                'file_name' => 'character_and_spaces_in_refs_text.texi',
                'line_nr' => 6
              },
              'type' => 'menu_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
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
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => 'character_and_spaces_in_refs_text.texi',
                'line_nr' => 7
              }
            }
          ],
          'source_info' => {
            'file_name' => 'character_and_spaces_in_refs_text.texi',
            'line_nr' => 4
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'character_and_spaces_in_refs_text.texi',
        'line_nr' => 2
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'node to avoid DocBook or LaTeX ignored'
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
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'node-to-avoid-DocBook-or-LaTeX-ignored'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'character_and_spaces_in_refs_text.texi',
        'line_nr' => 9
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'first chapter'
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
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'subheading',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Testing distant nodes'
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
          'extra' => {},
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'character_and_spaces_in_refs_text.texi',
            'line_nr' => 12
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a  node'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    }
                  },
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => ' '
                    },
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'type' => 'brace_arg'
                },
                {
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'manual'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'character_and_spaces_in_refs_text.texi',
                'line_nr' => 14
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ':'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'type' => 'brace_arg'
                },
                {
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'manual'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'character_and_spaces_in_refs_text.texi',
                'line_nr' => 15
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'top'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    }
                  },
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => ' '
                    },
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'type' => 'brace_arg'
                },
                {
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'manual'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'character_and_spaces_in_refs_text.texi',
                'line_nr' => 16
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '('
                    },
                    {
                      'text' => 'texinfo'
                    },
                    {
                      'text' => ')'
                    },
                    {
                      'text' => 'Cross References'
                    }
                  ],
                  'extra' => {
                    'manual_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'character_and_spaces_in_refs_text.texi',
                'line_nr' => 17
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'node'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'type' => 'brace_arg'
                },
                {
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => '../manual/doc'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'character_and_spaces_in_refs_text.texi',
                'line_nr' => 18
              }
            },
            {
              'text' => '
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
          'cmdname' => 'subheading',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Testing local nodes'
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
          'extra' => {},
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'character_and_spaces_in_refs_text.texi',
            'line_nr' => 20
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '!_"#$%&\'()*+-.'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'character_and_spaces_in_refs_text.texi',
                'line_nr' => 22
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '/;<=>?[\\]^_`|~'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'character_and_spaces_in_refs_text.texi',
                'line_nr' => 23
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'Top'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'Top'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'character_and_spaces_in_refs_text.texi',
                'line_nr' => 24
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'local   node'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'local-node'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => '  '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'character_and_spaces_in_refs_text.texi',
                'line_nr' => 25
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => '1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'character_and_spaces_in_refs_text.texi',
        'line_nr' => 10
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'other nodes'
                }
              ],
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => '!_"#$%&\'()*+-.'
                }
              ],
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
              },
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
                  'text' => 'node to avoid DocBook or LaTeX ignored'
                }
              ],
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => 'node-to-avoid-DocBook-or-LaTeX-ignored'
              },
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
                  'text' => 'Top'
                }
              ],
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => 'Top'
              },
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
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'other-nodes'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'character_and_spaces_in_refs_text.texi',
        'line_nr' => 27
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Chapter with nodes'
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
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'menu',
          'contents' => [
            {
              'contents' => [
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
              'type' => 'arguments_line'
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
                      'text' => '!_"#$%&\'()*+-.'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                  },
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
              'source_info' => {
                'file_name' => 'character_and_spaces_in_refs_text.texi',
                'line_nr' => 31
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
                      'text' => '/;<=>?[\\]^_`|~'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                  },
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
              'source_info' => {
                'file_name' => 'character_and_spaces_in_refs_text.texi',
                'line_nr' => 32
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
                      'text' => 'local node'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'local-node'
                  },
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
              'source_info' => {
                'file_name' => 'character_and_spaces_in_refs_text.texi',
                'line_nr' => 33
              },
              'type' => 'menu_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
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
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => 'character_and_spaces_in_refs_text.texi',
                'line_nr' => 34
              }
            }
          ],
          'source_info' => {
            'file_name' => 'character_and_spaces_in_refs_text.texi',
            'line_nr' => 30
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => '2'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'character_and_spaces_in_refs_text.texi',
        'line_nr' => 28
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '!_"#$%&\'()*+-.'
                }
              ],
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => '/;<=>?[\\]^_`|~'
                }
              ],
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
              },
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
                  'text' => 'other nodes'
                }
              ],
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => 'other-nodes'
              },
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
                  'text' => 'other nodes'
                }
              ],
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => 'other-nodes'
              },
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
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'character_and_spaces_in_refs_text.texi',
        'line_nr' => 36
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '/;<=>?[\\]^_`|~'
                }
              ],
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => 'local   node'
                }
              ],
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => 'local-node'
              },
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => '!_"#$%&\'()*+-.'
                }
              ],
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
              },
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => 'other nodes'
                }
              ],
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => 'other-nodes'
              },
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
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'character_and_spaces_in_refs_text.texi',
        'line_nr' => 38
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'local   node'
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
                  'text' => '/;<=>?[\\]^_`|~'
                }
              ],
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
              },
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => 'other nodes'
                }
              ],
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => 'other-nodes'
              },
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'local-node'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => '  '
        }
      },
      'source_info' => {
        'file_name' => 'character_and_spaces_in_refs_text.texi',
        'line_nr' => 40
      }
    },
    {
      'cmdname' => 'bye',
      'contents' => [
        {
          'text' => '
',
          'type' => 'rawline_arg'
        }
      ]
    }
  ],
  'type' => 'document_root'
};
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'contents'}[4]{'contents'}[2]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'contents'}[4]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'contents'}[4]{'contents'}[4]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'contents'}[4]{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'contents'}[4]{'contents'}[6]{'contents'}[0]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'contents'}[4]{'contents'}[6]{'contents'}[0]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'contents'}[4]{'contents'}[6]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'contents'}[4]{'contents'}[6]{'contents'}[0]{'contents'}[3];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'contents'}[4]{'contents'}[8]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'contents'}[4]{'contents'}[8]{'contents'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'contents'}[8]{'contents'}[2]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'contents'}[8]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'contents'}[8]{'contents'}[4]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'contents'}[8]{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'contents'}[8]{'contents'}[6]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[4]{'contents'}[8]{'contents'}[6]{'contents'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[0]{'contents'}[2]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[0]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[5]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[6]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[6]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[6]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[6]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[6]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[6]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[7]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[7]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[7]{'contents'}[0]{'contents'}[2]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[7]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[7]{'contents'}[0]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[7]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[8]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[8]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[8]{'contents'}[0]{'contents'}[2]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[8]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[8]{'contents'}[0]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[8]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[9]{'contents'}[0]{'contents'}[2]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[9]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs'}{'contents'}[9]{'contents'}[0]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs'}{'contents'}[9]{'contents'}[0]{'contents'}[3]{'contents'}[0];

$result_texis{'character_and_spaces_in_refs'} = '@node Top
@top Test refs

@menu
* node to avoid DocBook or LaTeX ignored::
* other nodes::
@end menu

@node node to avoid DocBook or LaTeX ignored
@chapter first chapter

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

@node other nodes, !_"#$%&\'()*+-., node to avoid DocBook or LaTeX ignored, Top
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

* node to avoid DocBook or LaTeX ignored::
* other nodes::

1 first chapter
***************

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

2 Chapter with nodes
********************

* !_"#$%&\'()*+-.::
* /;<=>?[\\]^_`|~::
* local node::




';

$result_sectioning{'character_and_spaces_in_refs'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'node-to-avoid-DocBook-or-LaTeX-ignored'
                  }
                },
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '1',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'other-nodes'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '2',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
          ],
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'character_and_spaces_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'character_and_spaces_in_refs'}{'extra'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'character_and_spaces_in_refs'}{'extra'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'character_and_spaces_in_refs'}{'extra'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'character_and_spaces_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'character_and_spaces_in_refs'}{'extra'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'character_and_spaces_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'character_and_spaces_in_refs'}{'extra'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'character_and_spaces_in_refs'};

$result_nodes{'character_and_spaces_in_refs'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '1'
              }
            },
            'node_directions' => {
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {
                    'cmdname' => 'chapter',
                    'extra' => {
                      'section_number' => '2'
                    }
                  },
                  'node_directions' => {
                    'next' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'node_directions' => {
                          'next' => {
                            'cmdname' => 'node',
                            'extra' => {
                              'node_directions' => {
                                'next' => {
                                  'cmdname' => 'node',
                                  'extra' => {
                                    'node_directions' => {
                                      'prev' => {},
                                      'up' => {}
                                    },
                                    'normalized' => 'local-node'
                                  }
                                },
                                'prev' => {},
                                'up' => {}
                              },
                              'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                            }
                          },
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'other-nodes'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'node-to-avoid-DocBook-or-LaTeX-ignored'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {},
  {},
  {},
  {}
];
$result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'character_and_spaces_in_refs'}[0];
$result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'character_and_spaces_in_refs'}[0];
$result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'character_and_spaces_in_refs'}[0];
$result_nodes{'character_and_spaces_in_refs'}[1] = $result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'character_and_spaces_in_refs'}[2] = $result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'character_and_spaces_in_refs'}[3] = $result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'character_and_spaces_in_refs'}[4] = $result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'character_and_spaces_in_refs'}[5] = $result_nodes{'character_and_spaces_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'character_and_spaces_in_refs'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'next' => {
          'extra' => {
            'menu_directions' => {
              'prev' => {},
              'up' => {}
            },
            'menus' => [
              {}
            ],
            'normalized' => 'other-nodes'
          }
        },
        'up' => {}
      },
      'normalized' => 'node-to-avoid-DocBook-or-LaTeX-ignored'
    }
  },
  {},
  {
    'extra' => {
      'menu_directions' => {
        'next' => {
          'extra' => {
            'menu_directions' => {
              'next' => {
                'extra' => {
                  'menu_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'local-node'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
          }
        },
        'up' => {}
      },
      'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
    }
  },
  {},
  {}
];
$result_menus{'character_and_spaces_in_refs'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'character_and_spaces_in_refs'}[1];
$result_menus{'character_and_spaces_in_refs'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'character_and_spaces_in_refs'}[0];
$result_menus{'character_and_spaces_in_refs'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'character_and_spaces_in_refs'}[0];
$result_menus{'character_and_spaces_in_refs'}[2] = $result_menus{'character_and_spaces_in_refs'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'character_and_spaces_in_refs'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'character_and_spaces_in_refs'}[3]{'extra'}{'menu_directions'}{'next'};
$result_menus{'character_and_spaces_in_refs'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'character_and_spaces_in_refs'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'character_and_spaces_in_refs'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'character_and_spaces_in_refs'}[3];
$result_menus{'character_and_spaces_in_refs'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'character_and_spaces_in_refs'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'character_and_spaces_in_refs'}[3]{'extra'}{'menu_directions'}{'up'} = $result_menus{'character_and_spaces_in_refs'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'character_and_spaces_in_refs'}[4] = $result_menus{'character_and_spaces_in_refs'}[3]{'extra'}{'menu_directions'}{'next'};
$result_menus{'character_and_spaces_in_refs'}[5] = $result_menus{'character_and_spaces_in_refs'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};

$result_errors{'character_and_spaces_in_refs'} = [];


$result_floats{'character_and_spaces_in_refs'} = {};



$result_converted{'info'}->{'character_and_spaces_in_refs'} = 'This is , produced from character_and_spaces_in_refs_text.texi.


File: ,  Node: Top,  Next: node to avoid DocBook or LaTeX ignored,  Up: (dir)

Test refs
*********

* Menu:

* node to avoid DocBook or LaTeX ignored::
* other nodes::


File: ,  Node: node to avoid DocBook or LaTeX ignored,  Next: other nodes,  Prev: Top,  Up: Top

1 first chapter
***************

Testing distant nodes
---------------------

*note (manual)a node:: *note (manual)::: *note (manual)top:: *note
(texinfo)Cross References:: *note (../manual/doc)node::

Testing local nodes
-------------------

*note !_"#$%&\'()*+-.:: *note /;<=>?[\\]^_`|~:: *note Top:: *note local
node::


File: ,  Node: other nodes,  Next: !_"#$%&\'()*+-.,  Prev: node to avoid DocBook or LaTeX ignored,  Up: Top

2 Chapter with nodes
********************

* Menu:

* !_"#$%&\'()*+-.::
* /;<=>?[\\]^_`|~::
* local node::


File: ,  Node: !_"#$%&\'()*+-.,  Next: /;<=>?[\\]^_`|~,  Prev: other nodes,  Up: other nodes


File: ,  Node: /;<=>?[\\]^_`|~,  Next: local node,  Prev: !_"#$%&\'()*+-.,  Up: other nodes


File: ,  Node: local node,  Prev: /;<=>?[\\]^_`|~,  Up: other nodes


Tag Table:
Node: Top65
Node: node to avoid DocBook or LaTeX ignored236
Node: other nodes658
Node: !_"#$%&\'()*+-.874
Node: /;<=>?[\\]^_`|~968
Node: local node1061

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'character_and_spaces_in_refs'} = [
  {
    'error_line' => 'warning: @ref node name should not contain `:\'
',
    'file_name' => 'character_and_spaces_in_refs_text.texi',
    'line_nr' => 15,
    'text' => '@ref node name should not contain `:\'',
    'type' => 'warning'
  }
];



$result_converted{'html'}->{'character_and_spaces_in_refs'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Test refs</title>

<meta name="description" content="Test refs">
<meta name="keywords" content="Test refs">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#node-to-avoid-DocBook-or-LaTeX-ignored" accesskey="n" rel="next">first chapter</a> &nbsp; </p>
</div>
<h1 class="top" id="Test-refs"><span>Test refs<a class="copiable-link" href="#Test-refs"> &para;</a></span></h1>


<ul class="mini-toc">
<li><a href="#node-to-avoid-DocBook-or-LaTeX-ignored" accesskey="1">first chapter</a></li>
<li><a href="#other-nodes" accesskey="2">Chapter with nodes</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="node-to-avoid-DocBook-or-LaTeX-ignored">
<div class="nav-panel">
<p>
Next: <a href="#other-nodes" accesskey="n" rel="next">Chapter with nodes</a>, Previous: <a href="#Top" accesskey="p" rel="prev">Test refs</a>, Up: <a href="#Top" accesskey="u" rel="up">Test refs</a> &nbsp; </p>
</div>
<h2 class="chapter" id="first-chapter"><span>1 first chapter<a class="copiable-link" href="#first-chapter"> &para;</a></span></h2>

<h4 class="subheading" id="Testing-distant-nodes"><span>Testing distant nodes<a class="copiable-link" href="#Testing-distant-nodes"> &para;</a></span></h4>

<p><a data-manual="manual" href="manual.html#a-node">(manual)a  node</a>
<a data-manual="manual" href="manual.html#g_t_003a">(manual):</a>
<a data-manual="manual" href="manual.html#Top">(manual)top</a>
<a data-manual="texinfo" href="texinfo.html#Cross-References">(texinfo)Cross References</a>
<a data-manual="../manual/doc" href="doc.html#node">(../manual/doc)node</a>
</p>
<h4 class="subheading" id="Testing-local-nodes"><span>Testing local nodes<a class="copiable-link" href="#Testing-local-nodes"> &para;</a></span></h4>

<p><a class="ref" href="#g_t_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e">!_&quot;#$%&amp;\'()*+-.</a>
<a class="ref" href="#g_t_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e">/;&lt;=&gt;?[\\]^_`|~</a>
<a class="ref" href="#Top">Test refs</a>
<a class="ref" href="#local-node">local   node</a>
</p>
<hr>
</div>
<div class="chapter-level-extent" id="other-nodes">
<div class="nav-panel">
<p>
Next: <a href="#g_t_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e" accesskey="n" rel="next">!_&quot;#$%&amp;\'()*+-.</a>, Previous: <a href="#node-to-avoid-DocBook-or-LaTeX-ignored" accesskey="p" rel="prev">first chapter</a>, Up: <a href="#Top" accesskey="u" rel="up">Test refs</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Chapter-with-nodes"><span>2 Chapter with nodes<a class="copiable-link" href="#Chapter-with-nodes"> &para;</a></span></h2>


<hr>
<a class="node-id" id="g_t_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e"></a><div class="nav-panel">
<p>
Next: <a href="#g_t_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e" accesskey="n" rel="next">/;&lt;=&gt;?[\\]^_`|~</a>, Previous: <a href="#other-nodes" accesskey="p" rel="prev">Chapter with nodes</a>, Up: <a href="#other-nodes" accesskey="u" rel="up">Chapter with nodes</a> &nbsp; </p>
</div>
<h4 class="node"><span>!_&quot;#$%&amp;\'()*+-.<a class="copiable-link" href="#g_t_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e"> &para;</a></span></h4>

<hr>
<a class="node-id" id="g_t_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e"></a><div class="nav-panel">
<p>
Next: <a href="#local-node" accesskey="n" rel="next">local   node</a>, Previous: <a href="#g_t_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e" accesskey="p" rel="prev">!_&quot;#$%&amp;\'()*+-.</a>, Up: <a href="#other-nodes" accesskey="u" rel="up">Chapter with nodes</a> &nbsp; </p>
</div>
<h4 class="node"><span>/;&lt;=&gt;?[\\]^_`|~<a class="copiable-link" href="#g_t_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e"> &para;</a></span></h4>

<hr>
<a class="node-id" id="local-node"></a><div class="nav-panel">
<p>
Previous: <a href="#g_t_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e" accesskey="p" rel="prev">/;&lt;=&gt;?[\\]^_`|~</a>, Up: <a href="#other-nodes" accesskey="u" rel="up">Chapter with nodes</a> &nbsp; </p>
</div>
<h4 class="node"><span>local   node<a class="copiable-link" href="#local-node"> &para;</a></span></h4>

</div>
</div>



</body>
</html>
';


$result_converted{'docbook'}->{'character_and_spaces_in_refs'} = '<chapter label="1" id="node-to-avoid-DocBook-or-LaTeX-ignored">
<title>first chapter</title>

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
</chapter>
<chapter label="2" id="other-nodes">
<title>Chapter with nodes</title>


</chapter>
<anchor id="_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e"/>

<anchor id="_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e"/>

<anchor id="local-node"/>

';


$result_converted{'latex_text'}->{'character_and_spaces_in_refs'} = '\\begin{document}
\\label{anchor:Top}%
\\chapter{{first chapter}}
\\label{anchor:node-to-avoid-DocBook-or-LaTeX-ignored}%

\\subsection*{{Testing distant nodes}}

Section ``a  node\'\' in \\texttt{manual}
Section ``:\'\' in \\texttt{manual}
Section ``top\'\' in \\texttt{manual}
(texinfo)Cross References
Section ``node\'\' in \\texttt{../manual/doc}

\\subsection*{{Testing local nodes}}

\\hyperref[anchor:_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e]{\\chaptername~\\ref*{anchor:_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e} [!\\_"\\#\\$\\%\\&\'()*+-.], page~\\pageref*{anchor:_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e}}
\\hyperref[anchor:_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e]{\\chaptername~\\ref*{anchor:_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e} [/;<=>?[\\textbackslash{}]\\^{}\\_`|\\~{}], page~\\pageref*{anchor:_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e}}
\\hyperref[anchor:Top]{\\chaptername~\\ref*{anchor:Top} [Top], page~\\pageref*{anchor:Top}}
\\hyperref[anchor:local-node]{\\chaptername~\\ref*{anchor:local-node} [local   node], page~\\pageref*{anchor:local-node}}

\\chapter{{Chapter with nodes}}
\\label{anchor:other-nodes}%


\\label{anchor:_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e}%

\\label{anchor:_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e}%

\\label{anchor:local-node}%

';

1;
