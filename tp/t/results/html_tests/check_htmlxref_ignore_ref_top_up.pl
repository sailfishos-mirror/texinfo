use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'check_htmlxref_ignore_ref_top_up'} = {
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
              'text' => '../there/no_existing_no_manual_direction'
            },
            {
              'parent' => {},
              'text' => ')'
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
              'text' => 'first'
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
            'normalized' => 'Top'
          },
          {
            'manual_content' => [
              {}
            ]
          },
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'first'
          },
          {
            'manual_content' => [
              {}
            ]
          }
        ],
        'normalized' => 'Top',
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
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'b'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'c'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'no_existing_no_manual.info'
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
                'line_nr' => 5,
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'b'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'c'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'no_existing_no_manual.info'
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
                'line_nr' => 6,
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
                'file_name' => '',
                'line_nr' => 9,
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
                      'text' => '('
                    },
                    {
                      'parent' => {},
                      'text' => 'other_no_existing_no_manual'
                    },
                    {
                      'parent' => {},
                      'text' => ')'
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
                  'manual_content' => [
                    {}
                  ]
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
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
                      'text' => 'chapter'
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
                  'normalized' => 'chapter'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
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
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 8,
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
        'line_nr' => 3,
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
          'contents' => [
            {
              'parent' => {},
              'text' => '('
            },
            {
              'parent' => {},
              'text' => 'no_existing_no_manual.info'
            },
            {
              'parent' => {},
              'text' => ')'
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
            'normalized' => 'first'
          },
          {
            'manual_content' => [
              {}
            ]
          }
        ],
        'normalized' => 'first',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
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
              'text' => 'chapter'
            }
          ],
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
              'text' => 'chap_not_existing'
            },
            {
              'parent' => {},
              'text' => ')'
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
              'text' => '('
            },
            {
              'parent' => {},
              'text' => 'dir'
            },
            {
              'parent' => {},
              'text' => ')'
            },
            {
              'parent' => {},
              'text' => 'node in dir'
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
            'normalized' => 'chapter'
          },
          {
            'manual_content' => [
              {}
            ]
          },
          {
            'manual_content' => [
              {}
            ],
            'node_content' => [
              {}
            ],
            'normalized' => 'node-in-dir'
          }
        ],
        'normalized' => 'chapter',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 16,
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
      'contents' => [],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 17,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'};
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[1]{'contents'}[2]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[2];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[3];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[3];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[3]{'contents'}[2]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[3];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'extra'}{'nodes_manuals'}[1]{'manual_content'}[0] = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[1]{'contents'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[2]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'extra'}{'nodes_manuals'}[3]{'manual_content'}[0] = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'args'}[3]{'contents'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[1]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'};
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'args'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[2];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[2];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[1]{'contents'}[2]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[3];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[3];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_node'}{'manual_content'}[0] = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[1]{'contents'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[2];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[2];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[2];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[3]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[3];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[3]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[2];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'extra'}{'menu_entry_description'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[3];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[1]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[3]{'args'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[3];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[2]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'};
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[3]{'args'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[3];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[3]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[3]{'args'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[3]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[3]{'args'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[3]{'args'}[1]{'contents'}[2]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[3]{'args'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[3]{'args'}[1]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[3];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[3];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[3]{'extra'}{'nodes_manuals'}[1]{'manual_content'}[0] = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[3]{'args'}[1]{'contents'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[3]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'};
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[1]{'contents'}[2]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[1]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[2];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[2]{'contents'}[1]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[2];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[2]{'contents'}[2]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[2];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[2]{'contents'}[3]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[2];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[2]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'extra'}{'node_content'}[0] = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'extra'}{'nodes_manuals'}[1]{'manual_content'}[0] = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[1]{'contents'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'extra'}{'nodes_manuals'}[2]{'manual_content'}[0] = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[2]{'contents'}[1];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'args'}[2]{'contents'}[3];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[4]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'};
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[5]{'args'}[0];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[5];
$result_trees{'check_htmlxref_ignore_ref_top_up'}{'contents'}[5]{'parent'} = $result_trees{'check_htmlxref_ignore_ref_top_up'};

$result_texis{'check_htmlxref_ignore_ref_top_up'} = '
@node Top, (../there/no_existing_no_manual_direction), first, (dir)
@top top

@ref{a, b, c, no_existing_no_manual.info}
@ref{a, b, c, no_existing_no_manual.info}

@menu
* first::
* (other_no_existing_no_manual)::
* chapter::
@end menu

@node first, (no_existing_no_manual.info)

@node chapter, (chap_not_existing), (dir)node in dir
@chapter Chapter
';


$result_texts{'check_htmlxref_ignore_ref_top_up'} = '
top
***

a
a

* first::
* (other_no_existing_no_manual)::
* chapter::


1 Chapter
*********
';

$result_sectioning{'check_htmlxref_ignore_ref_top_up'} = {
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
                    'normalized' => 'chapter'
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
$result_sectioning{'check_htmlxref_ignore_ref_top_up'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'check_htmlxref_ignore_ref_top_up'}{'structure'}{'section_childs'}[0];
$result_sectioning{'check_htmlxref_ignore_ref_top_up'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'check_htmlxref_ignore_ref_top_up'}{'structure'}{'section_childs'}[0];
$result_sectioning{'check_htmlxref_ignore_ref_top_up'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'check_htmlxref_ignore_ref_top_up'}{'structure'}{'section_childs'}[0];
$result_sectioning{'check_htmlxref_ignore_ref_top_up'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'check_htmlxref_ignore_ref_top_up'};

$result_nodes{'check_htmlxref_ignore_ref_top_up'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
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
        'normalized' => 'first'
      },
      'structure' => {
        'node_next' => {
          'extra' => {
            'manual_content' => [
              {
                'text' => 'no_existing_no_manual.info'
              }
            ]
          }
        }
      }
    },
    'node_next' => {
      'extra' => {
        'manual_content' => [
          {
            'text' => '../there/no_existing_no_manual_direction'
          }
        ]
      }
    },
    'node_prev' => {},
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
};
$result_nodes{'check_htmlxref_ignore_ref_top_up'}{'structure'}{'node_prev'} = $result_nodes{'check_htmlxref_ignore_ref_top_up'}{'structure'}{'menu_child'};

$result_menus{'check_htmlxref_ignore_ref_top_up'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'first'
      },
      'structure' => {
        'menu_next' => {
          'extra' => {
            'manual_content' => [
              {
                'text' => 'other_no_existing_no_manual'
              }
            ]
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
$result_menus{'check_htmlxref_ignore_ref_top_up'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'check_htmlxref_ignore_ref_top_up'};

$result_errors{'check_htmlxref_ignore_ref_top_up'} = [];


$result_floats{'check_htmlxref_ignore_ref_top_up'} = {};



$result_converted{'html'}->{'check_htmlxref_ignore_ref_top_up'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">


</head>

<body lang="en">

<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="no_existing_no_manual_direction.html#Top" accesskey="n" rel="next">(../there/no_existing_no_manual_direction)</a>, Previous: <a href="#first" accesskey="p" rel="prev">first</a>, Up: (dir) &nbsp; </p>
</div>
<h1 class="top" id="top">top</h1>

<p><a data-manual="no_existing_no_manual.info" href="no_existing_no_manual.html#a">(no_existing_no_manual.info)c</a>
<a data-manual="no_existing_no_manual.info" href="no_existing_no_manual.html#a">(no_existing_no_manual.info)c</a>
</p>

<ul class="mini-toc">
<li><a href="#chapter" accesskey="1">Chapter</a></li>
</ul>
<hr>
<a class="node-id" id="first"></a><div class="nav-panel">
<p>
Next: <a href="no_existing_no_manual.html#Top" accesskey="n" rel="next">(no_existing_no_manual.info)</a> &nbsp; </p>
</div>
<h4 class="node">first</h4>

<hr>
<div class="chapter-level-extent" id="chapter">
<div class="nav-panel">
<p>
Next: <a href="chap_not_existing.html#Top" accesskey="n" rel="next">(chap_not_existing)</a>, Previous: <a href="dir.html#node-in-dir" accesskey="p" rel="prev">(dir)node in dir</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Chapter">1 Chapter</h2>
</div>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'check_htmlxref_ignore_ref_top_up'} = [
  {
    'error_line' => 'warning: no htmlxref.cnf entry found for `../there/no_existing_no_manual_direction\'
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => 'no htmlxref.cnf entry found for `../there/no_existing_no_manual_direction\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no htmlxref.cnf entry found for `no_existing_no_manual.info\'
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => 'no htmlxref.cnf entry found for `no_existing_no_manual.info\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no htmlxref.cnf entry found for `no_existing_no_manual.info\'
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'no htmlxref.cnf entry found for `no_existing_no_manual.info\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no htmlxref.cnf entry found for `no_existing_no_manual.info\'
',
    'file_name' => '',
    'line_nr' => 14,
    'macro' => '',
    'text' => 'no htmlxref.cnf entry found for `no_existing_no_manual.info\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no htmlxref.cnf entry found for `chap_not_existing\'
',
    'file_name' => '',
    'line_nr' => 16,
    'macro' => '',
    'text' => 'no htmlxref.cnf entry found for `chap_not_existing\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no htmlxref.cnf entry found for `dir\'
',
    'file_name' => '',
    'line_nr' => 16,
    'macro' => '',
    'text' => 'no htmlxref.cnf entry found for `dir\'',
    'type' => 'warning'
  }
];


1;
