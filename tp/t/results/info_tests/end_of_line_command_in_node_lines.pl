use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'end_of_line_command_in_node_lines'} = {
  'contents' => [
    {
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
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
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
              'text' => 'top'
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
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
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
              'text' => 'chap '
            },
            {
              'cmdname' => '*'
            },
            {
              'text' => ' f     nl Something? '
            },
            {
              'cmdname' => '*'
            },
            {
              'text' => ' After punct'
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
        'isindex' => 1,
        'node_content' => [
          {},
          {},
          {},
          {},
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {},
              {},
              {},
              {},
              {}
            ],
            'normalized' => 'chap-f-nl-Something_003f-After-punct'
          }
        ],
        'normalized' => 'chap-f-nl-Something_003f-After-punct'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
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
              'text' => 'Chap'
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
                  'text' => 'ankh '
                },
                {
                  'cmdname' => '*'
                },
                {
                  'text' => ' p'
                }
              ],
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'anchor',
          'extra' => {
            'node_content' => [
              {},
              {},
              {}
            ],
            'normalized' => 'ankh-p'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 7,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'spaces_after_close_brace'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'text '
            },
            {
              'cmdname' => '*'
            },
            {
              'text' => ' f     nl Something? '
            },
            {
              'cmdname' => '*'
            },
            {
              'text' => ' After punct
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
                  'text' => 'a '
                },
                {
                  'cmdname' => '*'
                },
                {
                  'text' => ' b'
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
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
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
            'file_name' => '',
            'line_nr' => 13,
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
        'file_name' => '',
        'line_nr' => 5,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'new n'
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
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'new-n'
          }
        ],
        'normalized' => 'new-n'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 15,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Ochap'
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
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'chap '
                    },
                    {
                      'cmdname' => '*'
                    },
                    {
                      'text' => ' f     nl Something? '
                    },
                    {
                      'cmdname' => '*'
                    },
                    {
                      'text' => ' After punct'
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {},
                    {},
                    {},
                    {},
                    {}
                  ],
                  'normalized' => 'chap-f-nl-Something_003f-After-punct'
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 18,
                'macro' => ''
              }
            },
            {
              'text' => '.
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'ankh '
                    },
                    {
                      'cmdname' => '*'
                    },
                    {
                      'text' => ' p'
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {},
                    {},
                    {}
                  ],
                  'normalized' => 'ankh-p'
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 20,
                'macro' => ''
              }
            },
            {
              'text' => '.
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'ankh '
                    },
                    {
                      'cmdname' => '*'
                    },
                    {
                      'text' => ' p'
                    }
                  ],
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'addll'
                    },
                    {
                      'cmdname' => '*'
                    },
                    {
                      'text' => 'gg'
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
              'cmdname' => 'xref',
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {},
                    {},
                    {}
                  ],
                  'normalized' => 'ankh-p'
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 22,
                'macro' => ''
              }
            },
            {
              'text' => '.
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
                      'text' => 'chap '
                    },
                    {
                      'cmdname' => '*'
                    },
                    {
                      'text' => ' f     nl Something? '
                    },
                    {
                      'cmdname' => '*'
                    },
                    {
                      'text' => ' After punct'
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
                'menu_entry_node_label' => {
                  'node_content' => [
                    {},
                    {},
                    {},
                    {},
                    {}
                  ],
                  'normalized' => 'chap-f-nl-Something_003f-After-punct'
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 25,
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
                      'text' => 'ankh '
                    },
                    {
                      'cmdname' => '*'
                    },
                    {
                      'text' => ' p'
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
                'menu_entry_node_label' => {
                  'node_content' => [
                    {},
                    {},
                    {}
                  ],
                  'normalized' => 'ankh-p'
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 26,
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
                      'text' => 'what '
                    },
                    {
                      'cmdname' => '*'
                    },
                    {
                      'text' => ' is'
                    }
                  ],
                  'type' => 'menu_entry_name'
                },
                {
                  'text' => ': ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'text' => 'ankh '
                    },
                    {
                      'cmdname' => '*'
                    },
                    {
                      'text' => ' p'
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '.',
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
                'menu_entry_name' => {},
                'menu_entry_node_label' => {
                  'node_content' => [
                    {},
                    {},
                    {}
                  ],
                  'normalized' => 'ankh-p'
                }
              },
              'source_info' => {
                'file_name' => '',
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
                      'text' => 'what '
                    },
                    {
                      'cmdname' => '*'
                    },
                    {
                      'text' => ' is'
                    }
                  ],
                  'type' => 'menu_entry_name'
                },
                {
                  'text' => ': ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'text' => 'ankh p'
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '.',
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
                'menu_entry_name' => {},
                'menu_entry_node_label' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'ankh-p'
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 28,
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
                'file_name' => '',
                'line_nr' => 29,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => '',
            'line_nr' => 24,
            'macro' => ''
          }
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 16,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3]{'extra'}{'node_content'}[1] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3]{'args'}[0]{'contents'}[1];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3]{'extra'}{'node_content'}[2] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3]{'args'}[0]{'contents'}[2];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3]{'extra'}{'node_content'}[3] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3]{'args'}[0]{'contents'}[3];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3]{'extra'}{'node_content'}[4] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3]{'args'}[0]{'contents'}[4];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[1] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3]{'args'}[0]{'contents'}[1];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[2] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3]{'args'}[0]{'contents'}[2];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[3] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3]{'args'}[0]{'contents'}[3];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[4] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3]{'args'}[0]{'contents'}[4];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}[1] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}[2] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[4]{'contents'}[6]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[4]{'contents'}[6]{'args'}[0]{'contents'};
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[4]{'contents'}[6]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[4]{'contents'}[6]{'args'}[0]{'contents'};
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[4]{'contents'}[6]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[4]{'contents'}[6];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[4]{'contents'}[6]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[5]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'extra'}{'label'} = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[3];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[1] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[2] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[3] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[4] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[3]{'contents'}[0]{'extra'}{'label'} = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[4]{'contents'}[1];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[3]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[3]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[1] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[3]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[2] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[5]{'contents'}[0]{'extra'}{'label'} = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[4]{'contents'}[1];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[5]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[5]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[1] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[5]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[2] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'contents'}[3];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'extra'}{'menu_entry_node_label'}{'node_content'}[0] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'extra'}{'menu_entry_node_label'}{'node_content'}[1] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'extra'}{'menu_entry_node_label'}{'node_content'}[2] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'extra'}{'menu_entry_node_label'}{'node_content'}[3] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'extra'}{'menu_entry_node_label'}{'node_content'}[4] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'contents'}[1]{'contents'}[4];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[1]{'contents'}[3];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[1]{'extra'}{'menu_entry_node_label'}{'node_content'}[0] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[1]{'extra'}{'menu_entry_node_label'}{'node_content'}[1] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[1]{'extra'}{'menu_entry_node_label'}{'node_content'}[2] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'extra'}{'menu_entry_description'} = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'contents'}[5];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'extra'}{'menu_entry_name'} = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'contents'}[1];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'extra'}{'menu_entry_node_label'}{'node_content'}[0] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'extra'}{'menu_entry_node_label'}{'node_content'}[1] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'extra'}{'menu_entry_node_label'}{'node_content'}[2] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'contents'}[3]{'contents'}[2];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[3]{'extra'}{'menu_entry_description'} = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[3]{'contents'}[5];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[3]{'extra'}{'menu_entry_name'} = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[3]{'contents'}[1];
$result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[3]{'extra'}{'menu_entry_node_label'}{'node_content'}[0] = $result_trees{'end_of_line_command_in_node_lines'}{'contents'}[6]{'contents'}[7]{'contents'}[3]{'contents'}[3]{'contents'}[0];

$result_texis{'end_of_line_command_in_node_lines'} = '@node Top
@top top

@node chap @* f     nl Something? @* After punct
@chapter Chap

@anchor{ankh @* p}

text @* f     nl Something? @* After punct

@cindex a @* b

@printindex cp

@node new n
@chapter Ochap

@xref{chap @* f     nl Something? @* After punct}.

@xref{ankh @* p}.

@xref{ankh @* p, addll@*gg}.

@menu
* chap @* f     nl Something? @* After punct::
* ankh @* p::
* what @* is: ankh @* p.
* what @* is: ankh p.
@end menu
';


$result_texts{'end_of_line_command_in_node_lines'} = 'top
***

1 Chap
******


text 
 f     nl Something? 
 After punct



2 Ochap
*******

chap 
 f     nl Something? 
 After punct.

ankh 
 p.

ankh 
 p.

* chap 
 f     nl Something? 
 After punct::
* ankh 
 p::
* what 
 is: ankh 
 p.
* what 
 is: ankh p.
';

$result_sectioning{'end_of_line_command_in_node_lines'} = {
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
            'info' => {},
            'structure' => {}
          }
        },
        'info' => {},
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'chap-f-nl-Something_003f-After-punct'
                  },
                  'info' => {},
                  'structure' => {}
                }
              },
              'info' => {},
              'structure' => {
                'section_level' => 1,
                'section_number' => 1,
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'new-n'
                  },
                  'info' => {},
                  'structure' => {}
                }
              },
              'info' => {},
              'structure' => {
                'section_level' => 1,
                'section_number' => 2,
                'section_prev' => {},
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
$result_sectioning{'end_of_line_command_in_node_lines'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'end_of_line_command_in_node_lines'}{'structure'}{'section_childs'}[0];
$result_sectioning{'end_of_line_command_in_node_lines'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'end_of_line_command_in_node_lines'}{'structure'}{'section_childs'}[0];
$result_sectioning{'end_of_line_command_in_node_lines'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'end_of_line_command_in_node_lines'}{'structure'}{'section_childs'}[0];
$result_sectioning{'end_of_line_command_in_node_lines'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'end_of_line_command_in_node_lines'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'end_of_line_command_in_node_lines'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'end_of_line_command_in_node_lines'}{'structure'}{'section_childs'}[0];
$result_sectioning{'end_of_line_command_in_node_lines'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_prev'} = $result_sectioning{'end_of_line_command_in_node_lines'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'end_of_line_command_in_node_lines'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_up'} = $result_sectioning{'end_of_line_command_in_node_lines'}{'structure'}{'section_childs'}[0];
$result_sectioning{'end_of_line_command_in_node_lines'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'end_of_line_command_in_node_lines'};

$result_nodes{'end_of_line_command_in_node_lines'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'info' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'info' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'isindex' => 1,
        'normalized' => 'chap-f-nl-Something_003f-After-punct'
      },
      'info' => {},
      'structure' => {
        'node_next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {},
              'info' => {},
              'structure' => {
                'section_number' => 2
              }
            },
            'menus' => [
              {
                'cmdname' => 'menu'
              }
            ],
            'normalized' => 'new-n'
          },
          'info' => {},
          'structure' => {
            'menu_child' => {},
            'node_prev' => {},
            'node_up' => {}
          }
        },
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'end_of_line_command_in_node_lines'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'menu_child'} = $result_nodes{'end_of_line_command_in_node_lines'}{'structure'}{'node_next'};
$result_nodes{'end_of_line_command_in_node_lines'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'end_of_line_command_in_node_lines'}{'structure'}{'node_next'};
$result_nodes{'end_of_line_command_in_node_lines'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'end_of_line_command_in_node_lines'};
$result_nodes{'end_of_line_command_in_node_lines'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'end_of_line_command_in_node_lines'};
$result_nodes{'end_of_line_command_in_node_lines'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'end_of_line_command_in_node_lines'};

$result_menus{'end_of_line_command_in_node_lines'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {}
};

$result_errors{'end_of_line_command_in_node_lines'} = [
  {
    'error_line' => 'warning: @menu entry node name `ankh p\' different from anchor name `ankh @* p\'
',
    'file_name' => '',
    'line_nr' => 28,
    'macro' => '',
    'text' => '@menu entry node name `ankh p\' different from anchor name `ankh @* p\'',
    'type' => 'warning'
  }
];


$result_floats{'end_of_line_command_in_node_lines'} = {};


$result_indices_sort_strings{'end_of_line_command_in_node_lines'} = {
  'cp' => [
    'a 
 b'
  ]
};


1;
