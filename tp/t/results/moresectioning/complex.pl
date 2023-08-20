use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'complex'} = [
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
            'type' => 'line_arg'
          },
          {
            'contents' => [
              {
                'text' => 'First node'
              }
            ],
            'extra' => {
              'node_content' => [
                {}
              ],
              'normalized' => 'First-node'
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
            'extra' => {
              'manual_content' => [
                {}
              ]
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
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 1,
          'macro' => ''
        }
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
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'top',
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
                        'text' => 'First node'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'First-node'
                    },
                    'type' => 'menu_entry_node'
                  },
                  {
                    'text' => ':: ',
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
                  'file_name' => 'complex_sectioning_case.texi',
                  'line_nr' => 4,
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
                        'text' => 'between node'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'between-node'
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
                  'file_name' => 'complex_sectioning_case.texi',
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
                        'text' => 'Second node'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'Second-node'
                    },
                    'type' => 'menu_entry_node'
                  },
                  {
                    'text' => '::   ',
                    'type' => 'menu_entry_separator'
                  },
                  {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'node 2
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
                  'file_name' => 'complex_sectioning_case.texi',
                  'line_nr' => 6,
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
                        'text' => 'Third node unnumbered'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'Third-node-unnumbered'
                    },
                    'type' => 'menu_entry_node'
                  },
                  {
                    'text' => ':: ',
                    'type' => 'menu_entry_separator'
                  },
                  {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'unnumbered in Top menu
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
                  'file_name' => 'complex_sectioning_case.texi',
                  'line_nr' => 7,
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
                        'text' => 'continuity'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'continuity'
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
                  'file_name' => 'complex_sectioning_case.texi',
                  'line_nr' => 8,
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
                        'text' => 'Last node no description'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'Last-node-no-description'
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
                  'file_name' => 'complex_sectioning_case.texi',
                  'line_nr' => 9,
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
                  'file_name' => 'complex_sectioning_case.texi',
                  'line_nr' => 10,
                  'macro' => ''
                }
              }
            ],
            'source_info' => {
              'file_name' => 'complex_sectioning_case.texi',
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
        'extra' => {},
        'source_info' => {
          'file_name' => 'complex_sectioning_case.texi',
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
                'text' => 'First node'
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
            'extra' => {
              'node_content' => [
                {}
              ],
              'normalized' => 'Top'
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
              }
            },
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'node',
        'extra' => {
          'is_target' => 1,
          'normalized' => 'First-node'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 12,
          'macro' => ''
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'first node chapter'
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
            'contents' => [
              {
                'text' => 'first node chapter text
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
                        'text' => 'unnumbered'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'unnumbered'
                    },
                    'type' => 'menu_entry_node'
                  },
                  {
                    'text' => ':: ',
                    'type' => 'menu_entry_separator'
                  },
                  {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'un
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
                  'file_name' => 'complex_sectioning_case.texi',
                  'line_nr' => 17,
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
                        'text' => 'unnumbered2'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'unnumbered2'
                    },
                    'type' => 'menu_entry_node'
                  },
                  {
                    'text' => ':: ',
                    'type' => 'menu_entry_separator'
                  },
                  {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'un2
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
                  'file_name' => 'complex_sectioning_case.texi',
                  'line_nr' => 18,
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
                        'text' => 'numbered'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'numbered'
                    },
                    'type' => 'menu_entry_node'
                  },
                  {
                    'text' => ':: ',
                    'type' => 'menu_entry_separator'
                  },
                  {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'nu
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
                  'file_name' => 'complex_sectioning_case.texi',
                  'line_nr' => 19,
                  'macro' => ''
                },
                'type' => 'menu_entry'
              },
              {
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => '
',
                        'type' => 'after_menu_description_line'
                      }
                    ],
                    'type' => 'preformatted'
                  }
                ],
                'type' => 'menu_comment'
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
                  'file_name' => 'complex_sectioning_case.texi',
                  'line_nr' => 21,
                  'macro' => ''
                }
              }
            ],
            'source_info' => {
              'file_name' => 'complex_sectioning_case.texi',
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
          'section_number' => 1
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 13,
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
                'text' => 'unnumbered'
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
          'normalized' => 'unnumbered'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 23,
          'macro' => ''
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'unnumbered section'
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
        'cmdname' => 'unnumberedsec',
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
                        'text' => 'unnumbered sub'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'unnumbered-sub'
                    },
                    'type' => 'menu_entry_node'
                  },
                  {
                    'text' => ':: ',
                    'type' => 'menu_entry_separator'
                  },
                  {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'un
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
                  'file_name' => 'complex_sectioning_case.texi',
                  'line_nr' => 27,
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
                        'text' => 'numbered sub'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'numbered-sub'
                    },
                    'type' => 'menu_entry_node'
                  },
                  {
                    'text' => ':: ',
                    'type' => 'menu_entry_separator'
                  },
                  {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'nu
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
                  'file_name' => 'complex_sectioning_case.texi',
                  'line_nr' => 28,
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
                        'text' => 'unnumbered sub2'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'unnumbered-sub2'
                    },
                    'type' => 'menu_entry_node'
                  },
                  {
                    'text' => ':: ',
                    'type' => 'menu_entry_separator'
                  },
                  {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'un2
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
                  'file_name' => 'complex_sectioning_case.texi',
                  'line_nr' => 29,
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
                        'text' => 'numbered sub2'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'numbered-sub2'
                    },
                    'type' => 'menu_entry_node'
                  },
                  {
                    'text' => ':: ',
                    'type' => 'menu_entry_separator'
                  },
                  {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'nu2
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
                  'file_name' => 'complex_sectioning_case.texi',
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
                  'file_name' => 'complex_sectioning_case.texi',
                  'line_nr' => 31,
                  'macro' => ''
                }
              }
            ],
            'source_info' => {
              'file_name' => 'complex_sectioning_case.texi',
              'line_nr' => 26,
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
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 24,
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
                'text' => 'unnumbered sub'
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
          'normalized' => 'unnumbered-sub'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 33,
          'macro' => ''
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'unnumbered subsection'
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
        'cmdname' => 'unnumberedsubsec',
        'contents' => [
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
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 34,
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
                'text' => 'numbered sub'
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
          'normalized' => 'numbered-sub'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 36,
          'macro' => ''
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'numbered subsection'
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
        'cmdname' => 'subsection',
        'contents' => [
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
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 37,
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
                'text' => 'unnumbered sub2'
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
          'normalized' => 'unnumbered-sub2'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 39,
          'macro' => ''
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'unnumbered subsection2'
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
        'cmdname' => 'unnumberedsubsec',
        'contents' => [
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
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 40,
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
                'text' => 'numbered sub2'
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
          'normalized' => 'numbered-sub2'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 42,
          'macro' => ''
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'numbered subsection2'
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
        'cmdname' => 'subsection',
        'contents' => [
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
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 43,
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
                'text' => 'unnumbered2'
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
          'normalized' => 'unnumbered2'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 45,
          'macro' => ''
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'unnumbered section2'
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
        'cmdname' => 'unnumberedsec',
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
                    'text' => '*  ',
                    'type' => 'menu_entry_leading_text'
                  },
                  {
                    'contents' => [
                      {
                        'text' => 'numbered sub3'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'numbered-sub3'
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
                  'file_name' => 'complex_sectioning_case.texi',
                  'line_nr' => 49,
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
                  'file_name' => 'complex_sectioning_case.texi',
                  'line_nr' => 50,
                  'macro' => ''
                }
              }
            ],
            'source_info' => {
              'file_name' => 'complex_sectioning_case.texi',
              'line_nr' => 48,
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
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 46,
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
                'text' => 'numbered sub3'
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
          'normalized' => 'numbered-sub3'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 52,
          'macro' => ''
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'numbered subsection3'
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
        'cmdname' => 'subsection',
        'contents' => [
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
        'extra' => {},
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 53,
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
                'text' => 'numbered'
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
          'normalized' => 'numbered'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 56,
          'macro' => ''
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'numbered section'
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
        'cmdname' => 'section',
        'contents' => [
          {
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {
          'section_number' => '1.1'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => '  '
          }
        },
        'source_info' => {
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 57,
          'macro' => ''
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'between node'
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
            'contents' => [
              {
                'text' => 'between node, node without sectioning node
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
          'is_target' => 1,
          'normalized' => 'between-node'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 59,
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
                'text' => 'Second node'
              }
            ],
            'type' => 'line_arg'
          },
          {
            'contents' => [
              {
                'text' => 'Third node unnumbered'
              }
            ],
            'extra' => {
              'node_content' => [
                {}
              ],
              'normalized' => 'Third-node-unnumbered'
            },
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
            'contents' => [
              {
                'text' => 'Second node text
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
          'is_target' => 1,
          'normalized' => 'Second-node'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 63,
          'macro' => ''
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'second node chapter'
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
            'contents' => [
              {
                'text' => 'second node chapter text.
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
          'section_number' => 2
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 67,
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
                'text' => 'Third node unnumbered'
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
          'normalized' => 'Third-node-unnumbered'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 71,
          'macro' => ''
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'unnumbered chapter'
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
        'cmdname' => 'unnumbered',
        'contents' => [
          {
            'text' => '
',
            'type' => 'empty_line'
          },
          {
            'contents' => [
              {
                'text' => 'unnumbered chapter text.
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
        'extra' => {},
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 72,
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
                'text' => 'continuity'
              }
            ],
            'type' => 'line_arg'
          },
          {
            'contents' => [
              {
                'text' => 'Third node unnumbered'
              }
            ],
            'extra' => {
              'node_content' => [
                {}
              ],
              'normalized' => 'Third-node-unnumbered'
            },
            'info' => {
              'spaces_before_argument' => {
                'text' => '  '
              }
            },
            'type' => 'line_arg'
          },
          {
            'contents' => [
              {
                'text' => 'Last node no description'
              }
            ],
            'extra' => {
              'node_content' => [
                {}
              ],
              'normalized' => 'Last-node-no-description'
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
          'normalized' => 'continuity'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 76,
          'macro' => ''
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'unnumbered continuity'
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
        'cmdname' => 'unnumbered',
        'contents' => [
          {
            'text' => '
',
            'type' => 'empty_line'
          },
          {
            'contents' => [
              {
                'text' => 'Unumbered and node needed for continuity between automatic 
'
              },
              {
                'text' => 'directions and lone node.
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
        'extra' => {},
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 77,
          'macro' => ''
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'Last node no description'
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
                'text' => 'continuity'
              }
            ],
            'extra' => {
              'node_content' => [
                {}
              ],
              'normalized' => 'continuity'
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
                'text' => '
',
                'type' => 'rawline_arg'
              }
            ],
            'cmdname' => 'contents',
            'source_info' => {
              'file_name' => 'complex_sectioning_case.texi',
              'line_nr' => 84,
              'macro' => ''
            }
          }
        ],
        'extra' => {
          'is_target' => 1,
          'normalized' => 'Last-node-no-description'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => 'complex_sectioning_case.texi',
          'line_nr' => 82,
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
$result_trees{'complex'}[0]{'contents'}[1]{'args'}[1]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[0]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'complex'}[0]{'contents'}[1]{'args'}[2]{'extra'}{'manual_content'}[0] = $result_trees{'complex'}[0]{'contents'}[1]{'args'}[2]{'contents'}[1];
$result_trees{'complex'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'complex'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'complex'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'complex'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'complex'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'complex'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[5]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[0];
$result_trees{'complex'}[0]{'unit_command'} = $result_trees{'complex'}[0]{'contents'}[2];
$result_trees{'complex'}[1]{'contents'}[0]{'args'}[2]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[1]{'contents'}[0]{'args'}[2]{'contents'}[0];
$result_trees{'complex'}[1]{'contents'}[0]{'args'}[3]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'complex'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'complex'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'complex'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'complex'}[1]{'unit_command'} = $result_trees{'complex'}[1]{'contents'}[1];
$result_trees{'complex'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'complex'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'complex'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'complex'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'complex'}[2]{'unit_command'} = $result_trees{'complex'}[2]{'contents'}[1];
$result_trees{'complex'}[3]{'unit_command'} = $result_trees{'complex'}[3]{'contents'}[1];
$result_trees{'complex'}[4]{'unit_command'} = $result_trees{'complex'}[4]{'contents'}[1];
$result_trees{'complex'}[5]{'unit_command'} = $result_trees{'complex'}[5]{'contents'}[1];
$result_trees{'complex'}[6]{'unit_command'} = $result_trees{'complex'}[6]{'contents'}[1];
$result_trees{'complex'}[7]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[7]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'complex'}[7]{'unit_command'} = $result_trees{'complex'}[7]{'contents'}[1];
$result_trees{'complex'}[8]{'unit_command'} = $result_trees{'complex'}[8]{'contents'}[1];
$result_trees{'complex'}[9]{'contents'}[2]{'args'}[3]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[9]{'contents'}[2]{'args'}[3]{'contents'}[0];
$result_trees{'complex'}[9]{'unit_command'} = $result_trees{'complex'}[9]{'contents'}[1];
$result_trees{'complex'}[10]{'contents'}[0]{'args'}[1]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[10]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'complex'}[10]{'contents'}[0]{'args'}[3]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[10]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'complex'}[10]{'unit_command'} = $result_trees{'complex'}[10]{'contents'}[1];
$result_trees{'complex'}[11]{'unit_command'} = $result_trees{'complex'}[11]{'contents'}[1];
$result_trees{'complex'}[12]{'contents'}[0]{'args'}[1]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[12]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'complex'}[12]{'contents'}[0]{'args'}[2]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[12]{'contents'}[0]{'args'}[2]{'contents'}[0];
$result_trees{'complex'}[12]{'contents'}[0]{'args'}[3]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[12]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'complex'}[12]{'contents'}[2]{'args'}[2]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[12]{'contents'}[2]{'args'}[2]{'contents'}[0];
$result_trees{'complex'}[12]{'contents'}[2]{'args'}[3]{'extra'}{'node_content'}[0] = $result_trees{'complex'}[12]{'contents'}[2]{'args'}[3]{'contents'}[0];
$result_trees{'complex'}[12]{'unit_command'} = $result_trees{'complex'}[12]{'contents'}[1];

$result_texis{'complex'} = '@node Top,First node,(dir)
@top
@menu
* First node:: 
* between node::
* Second node::   node 2
* Third node unnumbered:: unnumbered in Top menu
* continuity::
* Last node no description::
@end menu

@node First node,,Top,Top
@chapter first node chapter

first node chapter text
@menu
* unnumbered:: un
* unnumbered2:: un2
* numbered:: nu

@end menu

@node unnumbered
@unnumberedsec unnumbered section

@menu
* unnumbered sub:: un
* numbered sub:: nu
* unnumbered sub2:: un2
* numbered sub2:: nu2
@end menu

@node unnumbered sub
@unnumberedsubsec unnumbered subsection

@node numbered sub
@subsection numbered subsection

@node unnumbered sub2
@unnumberedsubsec unnumbered subsection2

@node numbered sub2
@subsection numbered subsection2

@node unnumbered2
@unnumberedsec unnumbered section2

@menu
*  numbered sub3::
@end menu

@node numbered sub3
@subsection numbered subsection3


@node numbered
@section  numbered section

@node between node,,,Top

between node, node without sectioning node

@node Second node,Third node unnumbered,,Top

Second node text

@chapter second node chapter

second node chapter text.

@node Third node unnumbered
@unnumbered unnumbered chapter

unnumbered chapter text.

@node continuity,  Third node unnumbered, Last node no description, Top
@unnumbered unnumbered continuity

Unumbered and node needed for continuity between automatic 
directions and lone node.

@node Last node no description,,continuity,Top

@contents
@bye
';


$result_texts{'complex'} = '* First node:: 
* between node::
* Second node::   node 2
* Third node unnumbered:: unnumbered in Top menu
* continuity::
* Last node no description::

1 first node chapter
********************

first node chapter text
* unnumbered:: un
* unnumbered2:: un2
* numbered:: nu


unnumbered section
==================

* unnumbered sub:: un
* numbered sub:: nu
* unnumbered sub2:: un2
* numbered sub2:: nu2

unnumbered subsection
---------------------

numbered subsection
-------------------

unnumbered subsection2
----------------------

numbered subsection2
--------------------

unnumbered section2
===================

*  numbered sub3::

numbered subsection3
--------------------


1.1 numbered section
====================


between node, node without sectioning node


Second node text

2 second node chapter
*********************

second node chapter text.

unnumbered chapter
******************

unnumbered chapter text.

unnumbered continuity
*********************

Unumbered and node needed for continuity between automatic 
directions and lone node.


';

$result_sectioning{'complex'} = {
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
                    'Back' => {
                      'directions' => {
                        'Back' => {
                          'directions' => {
                            'Back' => {
                              'directions' => {
                                'Back' => {
                                  'directions' => {
                                    'Back' => {
                                      'directions' => {
                                        'Back' => {
                                          'directions' => {
                                            'Back' => {
                                              'directions' => {
                                                'Back' => {
                                                  'directions' => {
                                                    'Back' => {},
                                                    'FastBack' => {},
                                                    'FastForward' => {},
                                                    'Forward' => {},
                                                    'Next' => {},
                                                    'NodeBack' => {},
                                                    'NodeForward' => {},
                                                    'NodeNext' => {},
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
                                                    'cmdname' => 'unnumberedsec',
                                                    'extra' => {
                                                      'associated_node' => {
                                                        'associated_unit' => {},
                                                        'cmdname' => 'node',
                                                        'extra' => {
                                                          'normalized' => 'unnumbered'
                                                        },
                                                        'structure' => {}
                                                      },
                                                      'section_childs' => [
                                                        {
                                                          'associated_unit' => {},
                                                          'cmdname' => 'unnumberedsubsec',
                                                          'extra' => {
                                                            'associated_node' => {
                                                              'associated_unit' => {},
                                                              'cmdname' => 'node',
                                                              'extra' => {
                                                                'normalized' => 'unnumbered-sub'
                                                              },
                                                              'structure' => {}
                                                            },
                                                            'section_directions' => {
                                                              'up' => {}
                                                            },
                                                            'section_level' => 3
                                                          }
                                                        },
                                                        {
                                                          'associated_unit' => {},
                                                          'cmdname' => 'subsection',
                                                          'extra' => {
                                                            'associated_node' => {
                                                              'associated_unit' => {},
                                                              'cmdname' => 'node',
                                                              'extra' => {
                                                                'normalized' => 'numbered-sub'
                                                              },
                                                              'structure' => {}
                                                            },
                                                            'section_directions' => {
                                                              'prev' => {},
                                                              'up' => {}
                                                            },
                                                            'section_level' => 3
                                                          }
                                                        },
                                                        {
                                                          'associated_unit' => {},
                                                          'cmdname' => 'unnumberedsubsec',
                                                          'extra' => {
                                                            'associated_node' => {
                                                              'associated_unit' => {},
                                                              'cmdname' => 'node',
                                                              'extra' => {
                                                                'normalized' => 'unnumbered-sub2'
                                                              },
                                                              'structure' => {}
                                                            },
                                                            'section_directions' => {
                                                              'prev' => {},
                                                              'up' => {}
                                                            },
                                                            'section_level' => 3
                                                          }
                                                        },
                                                        {
                                                          'associated_unit' => {},
                                                          'cmdname' => 'subsection',
                                                          'extra' => {
                                                            'associated_node' => {
                                                              'associated_unit' => {},
                                                              'cmdname' => 'node',
                                                              'extra' => {
                                                                'normalized' => 'numbered-sub2'
                                                              },
                                                              'structure' => {}
                                                            },
                                                            'section_directions' => {
                                                              'prev' => {},
                                                              'up' => {}
                                                            },
                                                            'section_level' => 3
                                                          }
                                                        }
                                                      ],
                                                      'section_directions' => {
                                                        'up' => {
                                                          'associated_unit' => {},
                                                          'cmdname' => 'chapter',
                                                          'extra' => {
                                                            'associated_node' => {
                                                              'associated_unit' => {},
                                                              'cmdname' => 'node',
                                                              'extra' => {
                                                                'normalized' => 'First-node'
                                                              },
                                                              'structure' => {}
                                                            },
                                                            'section_childs' => [
                                                              {},
                                                              {
                                                                'associated_unit' => {},
                                                                'cmdname' => 'unnumberedsec',
                                                                'extra' => {
                                                                  'associated_node' => {
                                                                    'associated_unit' => {},
                                                                    'cmdname' => 'node',
                                                                    'extra' => {
                                                                      'normalized' => 'unnumbered2'
                                                                    },
                                                                    'structure' => {}
                                                                  },
                                                                  'section_childs' => [
                                                                    {
                                                                      'associated_unit' => {},
                                                                      'cmdname' => 'subsection',
                                                                      'extra' => {
                                                                        'associated_node' => {
                                                                          'associated_unit' => {},
                                                                          'cmdname' => 'node',
                                                                          'extra' => {
                                                                            'normalized' => 'numbered-sub3'
                                                                          },
                                                                          'structure' => {}
                                                                        },
                                                                        'section_directions' => {
                                                                          'up' => {}
                                                                        },
                                                                        'section_level' => 3
                                                                      }
                                                                    }
                                                                  ],
                                                                  'section_directions' => {
                                                                    'prev' => {},
                                                                    'up' => {}
                                                                  },
                                                                  'section_level' => 2
                                                                }
                                                              },
                                                              {
                                                                'associated_unit' => {},
                                                                'cmdname' => 'section',
                                                                'extra' => {
                                                                  'associated_node' => {
                                                                    'associated_unit' => {},
                                                                    'cmdname' => 'node',
                                                                    'extra' => {
                                                                      'normalized' => 'numbered'
                                                                    },
                                                                    'structure' => {}
                                                                  },
                                                                  'section_directions' => {
                                                                    'prev' => {},
                                                                    'up' => {}
                                                                  },
                                                                  'section_level' => 2,
                                                                  'section_number' => '1.1'
                                                                }
                                                              }
                                                            ],
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
                                                        }
                                                      },
                                                      'section_level' => 2
                                                    }
                                                  }
                                                },
                                                'FastBack' => {},
                                                'FastForward' => {},
                                                'Forward' => {},
                                                'Next' => {},
                                                'NodeBack' => {},
                                                'NodeForward' => {},
                                                'NodeNext' => {},
                                                'NodeUp' => {},
                                                'This' => {},
                                                'Up' => {}
                                              },
                                              'tree_unit_directions' => {
                                                'prev' => {}
                                              },
                                              'type' => 'unit',
                                              'unit_command' => {}
                                            },
                                            'FastBack' => {},
                                            'FastForward' => {},
                                            'Forward' => {},
                                            'Next' => {},
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
                                          'unit_command' => {}
                                        },
                                        'FastBack' => {},
                                        'FastForward' => {},
                                        'Forward' => {},
                                        'Next' => {},
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
                                      'unit_command' => {}
                                    },
                                    'FastBack' => {},
                                    'FastForward' => {},
                                    'Forward' => {},
                                    'NodeBack' => {},
                                    'NodeForward' => {},
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
                                  'unit_command' => {}
                                },
                                'FastBack' => {},
                                'FastForward' => {},
                                'Forward' => {},
                                'Next' => {},
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
                              'unit_command' => {}
                            },
                            'FastBack' => {},
                            'FastForward' => {},
                            'Forward' => {},
                            'NodeBack' => {},
                            'NodeForward' => {},
                            'NodeUp' => {},
                            'This' => {},
                            'Up' => {}
                          },
                          'tree_unit_directions' => {
                            'prev' => {}
                          },
                          'type' => 'unit',
                          'unit_command' => {}
                        },
                        'FastBack' => {},
                        'FastForward' => {},
                        'Forward' => {},
                        'NodeBack' => {},
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
                      'unit_command' => {}
                    },
                    'FastBack' => {},
                    'FastForward' => {
                      'directions' => {
                        'Back' => {},
                        'FastBack' => {},
                        'FastForward' => {
                          'directions' => {
                            'Back' => {},
                            'FastBack' => {},
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
                            'cmdname' => 'unnumbered',
                            'extra' => {
                              'associated_node' => {
                                'associated_unit' => {},
                                'cmdname' => 'node',
                                'extra' => {
                                  'normalized' => 'continuity'
                                },
                                'structure' => {}
                              },
                              'section_directions' => {
                                'prev' => {
                                  'associated_unit' => {},
                                  'cmdname' => 'unnumbered',
                                  'extra' => {
                                    'associated_node' => {
                                      'associated_unit' => {},
                                      'cmdname' => 'node',
                                      'extra' => {
                                        'normalized' => 'Third-node-unnumbered'
                                      },
                                      'structure' => {}
                                    },
                                    'section_directions' => {
                                      'prev' => {
                                        'associated_unit' => {},
                                        'cmdname' => 'chapter',
                                        'extra' => {
                                          'associated_node' => {
                                            'associated_unit' => {},
                                            'cmdname' => 'node',
                                            'extra' => {
                                              'normalized' => 'Second-node'
                                            },
                                            'structure' => {}
                                          },
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
                                      },
                                      'up' => {}
                                    },
                                    'section_level' => 1,
                                    'toplevel_directions' => {
                                      'prev' => {},
                                      'up' => {}
                                    }
                                  }
                                },
                                'up' => {}
                              },
                              'section_level' => 1,
                              'toplevel_directions' => {
                                'prev' => {},
                                'up' => {}
                              }
                            }
                          }
                        },
                        'Forward' => {},
                        'Next' => {},
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
                      'unit_command' => {}
                    },
                    'Forward' => {},
                    'Next' => {},
                    'NodeForward' => {},
                    'NodeNext' => {},
                    'NodeUp' => {},
                    'Prev' => {},
                    'This' => {},
                    'Up' => {}
                  },
                  'tree_unit_directions' => {
                    'prev' => {}
                  },
                  'type' => 'unit',
                  'unit_command' => {}
                },
                'Forward' => {},
                'Next' => {},
                'NodeBack' => {},
                'NodeForward' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'This' => {},
                'Up' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'type' => 'unit',
              'unit_command' => {}
            },
            'Forward' => {},
            'NodeForward' => {},
            'NodeNext' => {},
            'NodePrev' => {
              'extra' => {},
              'type' => 'external_node'
            },
            'This' => {}
          },
          'tree_unit_directions' => {},
          'type' => 'unit',
          'unit_command' => {}
        },
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'associated_unit' => {},
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {},
            {},
            {},
            {}
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
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeNext'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[0]{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[1]{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[1]{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[0];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[2]{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[2]{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[1];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[3]{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[3]{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[2];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[0] = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[1]{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[1]{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[0]{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[1];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[2]{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[2]{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[1];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeNext'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[0];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeNext'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodePrev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[1];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeNext'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodePrev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[2];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodePrev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[3];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeNext'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodePrev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[1];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[0];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'NodePrev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'This'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[2];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'section_directions'}{'prev'}{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0];
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0] = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1] = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2] = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3] = $result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'};
$result_sectioning{'complex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'complex'};

$result_nodes{'complex'} = {
  'associated_unit' => {
    'directions' => {
      'FastForward' => {
        'directions' => {
          'Back' => {},
          'FastBack' => {},
          'FastForward' => {
            'directions' => {
              'Back' => {
                'directions' => {
                  'Back' => {
                    'directions' => {
                      'Back' => {
                        'directions' => {
                          'Back' => {
                            'directions' => {
                              'Back' => {
                                'directions' => {
                                  'Back' => {
                                    'directions' => {
                                      'Back' => {
                                        'directions' => {
                                          'Back' => {
                                            'directions' => {
                                              'Back' => {},
                                              'FastBack' => {},
                                              'FastForward' => {},
                                              'Forward' => {},
                                              'Next' => {},
                                              'NodeBack' => {},
                                              'NodeForward' => {},
                                              'NodeNext' => {},
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
                                              'cmdname' => 'unnumberedsec',
                                              'extra' => {}
                                            }
                                          },
                                          'FastBack' => {},
                                          'FastForward' => {},
                                          'Forward' => {},
                                          'Next' => {},
                                          'NodeBack' => {},
                                          'NodeForward' => {},
                                          'NodeNext' => {},
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
                                          'cmdname' => 'unnumberedsubsec',
                                          'extra' => {}
                                        }
                                      },
                                      'FastBack' => {},
                                      'FastForward' => {},
                                      'Forward' => {},
                                      'Next' => {},
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
                                    'unit_command' => {
                                      'associated_unit' => {},
                                      'cmdname' => 'subsection',
                                      'extra' => {}
                                    }
                                  },
                                  'FastBack' => {},
                                  'FastForward' => {},
                                  'Forward' => {},
                                  'Next' => {},
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
                                'unit_command' => {
                                  'associated_unit' => {},
                                  'cmdname' => 'unnumberedsubsec',
                                  'extra' => {}
                                }
                              },
                              'FastBack' => {},
                              'FastForward' => {},
                              'Forward' => {},
                              'NodeBack' => {},
                              'NodeForward' => {},
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
                            'unit_command' => {
                              'associated_unit' => {},
                              'cmdname' => 'subsection',
                              'extra' => {}
                            }
                          },
                          'FastBack' => {},
                          'FastForward' => {},
                          'Forward' => {},
                          'Next' => {},
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
                        'unit_command' => {
                          'associated_unit' => {},
                          'cmdname' => 'unnumberedsec',
                          'extra' => {}
                        }
                      },
                      'FastBack' => {},
                      'FastForward' => {},
                      'Forward' => {},
                      'NodeBack' => {},
                      'NodeForward' => {},
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
                      'cmdname' => 'subsection',
                      'extra' => {}
                    }
                  },
                  'FastBack' => {},
                  'FastForward' => {},
                  'Forward' => {},
                  'NodeBack' => {},
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
                'unit_command' => {
                  'associated_unit' => {},
                  'cmdname' => 'section',
                  'extra' => {
                    'section_number' => '1.1'
                  }
                }
              },
              'FastBack' => {},
              'FastForward' => {
                'directions' => {
                  'Back' => {},
                  'FastBack' => {},
                  'FastForward' => {
                    'directions' => {
                      'Back' => {},
                      'FastBack' => {},
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
                      'cmdname' => 'unnumbered',
                      'extra' => {}
                    }
                  },
                  'Forward' => {},
                  'Next' => {},
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
                'unit_command' => {
                  'associated_unit' => {},
                  'cmdname' => 'unnumbered',
                  'extra' => {}
                }
              },
              'Forward' => {},
              'Next' => {},
              'NodeForward' => {},
              'NodeNext' => {},
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
            'unit_command' => {
              'associated_unit' => {},
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => 2
              }
            }
          },
          'Forward' => {},
          'Next' => {},
          'NodeBack' => {},
          'NodeForward' => {},
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
          'cmdname' => 'chapter',
          'extra' => {
            'section_number' => 1
          }
        }
      },
      'Forward' => {},
      'NodeForward' => {},
      'NodeNext' => {},
      'NodePrev' => {
        'extra' => {
          'manual_content' => [
            {
              'text' => 'dir'
            }
          ]
        },
        'type' => 'external_node'
      },
      'This' => {}
    },
    'tree_unit_directions' => {
      'next' => {}
    },
    'type' => 'unit',
    'unit_command' => {
      'associated_unit' => {},
      'cmdname' => 'top',
      'extra' => {}
    }
  },
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {},
    'node_directions' => {
      'next' => {
        'associated_unit' => {},
        'cmdname' => 'node',
        'extra' => {
          'associated_section' => {},
          'node_directions' => {
            'prev' => {},
            'up' => {}
          },
          'normalized' => 'First-node'
        },
        'structure' => {}
      },
      'prev' => {
        'extra' => {
          'manual_content' => []
        }
      }
    },
    'normalized' => 'Top'
  }
};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'complex'}{'associated_unit'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'complex'}{'associated_unit'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeNext'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeNext'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeNext'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodePrev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeNext'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodePrev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodePrev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeNext'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodePrev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'NodePrev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'This'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_nodes{'complex'}{'associated_unit'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_nodes{'complex'}{'associated_unit'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_nodes{'complex'}{'associated_unit'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_nodes{'complex'}{'associated_unit'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_nodes{'complex'}{'associated_unit'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_nodes{'complex'}{'associated_unit'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_nodes{'complex'}{'associated_unit'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_nodes{'complex'}{'associated_unit'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_nodes{'complex'}{'associated_unit'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_nodes{'complex'}{'associated_unit'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'complex'}{'associated_unit'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'Forward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'NodeForward'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'NodeNext'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'directions'}{'This'} = $result_nodes{'complex'}{'associated_unit'};
$result_nodes{'complex'}{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_nodes{'complex'}{'associated_unit'};
$result_nodes{'complex'}{'extra'}{'associated_section'} = $result_nodes{'complex'}{'associated_unit'}{'unit_command'};
$result_nodes{'complex'}{'extra'}{'node_directions'}{'next'}{'associated_unit'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'complex'}{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'};
$result_nodes{'complex'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'complex'};
$result_nodes{'complex'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'complex'};
$result_nodes{'complex'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'manual_content'} = $result_nodes{'complex'}{'associated_unit'}{'directions'}{'NodePrev'}{'extra'}{'manual_content'};

$result_menus{'complex'} = [
  {
    'associated_unit' => {
      'directions' => {
        'FastForward' => {
          'directions' => {
            'Back' => {},
            'FastBack' => {},
            'FastForward' => {
              'directions' => {
                'Back' => {
                  'directions' => {
                    'Back' => {
                      'directions' => {
                        'Back' => {
                          'directions' => {
                            'Back' => {
                              'directions' => {
                                'Back' => {
                                  'directions' => {
                                    'Back' => {
                                      'directions' => {
                                        'Back' => {
                                          'directions' => {
                                            'Back' => {
                                              'directions' => {
                                                'Back' => {},
                                                'FastBack' => {},
                                                'FastForward' => {},
                                                'Forward' => {},
                                                'Next' => {},
                                                'NodeBack' => {},
                                                'NodeForward' => {},
                                                'NodeNext' => {},
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
                                                'extra' => {}
                                              }
                                            },
                                            'FastBack' => {},
                                            'FastForward' => {},
                                            'Forward' => {},
                                            'Next' => {},
                                            'NodeBack' => {},
                                            'NodeForward' => {},
                                            'NodeNext' => {},
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
                                            'extra' => {}
                                          }
                                        },
                                        'FastBack' => {},
                                        'FastForward' => {},
                                        'Forward' => {},
                                        'Next' => {},
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
                                      'unit_command' => {
                                        'associated_unit' => {},
                                        'extra' => {}
                                      }
                                    },
                                    'FastBack' => {},
                                    'FastForward' => {},
                                    'Forward' => {},
                                    'Next' => {},
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
                                  'unit_command' => {
                                    'associated_unit' => {},
                                    'extra' => {}
                                  }
                                },
                                'FastBack' => {},
                                'FastForward' => {},
                                'Forward' => {},
                                'NodeBack' => {},
                                'NodeForward' => {},
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
                              'unit_command' => {
                                'associated_unit' => {},
                                'extra' => {}
                              }
                            },
                            'FastBack' => {},
                            'FastForward' => {},
                            'Forward' => {},
                            'Next' => {},
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
                          'unit_command' => {
                            'associated_unit' => {},
                            'extra' => {}
                          }
                        },
                        'FastBack' => {},
                        'FastForward' => {},
                        'Forward' => {},
                        'NodeBack' => {},
                        'NodeForward' => {},
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
                        'extra' => {}
                      }
                    },
                    'FastBack' => {},
                    'FastForward' => {},
                    'Forward' => {},
                    'NodeBack' => {},
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
                  'unit_command' => {
                    'associated_unit' => {},
                    'extra' => {
                      'section_number' => '1.1'
                    }
                  }
                },
                'FastBack' => {},
                'FastForward' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
                    'FastForward' => {
                      'directions' => {
                        'Back' => {},
                        'FastBack' => {},
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
                        'extra' => {}
                      }
                    },
                    'Forward' => {},
                    'Next' => {},
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
                  'unit_command' => {
                    'associated_unit' => {},
                    'extra' => {}
                  }
                },
                'Forward' => {},
                'Next' => {},
                'NodeForward' => {},
                'NodeNext' => {},
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
              'unit_command' => {
                'associated_unit' => {},
                'extra' => {
                  'section_number' => 2
                }
              }
            },
            'Forward' => {},
            'Next' => {},
            'NodeBack' => {},
            'NodeForward' => {},
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
            'extra' => {
              'section_number' => 1
            }
          }
        },
        'Forward' => {},
        'NodeForward' => {},
        'NodeNext' => {},
        'NodePrev' => {
          'extra' => {
            'manual_content' => [
              {
                'text' => 'dir'
              }
            ]
          },
          'type' => 'external_node'
        },
        'This' => {}
      },
      'tree_unit_directions' => {
        'next' => {}
      },
      'type' => 'unit',
      'unit_command' => {
        'associated_unit' => {},
        'extra' => {}
      }
    },
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {
    'associated_unit' => {},
    'extra' => {
      'menu_directions' => {
        'next' => {
          'associated_unit' => {},
          'extra' => {
            'menu_directions' => {
              'next' => {
                'associated_unit' => {},
                'extra' => {
                  'menu_directions' => {
                    'next' => {
                      'associated_unit' => {},
                      'extra' => {
                        'menu_directions' => {
                          'next' => {
                            'associated_unit' => {},
                            'extra' => {
                              'menu_directions' => {
                                'next' => {
                                  'associated_unit' => {},
                                  'extra' => {
                                    'menu_directions' => {
                                      'prev' => {},
                                      'up' => {}
                                    },
                                    'normalized' => 'Last-node-no-description'
                                  },
                                  'structure' => {
                                    'menu_up_hash' => {
                                      'Top' => 1
                                    }
                                  }
                                },
                                'prev' => {},
                                'up' => {}
                              },
                              'normalized' => 'continuity'
                            },
                            'structure' => {
                              'menu_up_hash' => {
                                'Top' => 1
                              }
                            }
                          },
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'Third-node-unnumbered'
                      },
                      'structure' => {
                        'menu_up_hash' => {
                          'Top' => 1
                        }
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'Second-node'
                },
                'structure' => {
                  'menu_up_hash' => {
                    'Top' => 1
                  }
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'between-node'
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
      'normalized' => 'First-node'
    },
    'structure' => {
      'menu_up_hash' => {
        'Top' => 1
      }
    }
  },
  {
    'associated_unit' => {},
    'extra' => {
      'menu_directions' => {
        'next' => {
          'associated_unit' => {},
          'extra' => {
            'menu_directions' => {
              'next' => {
                'associated_unit' => {},
                'extra' => {
                  'menu_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'numbered'
                },
                'structure' => {
                  'menu_up_hash' => {
                    'First-node' => 1
                  }
                }
              },
              'prev' => {},
              'up' => {}
            },
            'menus' => [
              {}
            ],
            'normalized' => 'unnumbered2'
          },
          'structure' => {
            'menu_up_hash' => {
              'First-node' => 1
            }
          }
        },
        'up' => {}
      },
      'menus' => [
        {}
      ],
      'normalized' => 'unnumbered'
    },
    'structure' => {
      'menu_up_hash' => {
        'First-node' => 1
      }
    }
  },
  {
    'associated_unit' => {},
    'extra' => {
      'menu_directions' => {
        'next' => {
          'associated_unit' => {},
          'extra' => {
            'menu_directions' => {
              'next' => {
                'associated_unit' => {},
                'extra' => {
                  'menu_directions' => {
                    'next' => {
                      'associated_unit' => {},
                      'extra' => {
                        'menu_directions' => {
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'numbered-sub2'
                      },
                      'structure' => {
                        'menu_up_hash' => {
                          'unnumbered' => 1
                        }
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'unnumbered-sub2'
                },
                'structure' => {
                  'menu_up_hash' => {
                    'unnumbered' => 1
                  }
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'numbered-sub'
          },
          'structure' => {
            'menu_up_hash' => {
              'unnumbered' => 1
            }
          }
        },
        'up' => {}
      },
      'normalized' => 'unnumbered-sub'
    },
    'structure' => {
      'menu_up_hash' => {
        'unnumbered' => 1
      }
    }
  },
  {},
  {},
  {},
  {},
  {
    'associated_unit' => {},
    'extra' => {
      'menu_directions' => {
        'up' => {}
      },
      'normalized' => 'numbered-sub3'
    },
    'structure' => {
      'menu_up_hash' => {
        'unnumbered2' => 1
      }
    }
  },
  {},
  {},
  {},
  {},
  {},
  {}
];
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'complex'}[0]{'associated_unit'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'complex'}[0]{'associated_unit'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeNext'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeNext'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeNext'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodePrev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeNext'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodePrev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodePrev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeNext'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodePrev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'NodePrev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'This'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_menus{'complex'}[0]{'associated_unit'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_menus{'complex'}[0]{'associated_unit'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_menus{'complex'}[0]{'associated_unit'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_menus{'complex'}[0]{'associated_unit'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_menus{'complex'}[0]{'associated_unit'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_menus{'complex'}[0]{'associated_unit'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_menus{'complex'}[0]{'associated_unit'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_menus{'complex'}[0]{'associated_unit'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_menus{'complex'}[0]{'associated_unit'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_menus{'complex'}[0]{'associated_unit'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'complex'}[0]{'associated_unit'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'This'} = $result_menus{'complex'}[0]{'associated_unit'};
$result_menus{'complex'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'};
$result_menus{'complex'}[1]{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'complex'}[0];
$result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'complex'}[0];
$result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'complex'}[0];
$result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'complex'}[0];
$result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'complex'}[1];
$result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'complex'}[0];
$result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'complex'}[0];
$result_menus{'complex'}[2]{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[2]{'extra'}{'menu_directions'}{'next'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[2]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_menus{'complex'}[2]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'complex'}[2]{'extra'}{'menu_directions'}{'next'};
$result_menus{'complex'}[2]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'complex'}[1];
$result_menus{'complex'}[2]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'complex'}[2];
$result_menus{'complex'}[2]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'complex'}[1];
$result_menus{'complex'}[2]{'extra'}{'menu_directions'}{'up'} = $result_menus{'complex'}[1];
$result_menus{'complex'}[3]{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[3]{'extra'}{'menu_directions'}{'next'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'complex'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'complex'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'complex'}[2];
$result_menus{'complex'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'complex'}[3]{'extra'}{'menu_directions'}{'next'};
$result_menus{'complex'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'complex'}[2];
$result_menus{'complex'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'complex'}[3];
$result_menus{'complex'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'complex'}[2];
$result_menus{'complex'}[3]{'extra'}{'menu_directions'}{'up'} = $result_menus{'complex'}[2];
$result_menus{'complex'}[4] = $result_menus{'complex'}[3]{'extra'}{'menu_directions'}{'next'};
$result_menus{'complex'}[5] = $result_menus{'complex'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'complex'}[6] = $result_menus{'complex'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'complex'}[7] = $result_menus{'complex'}[2]{'extra'}{'menu_directions'}{'next'};
$result_menus{'complex'}[8]{'associated_unit'} = $result_menus{'complex'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_menus{'complex'}[8]{'extra'}{'menu_directions'}{'up'} = $result_menus{'complex'}[2]{'extra'}{'menu_directions'}{'next'};
$result_menus{'complex'}[9] = $result_menus{'complex'}[2]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'complex'}[10] = $result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'complex'}[11] = $result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'complex'}[12] = $result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'complex'}[13] = $result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'complex'}[14] = $result_menus{'complex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};

$result_errors{'complex'} = [];


$result_floats{'complex'} = {};


$result_elements{'complex'} = [
  {
    'directions' => {
      'FastForward' => {
        'directions' => {
          'Back' => {},
          'FastBack' => {},
          'FastForward' => {
            'directions' => {
              'Back' => {
                'directions' => {
                  'Back' => {
                    'directions' => {
                      'Back' => {
                        'directions' => {
                          'Back' => {
                            'directions' => {
                              'Back' => {
                                'directions' => {
                                  'Back' => {
                                    'directions' => {
                                      'Back' => {
                                        'directions' => {
                                          'Back' => {
                                            'directions' => {
                                              'Back' => {},
                                              'FastBack' => {},
                                              'FastForward' => {},
                                              'Forward' => {},
                                              'Next' => {},
                                              'NodeBack' => {},
                                              'NodeForward' => {},
                                              'NodeNext' => {},
                                              'NodeUp' => {},
                                              'This' => {},
                                              'Up' => {}
                                            },
                                            'type' => 'unit',
                                            'unit_command' => {
                                              'associated_unit' => {},
                                              'cmdname' => 'unnumberedsec',
                                              'extra' => {}
                                            }
                                          },
                                          'FastBack' => {},
                                          'FastForward' => {},
                                          'Forward' => {},
                                          'Next' => {},
                                          'NodeBack' => {},
                                          'NodeForward' => {},
                                          'NodeNext' => {},
                                          'NodeUp' => {},
                                          'This' => {},
                                          'Up' => {}
                                        },
                                        'type' => 'unit',
                                        'unit_command' => {
                                          'associated_unit' => {},
                                          'cmdname' => 'unnumberedsubsec',
                                          'extra' => {}
                                        }
                                      },
                                      'FastBack' => {},
                                      'FastForward' => {},
                                      'Forward' => {},
                                      'Next' => {},
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
                                    'unit_command' => {
                                      'associated_unit' => {},
                                      'cmdname' => 'subsection',
                                      'extra' => {}
                                    }
                                  },
                                  'FastBack' => {},
                                  'FastForward' => {},
                                  'Forward' => {},
                                  'Next' => {},
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
                                'unit_command' => {
                                  'associated_unit' => {},
                                  'cmdname' => 'unnumberedsubsec',
                                  'extra' => {}
                                }
                              },
                              'FastBack' => {},
                              'FastForward' => {},
                              'Forward' => {},
                              'NodeBack' => {},
                              'NodeForward' => {},
                              'NodePrev' => {},
                              'NodeUp' => {},
                              'Prev' => {},
                              'This' => {},
                              'Up' => {}
                            },
                            'type' => 'unit',
                            'unit_command' => {
                              'associated_unit' => {},
                              'cmdname' => 'subsection',
                              'extra' => {}
                            }
                          },
                          'FastBack' => {},
                          'FastForward' => {},
                          'Forward' => {},
                          'Next' => {},
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
                        'unit_command' => {
                          'associated_unit' => {},
                          'cmdname' => 'unnumberedsec',
                          'extra' => {}
                        }
                      },
                      'FastBack' => {},
                      'FastForward' => {},
                      'Forward' => {},
                      'NodeBack' => {},
                      'NodeForward' => {},
                      'NodeUp' => {},
                      'This' => {},
                      'Up' => {}
                    },
                    'type' => 'unit',
                    'unit_command' => {
                      'associated_unit' => {},
                      'cmdname' => 'subsection',
                      'extra' => {}
                    }
                  },
                  'FastBack' => {},
                  'FastForward' => {},
                  'Forward' => {},
                  'NodeBack' => {},
                  'NodePrev' => {},
                  'NodeUp' => {},
                  'Prev' => {},
                  'This' => {},
                  'Up' => {}
                },
                'type' => 'unit',
                'unit_command' => {
                  'associated_unit' => {},
                  'cmdname' => 'section',
                  'extra' => {
                    'section_number' => '1.1'
                  }
                }
              },
              'FastBack' => {},
              'FastForward' => {
                'directions' => {
                  'Back' => {},
                  'FastBack' => {},
                  'FastForward' => {
                    'directions' => {
                      'Back' => {},
                      'FastBack' => {},
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
                    'unit_command' => {
                      'associated_unit' => {},
                      'cmdname' => 'unnumbered',
                      'extra' => {}
                    }
                  },
                  'Forward' => {},
                  'Next' => {},
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
                'unit_command' => {
                  'associated_unit' => {},
                  'cmdname' => 'unnumbered',
                  'extra' => {}
                }
              },
              'Forward' => {},
              'Next' => {},
              'NodeForward' => {},
              'NodeNext' => {},
              'NodeUp' => {},
              'Prev' => {},
              'This' => {},
              'Up' => {}
            },
            'type' => 'unit',
            'unit_command' => {
              'associated_unit' => {},
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => 2
              }
            }
          },
          'Forward' => {},
          'Next' => {},
          'NodeBack' => {},
          'NodeForward' => {},
          'NodePrev' => {},
          'NodeUp' => {},
          'This' => {},
          'Up' => {}
        },
        'type' => 'unit',
        'unit_command' => {
          'associated_unit' => {},
          'cmdname' => 'chapter',
          'extra' => {
            'section_number' => 1
          }
        }
      },
      'Forward' => {},
      'NodeForward' => {},
      'NodeNext' => {},
      'NodePrev' => {
        'extra' => {
          'manual_content' => [
            {
              'text' => 'dir'
            }
          ]
        },
        'type' => 'external_node'
      },
      'This' => {}
    },
    'type' => 'unit',
    'unit_command' => {
      'associated_unit' => {},
      'cmdname' => 'top',
      'extra' => {}
    }
  },
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {}
];
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'complex'}[0];
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'complex'}[0];
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeNext'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeNext'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeNext'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodePrev'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeNext'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodePrev'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodePrev'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeNext'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodePrev'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'NodeBack'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'NodePrev'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'NodeUp'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'This'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_elements{'complex'}[0];
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'complex'}[0];
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_elements{'complex'}[0];
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'complex'}[0];
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_elements{'complex'}[0];
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'complex'}[0];
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_elements{'complex'}[0];
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_elements{'complex'}[0];
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_elements{'complex'}[0];
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'complex'}[0];
$result_elements{'complex'}[0]{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'Forward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'NodeForward'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'NodeNext'} = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[0]{'directions'}{'This'} = $result_elements{'complex'}[0];
$result_elements{'complex'}[0]{'unit_command'}{'associated_unit'} = $result_elements{'complex'}[0];
$result_elements{'complex'}[1] = $result_elements{'complex'}[0]{'directions'}{'FastForward'};
$result_elements{'complex'}[2] = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[3] = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[4] = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[5] = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[6] = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[7] = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[8] = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'complex'}[9] = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'complex'}[10] = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[11] = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'complex'}[12] = $result_elements{'complex'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};



$result_directions_text{'complex'} = 'element: @top
  FastForward: @chapter first node chapter
  Forward: @chapter first node chapter
  NodeForward: @chapter first node chapter
  NodeNext: @chapter first node chapter
  NodePrev: (dir)
  This: @top
element: @chapter first node chapter
  Back: @top
  FastBack: @top
  FastForward: @chapter second node chapter
  Forward: @unnumberedsec unnumbered section
  Next: @chapter second node chapter
  NodeBack: @top
  NodeForward: @unnumberedsec unnumbered section
  NodePrev: @top
  NodeUp: @top
  This: @chapter first node chapter
  Up: @top
element: @unnumberedsec unnumbered section
  Back: @chapter first node chapter
  FastBack: @chapter first node chapter
  FastForward: @chapter second node chapter
  Forward: @unnumberedsubsec unnumbered subsection
  Next: @unnumberedsec unnumbered section2
  NodeBack: @chapter first node chapter
  NodeForward: @unnumberedsubsec unnumbered subsection
  NodeNext: @unnumberedsec unnumbered section2
  NodeUp: @chapter first node chapter
  This: @unnumberedsec unnumbered section
  Up: @chapter first node chapter
element: @unnumberedsubsec unnumbered subsection
  Back: @unnumberedsec unnumbered section
  FastBack: @chapter first node chapter
  FastForward: @chapter second node chapter
  Forward: @subsection numbered subsection
  Next: @subsection numbered subsection
  NodeBack: @unnumberedsec unnumbered section
  NodeForward: @subsection numbered subsection
  NodeNext: @subsection numbered subsection
  NodeUp: @unnumberedsec unnumbered section
  This: @unnumberedsubsec unnumbered subsection
  Up: @unnumberedsec unnumbered section
element: @subsection numbered subsection
  Back: @unnumberedsubsec unnumbered subsection
  FastBack: @chapter first node chapter
  FastForward: @chapter second node chapter
  Forward: @unnumberedsubsec unnumbered subsection2
  Next: @unnumberedsubsec unnumbered subsection2
  NodeBack: @unnumberedsubsec unnumbered subsection
  NodeForward: @unnumberedsubsec unnumbered subsection2
  NodeNext: @unnumberedsubsec unnumbered subsection2
  NodePrev: @unnumberedsubsec unnumbered subsection
  NodeUp: @unnumberedsec unnumbered section
  Prev: @unnumberedsubsec unnumbered subsection
  This: @subsection numbered subsection
  Up: @unnumberedsec unnumbered section
element: @unnumberedsubsec unnumbered subsection2
  Back: @subsection numbered subsection
  FastBack: @chapter first node chapter
  FastForward: @chapter second node chapter
  Forward: @subsection numbered subsection2
  Next: @subsection numbered subsection2
  NodeBack: @subsection numbered subsection
  NodeForward: @subsection numbered subsection2
  NodeNext: @subsection numbered subsection2
  NodePrev: @subsection numbered subsection
  NodeUp: @unnumberedsec unnumbered section
  Prev: @subsection numbered subsection
  This: @unnumberedsubsec unnumbered subsection2
  Up: @unnumberedsec unnumbered section
element: @subsection numbered subsection2
  Back: @unnumberedsubsec unnumbered subsection2
  FastBack: @chapter first node chapter
  FastForward: @chapter second node chapter
  Forward: @unnumberedsec unnumbered section2
  NodeBack: @unnumberedsubsec unnumbered subsection2
  NodeForward: @unnumberedsec unnumbered section2
  NodePrev: @unnumberedsubsec unnumbered subsection2
  NodeUp: @unnumberedsec unnumbered section
  Prev: @unnumberedsubsec unnumbered subsection2
  This: @subsection numbered subsection2
  Up: @unnumberedsec unnumbered section
element: @unnumberedsec unnumbered section2
  Back: @subsection numbered subsection2
  FastBack: @chapter first node chapter
  FastForward: @chapter second node chapter
  Forward: @subsection numbered subsection3
  Next: @section numbered section
  NodeBack: @subsection numbered subsection2
  NodeForward: @subsection numbered subsection3
  NodeNext: @section numbered section
  NodePrev: @unnumberedsec unnumbered section
  NodeUp: @chapter first node chapter
  Prev: @unnumberedsec unnumbered section
  This: @unnumberedsec unnumbered section2
  Up: @chapter first node chapter
element: @subsection numbered subsection3
  Back: @unnumberedsec unnumbered section2
  FastBack: @chapter first node chapter
  FastForward: @chapter second node chapter
  Forward: @section numbered section
  NodeBack: @unnumberedsec unnumbered section2
  NodeForward: @section numbered section
  NodeUp: @unnumberedsec unnumbered section2
  This: @subsection numbered subsection3
  Up: @unnumberedsec unnumbered section2
element: @section numbered section
  Back: @subsection numbered subsection3
  FastBack: @chapter first node chapter
  FastForward: @chapter second node chapter
  Forward: @chapter second node chapter
  NodeBack: @subsection numbered subsection3
  NodePrev: @unnumberedsec unnumbered section2
  NodeUp: @chapter first node chapter
  Prev: @unnumberedsec unnumbered section2
  This: @section numbered section
  Up: @chapter first node chapter
element: @chapter second node chapter
  Back: @section numbered section
  FastBack: @chapter first node chapter
  FastForward: @unnumbered unnumbered chapter
  Forward: @unnumbered unnumbered chapter
  Next: @unnumbered unnumbered chapter
  NodeForward: @unnumbered unnumbered chapter
  NodeNext: @unnumbered unnumbered chapter
  NodeUp: @top
  Prev: @chapter first node chapter
  This: @chapter second node chapter
  Up: @top
element: @unnumbered unnumbered chapter
  Back: @chapter second node chapter
  FastBack: @chapter second node chapter
  FastForward: @unnumbered unnumbered continuity
  Forward: @unnumbered unnumbered continuity
  Next: @unnumbered unnumbered continuity
  NodeBack: @chapter second node chapter
  NodeForward: @unnumbered unnumbered continuity
  NodeNext: @unnumbered unnumbered continuity
  NodePrev: @chapter second node chapter
  NodeUp: @top
  Prev: @chapter second node chapter
  This: @unnumbered unnumbered chapter
  Up: @top
element: @unnumbered unnumbered continuity
  Back: @unnumbered unnumbered chapter
  FastBack: @unnumbered unnumbered chapter
  NodeBack: @unnumbered unnumbered chapter
  NodeForward: @unnumbered unnumbered chapter
  NodeNext: @unnumbered unnumbered chapter
  NodePrev: @unnumbered unnumbered continuity
  NodeUp: @top
  Prev: @unnumbered unnumbered chapter
  This: @unnumbered unnumbered continuity
  Up: @top
';

1;
