use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'character_and_spaces_in_refs_out'} = [
  {
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
        'args' => [
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
        'cmdname' => 'node',
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
          'line_nr' => 1,
          'macro' => ''
        }
      },
      {
        'args' => [
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
        'cmdname' => 'top',
        'contents' => [
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
                        'text' => 'node to avoid DocBook or LaTeX ignored'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
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
                  'line_nr' => 5,
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
                        'text' => 'other nodes'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
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
                  'file_name' => 'character_and_spaces_in_refs_text.texi',
                  'line_nr' => 7,
                  'macro' => ''
                }
              }
            ],
            'source_info' => {
              'file_name' => 'character_and_spaces_in_refs_text.texi',
              'line_nr' => 4,
              'macro' => ''
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
          'line_nr' => 2,
          'macro' => ''
        }
      }
    ],
    'type' => 'unit',
    'unit_command' => {}
  },
  {
    'contents' => [
      {
        'args' => [
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
        'cmdname' => 'node',
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
          'line_nr' => 9,
          'macro' => ''
        }
      },
      {
        'args' => [
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
            'cmdname' => 'subheading',
            'info' => {
              'spaces_before_argument' => {
                'text' => ' '
              }
            },
            'source_info' => {
              'file_name' => 'character_and_spaces_in_refs_text.texi',
              'line_nr' => 12,
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
                'args' => [
                  {
                    'contents' => [
                      {
                        'text' => 'a  node'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ]
                    },
                    'info' => {
                      'spaces_after_argument' => {
                        'text' => ' '
                      },
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'type' => 'brace_command_arg'
                  },
                  {
                    'type' => 'brace_command_arg'
                  },
                  {
                    'type' => 'brace_command_arg'
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
                    'type' => 'brace_command_arg'
                  }
                ],
                'cmdname' => 'ref',
                'source_info' => {
                  'file_name' => 'character_and_spaces_in_refs_text.texi',
                  'line_nr' => 14,
                  'macro' => ''
                }
              },
              {
                'text' => '
'
              },
              {
                'args' => [
                  {
                    'contents' => [
                      {
                        'text' => ':'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ]
                    },
                    'type' => 'brace_command_arg'
                  },
                  {
                    'type' => 'brace_command_arg'
                  },
                  {
                    'type' => 'brace_command_arg'
                  },
                  {
                    'contents' => [
                      {
                        'text' => 'manual'
                      }
                    ],
                    'type' => 'brace_command_arg'
                  }
                ],
                'cmdname' => 'ref',
                'source_info' => {
                  'file_name' => 'character_and_spaces_in_refs_text.texi',
                  'line_nr' => 15,
                  'macro' => ''
                }
              },
              {
                'text' => '
'
              },
              {
                'args' => [
                  {
                    'contents' => [
                      {
                        'text' => 'top'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ]
                    },
                    'info' => {
                      'spaces_after_argument' => {
                        'text' => ' '
                      },
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'type' => 'brace_command_arg'
                  },
                  {
                    'type' => 'brace_command_arg'
                  },
                  {
                    'type' => 'brace_command_arg'
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
                    'type' => 'brace_command_arg'
                  }
                ],
                'cmdname' => 'ref',
                'source_info' => {
                  'file_name' => 'character_and_spaces_in_refs_text.texi',
                  'line_nr' => 16,
                  'macro' => ''
                }
              },
              {
                'text' => '
'
              },
              {
                'args' => [
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
                      'manual_content' => [
                        {}
                      ],
                      'node_content' => [
                        {}
                      ]
                    },
                    'type' => 'brace_command_arg'
                  }
                ],
                'cmdname' => 'ref',
                'source_info' => {
                  'file_name' => 'character_and_spaces_in_refs_text.texi',
                  'line_nr' => 17,
                  'macro' => ''
                }
              },
              {
                'text' => '
'
              },
              {
                'args' => [
                  {
                    'contents' => [
                      {
                        'text' => 'node'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ]
                    },
                    'type' => 'brace_command_arg'
                  },
                  {
                    'type' => 'brace_command_arg'
                  },
                  {
                    'type' => 'brace_command_arg'
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
                    'type' => 'brace_command_arg'
                  }
                ],
                'cmdname' => 'ref',
                'source_info' => {
                  'file_name' => 'character_and_spaces_in_refs_text.texi',
                  'line_nr' => 18,
                  'macro' => ''
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
            'args' => [
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
            'cmdname' => 'subheading',
            'info' => {
              'spaces_before_argument' => {
                'text' => ' '
              }
            },
            'source_info' => {
              'file_name' => 'character_and_spaces_in_refs_text.texi',
              'line_nr' => 20,
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
                'args' => [
                  {
                    'contents' => [
                      {
                        'text' => '!_"#$%&\'()*+-.'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                    },
                    'type' => 'brace_command_arg'
                  }
                ],
                'cmdname' => 'ref',
                'source_info' => {
                  'file_name' => 'character_and_spaces_in_refs_text.texi',
                  'line_nr' => 22,
                  'macro' => ''
                }
              },
              {
                'text' => '
'
              },
              {
                'args' => [
                  {
                    'contents' => [
                      {
                        'text' => '/;<=>?[\\]^_`|~'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                    },
                    'type' => 'brace_command_arg'
                  }
                ],
                'cmdname' => 'ref',
                'source_info' => {
                  'file_name' => 'character_and_spaces_in_refs_text.texi',
                  'line_nr' => 23,
                  'macro' => ''
                }
              },
              {
                'text' => '
'
              },
              {
                'args' => [
                  {
                    'contents' => [
                      {
                        'text' => 'Top'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'Top'
                    },
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'type' => 'brace_command_arg'
                  }
                ],
                'cmdname' => 'ref',
                'source_info' => {
                  'file_name' => 'character_and_spaces_in_refs_text.texi',
                  'line_nr' => 24,
                  'macro' => ''
                }
              },
              {
                'text' => '
'
              },
              {
                'args' => [
                  {
                    'contents' => [
                      {
                        'text' => 'local   node'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'local-node'
                    },
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => '  '
                      }
                    },
                    'type' => 'brace_command_arg'
                  }
                ],
                'cmdname' => 'ref',
                'source_info' => {
                  'file_name' => 'character_and_spaces_in_refs_text.texi',
                  'line_nr' => 25,
                  'macro' => ''
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
          'section_number' => 1
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => 'character_and_spaces_in_refs_text.texi',
          'line_nr' => 10,
          'macro' => ''
        }
      }
    ],
    'type' => 'unit',
    'unit_command' => {}
  },
  {
    'contents' => [
      {
        'args' => [
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
              'node_content' => [
                {}
              ],
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
                'text' => 'Top'
              }
            ],
            'extra' => {
              'node_content' => [
                {}
              ],
              'normalized' => 'Top'
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
              'node_content' => [
                {}
              ],
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
        'cmdname' => 'node',
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
          'line_nr' => 27,
          'macro' => ''
        }
      },
      {
        'args' => [
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
                        'text' => '!_"#$%&\'()*+-.'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
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
                  'line_nr' => 31,
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
                        'text' => '/;<=>?[\\]^_`|~'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
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
                  'line_nr' => 32,
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
                        'text' => 'local node'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
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
                  'line_nr' => 33,
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
                  'file_name' => 'character_and_spaces_in_refs_text.texi',
                  'line_nr' => 34,
                  'macro' => ''
                }
              }
            ],
            'source_info' => {
              'file_name' => 'character_and_spaces_in_refs_text.texi',
              'line_nr' => 30,
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
          'section_number' => 2
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => 'character_and_spaces_in_refs_text.texi',
          'line_nr' => 28,
          'macro' => ''
        }
      }
    ],
    'type' => 'unit',
    'unit_command' => {}
  },
  {
    'contents' => [
      {
        'args' => [
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
              'node_content' => [
                {}
              ],
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
              'node_content' => [
                {}
              ],
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
              'node_content' => [
                {}
              ],
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
        'cmdname' => 'node',
        'contents' => [
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
          'line_nr' => 36,
          'macro' => ''
        }
      }
    ],
    'type' => 'unit',
    'unit_command' => {}
  },
  {
    'contents' => [
      {
        'args' => [
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
              'node_content' => [
                {}
              ],
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
              'node_content' => [
                {}
              ],
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
              'node_content' => [
                {}
              ],
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
        'cmdname' => 'node',
        'contents' => [
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
          'line_nr' => 38,
          'macro' => ''
        }
      }
    ],
    'type' => 'unit',
    'unit_command' => {}
  },
  {
    'contents' => [
      {
        'args' => [
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
              'node_content' => [
                {}
              ],
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
              'node_content' => [
                {}
              ],
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
        'cmdname' => 'node',
        'contents' => [
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
          'line_nr' => 40,
          'macro' => ''
        }
      },
      {
        'args' => [
          {
            'text' => '
',
            'type' => 'rawline_arg'
          }
        ],
        'cmdname' => 'bye'
      }
    ],
    'type' => 'unit',
    'unit_command' => {}
  }
];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'unit_command'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[1]{'contents'}[3]{'contents'}[0]{'args'}[0]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[1]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[1]{'contents'}[3]{'contents'}[2]{'args'}[0]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[1]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[1]{'contents'}[3]{'contents'}[4]{'args'}[0]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[1]{'contents'}[3]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[1]{'contents'}[3]{'contents'}[6]{'args'}[0]{'extra'}{'manual_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[1]{'contents'}[3]{'contents'}[6]{'args'}[0]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[1]{'contents'}[3]{'contents'}[6]{'args'}[0]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[1]{'contents'}[3]{'contents'}[6]{'args'}[0]{'contents'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[1]{'contents'}[3]{'contents'}[8]{'args'}[0]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[1]{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[1]{'contents'}[7]{'contents'}[2]{'args'}[0]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[1]{'contents'}[7]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[1]{'contents'}[7]{'contents'}[4]{'args'}[0]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[1]{'contents'}[7]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[1]{'contents'}[7]{'contents'}[6]{'args'}[0]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[1]{'contents'}[7]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[1]{'unit_command'} = $result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[2]{'contents'}[0]{'args'}[1]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[2]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[2]{'contents'}[0]{'args'}[2]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[2]{'contents'}[0]{'args'}[2]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[2]{'contents'}[0]{'args'}[3]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[2]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[2]{'unit_command'} = $result_trees{'character_and_spaces_in_refs_out'}[2]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[3]{'contents'}[0]{'args'}[1]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[3]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[3]{'contents'}[0]{'args'}[2]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[3]{'contents'}[0]{'args'}[2]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[3]{'contents'}[0]{'args'}[3]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[3]{'unit_command'} = $result_trees{'character_and_spaces_in_refs_out'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[4]{'contents'}[0]{'args'}[1]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[4]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[4]{'contents'}[0]{'args'}[2]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[4]{'contents'}[0]{'args'}[2]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[4]{'contents'}[0]{'args'}[3]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[4]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[4]{'unit_command'} = $result_trees{'character_and_spaces_in_refs_out'}[4]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[5]{'contents'}[0]{'args'}[2]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[5]{'contents'}[0]{'args'}[2]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[5]{'contents'}[0]{'args'}[3]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[5]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[5]{'unit_command'} = $result_trees{'character_and_spaces_in_refs_out'}[5]{'contents'}[0];

$result_texis{'character_and_spaces_in_refs_out'} = '@node Top
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


$result_texts{'character_and_spaces_in_refs_out'} = 'Test refs
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

$result_sectioning{'character_and_spaces_in_refs_out'} = {
  'extra' => {
    'section_childs' => [
      {
        'associated_unit' => {
          'directions' => {
            'FastForward' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'FastForward' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
                    'Forward' => {
                      'directions' => {
                        'Back' => {},
                        'FastBack' => {},
                        'Forward' => {
                          'directions' => {
                            'Back' => {},
                            'FastBack' => {},
                            'Forward' => {
                              'directions' => {
                                'Back' => {},
                                'FastBack' => {},
                                'NodeBack' => {},
                                'NodeForward' => {},
                                'NodePrev' => {},
                                'NodeUp' => {},
                                'This' => {}
                              },
                              'tree_unit_directions' => {
                                'prev' => {}
                              },
                              'type' => 'unit',
                              'unit_command' => {
                                'associated_unit' => {},
                                'cmdname' => 'node',
                                'extra' => {
                                  'normalized' => 'local-node'
                                },
                                'structure' => {}
                              }
                            },
                            'NodeBack' => {},
                            'NodeForward' => {},
                            'NodeNext' => {},
                            'NodePrev' => {},
                            'NodeUp' => {},
                            'This' => {}
                          },
                          'tree_unit_directions' => {
                            'prev' => {}
                          },
                          'type' => 'unit',
                          'unit_command' => {
                            'associated_unit' => {},
                            'cmdname' => 'node',
                            'extra' => {
                              'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                            },
                            'structure' => {}
                          }
                        },
                        'NodeBack' => {},
                        'NodeForward' => {},
                        'NodeNext' => {},
                        'NodePrev' => {},
                        'NodeUp' => {},
                        'This' => {}
                      },
                      'tree_unit_directions' => {
                        'prev' => {}
                      },
                      'type' => 'unit',
                      'unit_command' => {
                        'associated_unit' => {},
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                        },
                        'structure' => {}
                      }
                    },
                    'NodeBack' => {},
                    'NodeForward' => {},
                    'NodeNext' => {},
                    'NodePrev' => {},
                    'NodeUp' => {},
                    'Prev' => {},
                    'This' => {},
                    'Up' => {}
                  },
                  'tree_unit_directions' => {
                    'prev' => {}
                  },
                  'type' => 'unit',
                  'unit_command' => {
                    'associated_unit' => {},
                    'cmdname' => 'node',
                    'extra' => {
                      'normalized' => 'other-nodes'
                    },
                    'structure' => {}
                  }
                },
                'Forward' => {},
                'Next' => {},
                'NodeBack' => {},
                'NodeForward' => {},
                'NodeNext' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'This' => {},
                'Up' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'type' => 'unit',
              'unit_command' => {
                'associated_unit' => {},
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'node-to-avoid-DocBook-or-LaTeX-ignored'
                },
                'structure' => {}
              }
            },
            'Forward' => {},
            'NodeForward' => {},
            'NodeNext' => {},
            'This' => {}
          },
          'tree_unit_directions' => {},
          'type' => 'unit',
          'unit_command' => {
            'associated_unit' => {},
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          }
        },
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {},
          'section_childs' => [
            {
              'associated_unit' => {},
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {},
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => 1,
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'associated_unit' => {},
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {},
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => 2,
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
          ],
          'section_directions' => {
            'up' => {}
          },
          'section_level' => 0,
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'associated_node'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'character_and_spaces_in_refs_out'};

$result_nodes{'character_and_spaces_in_refs_out'} = {
  'associated_unit' => {
    'directions' => {
      'FastForward' => {
        'directions' => {
          'Back' => {},
          'FastBack' => {},
          'FastForward' => {
            'directions' => {
              'Back' => {},
              'FastBack' => {},
              'Forward' => {
                'directions' => {
                  'Back' => {},
                  'FastBack' => {},
                  'Forward' => {
                    'directions' => {
                      'Back' => {},
                      'FastBack' => {},
                      'Forward' => {
                        'directions' => {
                          'Back' => {},
                          'FastBack' => {},
                          'NodeBack' => {},
                          'NodeForward' => {},
                          'NodePrev' => {},
                          'NodeUp' => {},
                          'This' => {}
                        },
                        'tree_unit_directions' => {
                          'prev' => {}
                        },
                        'type' => 'unit',
                        'unit_command' => {
                          'associated_unit' => {},
                          'cmdname' => 'node',
                          'extra' => {
                            'node_directions' => {
                              'prev' => {
                                'associated_unit' => {},
                                'cmdname' => 'node',
                                'extra' => {
                                  'node_directions' => {
                                    'next' => {},
                                    'prev' => {
                                      'associated_unit' => {},
                                      'cmdname' => 'node',
                                      'extra' => {
                                        'node_directions' => {
                                          'next' => {},
                                          'prev' => {
                                            'associated_unit' => {},
                                            'cmdname' => 'node',
                                            'extra' => {
                                              'associated_section' => {
                                                'associated_unit' => {},
                                                'cmdname' => 'chapter',
                                                'extra' => {
                                                  'section_number' => 2
                                                }
                                              },
                                              'node_directions' => {
                                                'next' => {},
                                                'prev' => {},
                                                'up' => {}
                                              },
                                              'normalized' => 'other-nodes'
                                            },
                                            'structure' => {}
                                          },
                                          'up' => {}
                                        },
                                        'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                                      },
                                      'structure' => {}
                                    },
                                    'up' => {}
                                  },
                                  'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                                },
                                'structure' => {}
                              },
                              'up' => {}
                            },
                            'normalized' => 'local-node'
                          },
                          'structure' => {}
                        }
                      },
                      'NodeBack' => {},
                      'NodeForward' => {},
                      'NodeNext' => {},
                      'NodePrev' => {},
                      'NodeUp' => {},
                      'This' => {}
                    },
                    'tree_unit_directions' => {
                      'next' => {},
                      'prev' => {}
                    },
                    'type' => 'unit',
                    'unit_command' => {}
                  },
                  'NodeBack' => {},
                  'NodeForward' => {},
                  'NodeNext' => {},
                  'NodePrev' => {},
                  'NodeUp' => {},
                  'This' => {}
                },
                'tree_unit_directions' => {
                  'next' => {},
                  'prev' => {}
                },
                'type' => 'unit',
                'unit_command' => {}
              },
              'NodeBack' => {},
              'NodeForward' => {},
              'NodeNext' => {},
              'NodePrev' => {},
              'NodeUp' => {},
              'Prev' => {},
              'This' => {},
              'Up' => {}
            },
            'tree_unit_directions' => {
              'next' => {},
              'prev' => {}
            },
            'type' => 'unit',
            'unit_command' => {}
          },
          'Forward' => {},
          'Next' => {},
          'NodeBack' => {},
          'NodeForward' => {},
          'NodeNext' => {},
          'NodePrev' => {},
          'NodeUp' => {},
          'This' => {},
          'Up' => {}
        },
        'tree_unit_directions' => {
          'next' => {},
          'prev' => {}
        },
        'type' => 'unit',
        'unit_command' => {
          'associated_unit' => {},
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'associated_unit' => {},
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => 1
              }
            },
            'node_directions' => {
              'next' => {},
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'node-to-avoid-DocBook-or-LaTeX-ignored'
          },
          'structure' => {}
        }
      },
      'Forward' => {},
      'NodeForward' => {},
      'NodeNext' => {},
      'This' => {}
    },
    'tree_unit_directions' => {
      'next' => {}
    },
    'type' => 'unit',
    'unit_command' => {}
  },
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'associated_unit' => {},
      'cmdname' => 'top',
      'extra' => {}
    },
    'node_directions' => {
      'next' => {}
    },
    'normalized' => 'Top'
  }
};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'associated_unit'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'next'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'associated_unit'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'next'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'associated_unit'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'associated_section'}{'associated_unit'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'next'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'character_and_spaces_in_refs_out'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'character_and_spaces_in_refs_out'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'next'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'next'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'unit_command'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_section'}{'associated_unit'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'node_directions'}{'next'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'character_and_spaces_in_refs_out'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'character_and_spaces_in_refs_out'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'Forward'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'NodeForward'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'NodeNext'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'This'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'unit_command'} = $result_nodes{'character_and_spaces_in_refs_out'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'associated_unit'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'node_directions'}{'next'} = $result_nodes{'character_and_spaces_in_refs_out'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'};

$result_menus{'character_and_spaces_in_refs_out'} = [
  {
    'associated_unit' => {
      'directions' => {
        'FastForward' => {
          'directions' => {
            'Back' => {},
            'FastBack' => {},
            'FastForward' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'Forward' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
                    'Forward' => {
                      'directions' => {
                        'Back' => {},
                        'FastBack' => {},
                        'Forward' => {
                          'directions' => {
                            'Back' => {},
                            'FastBack' => {},
                            'NodeBack' => {},
                            'NodeForward' => {},
                            'NodePrev' => {},
                            'NodeUp' => {},
                            'This' => {}
                          },
                          'tree_unit_directions' => {
                            'prev' => {}
                          },
                          'type' => 'unit',
                          'unit_command' => {
                            'associated_unit' => {},
                            'extra' => {
                              'menu_directions' => {
                                'prev' => {
                                  'associated_unit' => {},
                                  'extra' => {
                                    'menu_directions' => {
                                      'next' => {},
                                      'prev' => {
                                        'associated_unit' => {},
                                        'extra' => {
                                          'menu_directions' => {
                                            'next' => {},
                                            'up' => {
                                              'associated_unit' => {},
                                              'extra' => {
                                                'menu_directions' => {
                                                  'prev' => {
                                                    'associated_unit' => {},
                                                    'extra' => {
                                                      'menu_directions' => {
                                                        'next' => {},
                                                        'up' => {}
                                                      },
                                                      'normalized' => 'node-to-avoid-DocBook-or-LaTeX-ignored'
                                                    },
                                                    'structure' => {
                                                      'menu_up_hash' => {
                                                        'Top' => 1
                                                      }
                                                    }
                                                  },
                                                  'up' => {}
                                                },
                                                'menus' => [
                                                  {}
                                                ],
                                                'normalized' => 'other-nodes'
                                              },
                                              'structure' => {
                                                'menu_up_hash' => {
                                                  'Top' => 1
                                                }
                                              }
                                            }
                                          },
                                          'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                                        },
                                        'structure' => {
                                          'menu_up_hash' => {
                                            'other-nodes' => 1
                                          }
                                        }
                                      },
                                      'up' => {}
                                    },
                                    'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                                  },
                                  'structure' => {
                                    'menu_up_hash' => {
                                      'other-nodes' => 1
                                    }
                                  }
                                },
                                'up' => {}
                              },
                              'normalized' => 'local-node'
                            },
                            'structure' => {
                              'menu_up_hash' => {
                                'other-nodes' => 1
                              }
                            }
                          }
                        },
                        'NodeBack' => {},
                        'NodeForward' => {},
                        'NodeNext' => {},
                        'NodePrev' => {},
                        'NodeUp' => {},
                        'This' => {}
                      },
                      'tree_unit_directions' => {
                        'next' => {},
                        'prev' => {}
                      },
                      'type' => 'unit',
                      'unit_command' => {}
                    },
                    'NodeBack' => {},
                    'NodeForward' => {},
                    'NodeNext' => {},
                    'NodePrev' => {},
                    'NodeUp' => {},
                    'This' => {}
                  },
                  'tree_unit_directions' => {
                    'next' => {},
                    'prev' => {}
                  },
                  'type' => 'unit',
                  'unit_command' => {}
                },
                'NodeBack' => {},
                'NodeForward' => {},
                'NodeNext' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'Prev' => {},
                'This' => {},
                'Up' => {}
              },
              'tree_unit_directions' => {
                'next' => {},
                'prev' => {}
              },
              'type' => 'unit',
              'unit_command' => {}
            },
            'Forward' => {},
            'Next' => {},
            'NodeBack' => {},
            'NodeForward' => {},
            'NodeNext' => {},
            'NodePrev' => {},
            'NodeUp' => {},
            'This' => {},
            'Up' => {}
          },
          'tree_unit_directions' => {
            'next' => {},
            'prev' => {}
          },
          'type' => 'unit',
          'unit_command' => {}
        },
        'Forward' => {},
        'NodeForward' => {},
        'NodeNext' => {},
        'This' => {}
      },
      'tree_unit_directions' => {
        'next' => {}
      },
      'type' => 'unit',
      'unit_command' => {}
    },
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {},
  {},
  {},
  {},
  {}
];
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'associated_unit'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'next'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'associated_unit'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'next'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'associated_unit'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'}{'associated_unit'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'next'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'character_and_spaces_in_refs_out'}[0];
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'character_and_spaces_in_refs_out'}[0];
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'next'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'next'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'unit_command'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'This'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'unit_command'} = $result_menus{'character_and_spaces_in_refs_out'}[0];
$result_menus{'character_and_spaces_in_refs_out'}[1] = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'character_and_spaces_in_refs_out'}[2] = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_menus{'character_and_spaces_in_refs_out'}[3] = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'character_and_spaces_in_refs_out'}[4] = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'character_and_spaces_in_refs_out'}[5] = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};

$result_errors{'character_and_spaces_in_refs_out'} = [];


$result_floats{'character_and_spaces_in_refs_out'} = {};


$result_elements{'character_and_spaces_in_refs_out'} = [
  {
    'directions' => {
      'FastForward' => {
        'directions' => {
          'Back' => {},
          'FastBack' => {},
          'FastForward' => {
            'directions' => {
              'Back' => {},
              'FastBack' => {},
              'Forward' => {
                'directions' => {
                  'Back' => {},
                  'FastBack' => {},
                  'Forward' => {
                    'directions' => {
                      'Back' => {},
                      'FastBack' => {},
                      'Forward' => {
                        'directions' => {
                          'Back' => {},
                          'FastBack' => {},
                          'NodeBack' => {},
                          'NodeForward' => {},
                          'NodePrev' => {},
                          'NodeUp' => {},
                          'This' => {}
                        },
                        'type' => 'unit',
                        'unit_command' => {
                          'associated_unit' => {},
                          'cmdname' => 'node',
                          'extra' => {
                            'menu_directions' => {
                              'prev' => {
                                'associated_unit' => {},
                                'cmdname' => 'node',
                                'extra' => {
                                  'menu_directions' => {
                                    'next' => {},
                                    'prev' => {
                                      'associated_unit' => {},
                                      'cmdname' => 'node',
                                      'extra' => {
                                        'menu_directions' => {
                                          'next' => {},
                                          'up' => {
                                            'associated_unit' => {},
                                            'cmdname' => 'node',
                                            'extra' => {
                                              'menu_directions' => {
                                                'prev' => {
                                                  'associated_unit' => {},
                                                  'cmdname' => 'node',
                                                  'extra' => {
                                                    'menu_directions' => {
                                                      'next' => {},
                                                      'up' => {
                                                        'associated_unit' => {},
                                                        'cmdname' => 'node',
                                                        'extra' => {
                                                          'normalized' => 'Top'
                                                        }
                                                      }
                                                    },
                                                    'normalized' => 'node-to-avoid-DocBook-or-LaTeX-ignored'
                                                  },
                                                  'structure' => {
                                                    'menu_up_hash' => {
                                                      'Top' => 1
                                                    }
                                                  }
                                                },
                                                'up' => {}
                                              },
                                              'normalized' => 'other-nodes'
                                            },
                                            'structure' => {
                                              'menu_up_hash' => {
                                                'Top' => 1
                                              }
                                            }
                                          }
                                        },
                                        'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                                      },
                                      'structure' => {
                                        'menu_up_hash' => {
                                          'other-nodes' => 1
                                        }
                                      }
                                    },
                                    'up' => {}
                                  },
                                  'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                                },
                                'structure' => {
                                  'menu_up_hash' => {
                                    'other-nodes' => 1
                                  }
                                }
                              },
                              'up' => {}
                            },
                            'normalized' => 'local-node'
                          },
                          'structure' => {
                            'menu_up_hash' => {
                              'other-nodes' => 1
                            }
                          }
                        }
                      },
                      'NodeBack' => {},
                      'NodeForward' => {},
                      'NodeNext' => {},
                      'NodePrev' => {},
                      'NodeUp' => {},
                      'This' => {}
                    },
                    'type' => 'unit',
                    'unit_command' => {}
                  },
                  'NodeBack' => {},
                  'NodeForward' => {},
                  'NodeNext' => {},
                  'NodePrev' => {},
                  'NodeUp' => {},
                  'This' => {}
                },
                'type' => 'unit',
                'unit_command' => {}
              },
              'NodeBack' => {},
              'NodeForward' => {},
              'NodeNext' => {},
              'NodePrev' => {},
              'NodeUp' => {},
              'Prev' => {},
              'This' => {},
              'Up' => {}
            },
            'type' => 'unit',
            'unit_command' => {}
          },
          'Forward' => {},
          'Next' => {},
          'NodeBack' => {},
          'NodeForward' => {},
          'NodeNext' => {},
          'NodePrev' => {},
          'NodeUp' => {},
          'This' => {},
          'Up' => {}
        },
        'type' => 'unit',
        'unit_command' => {}
      },
      'Forward' => {},
      'NodeForward' => {},
      'NodeNext' => {},
      'This' => {}
    },
    'type' => 'unit',
    'unit_command' => {}
  },
  {},
  {},
  {},
  {},
  {}
];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'associated_unit'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'next'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'associated_unit'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'next'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'associated_unit'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'}{'associated_unit'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'next'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'associated_unit'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'up'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'up'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'unit_command'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'unit_command'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'Forward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'NodeForward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'NodeNext'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'This'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'unit_command'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_elements{'character_and_spaces_in_refs_out'}[1] = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[2] = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[3] = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[4] = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[5] = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};



$result_directions_text{'character_and_spaces_in_refs_out'} = 'element: @node Top
  FastForward: @node node to avoid DocBook or LaTeX ignored
  Forward: @node node to avoid DocBook or LaTeX ignored
  NodeForward: @node node to avoid DocBook or LaTeX ignored
  NodeNext: @node node to avoid DocBook or LaTeX ignored
  This: @node Top
element: @node node to avoid DocBook or LaTeX ignored
  Back: @node Top
  FastBack: @node Top
  FastForward: @node other nodes
  Forward: @node other nodes
  Next: @node other nodes
  NodeBack: @node Top
  NodeForward: @node other nodes
  NodeNext: @node other nodes
  NodePrev: @node Top
  NodeUp: @node Top
  This: @node node to avoid DocBook or LaTeX ignored
  Up: @node Top
element: @node other nodes
  Back: @node node to avoid DocBook or LaTeX ignored
  FastBack: @node node to avoid DocBook or LaTeX ignored
  Forward: @node !_"#$%&\'()*+-.
  NodeBack: @node node to avoid DocBook or LaTeX ignored
  NodeForward: @node !_"#$%&\'()*+-.
  NodeNext: @node !_"#$%&\'()*+-.
  NodePrev: @node Top
  NodeUp: @node Top
  Prev: @node node to avoid DocBook or LaTeX ignored
  This: @node other nodes
  Up: @node Top
element: @node !_"#$%&\'()*+-.
  Back: @node other nodes
  FastBack: @node other nodes
  Forward: @node /;<=>?[\\]^_`|~
  NodeBack: @node other nodes
  NodeForward: @node /;<=>?[\\]^_`|~
  NodeNext: @node /;<=>?[\\]^_`|~
  NodePrev: @node other nodes
  NodeUp: @node other nodes
  This: @node !_"#$%&\'()*+-.
element: @node /;<=>?[\\]^_`|~
  Back: @node !_"#$%&\'()*+-.
  FastBack: @node other nodes
  Forward: @node local   node
  NodeBack: @node !_"#$%&\'()*+-.
  NodeForward: @node local   node
  NodeNext: @node local   node
  NodePrev: @node !_"#$%&\'()*+-.
  NodeUp: @node other nodes
  This: @node /;<=>?[\\]^_`|~
element: @node local   node
  Back: @node /;<=>?[\\]^_`|~
  FastBack: @node other nodes
  NodeBack: @node /;<=>?[\\]^_`|~
  NodeForward: @node !_"#$%&\'()*+-.
  NodePrev: @node /;<=>?[\\]^_`|~
  NodeUp: @node other nodes
  This: @node local   node
';

1;
