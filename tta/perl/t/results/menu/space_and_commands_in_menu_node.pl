use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'space_and_commands_in_menu_node'} = {
  'contents' => [
    {
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
                      'text' => 'chap  b'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'chap-b'
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
                      'text' => 'chap '
                    },
                    {
                      'cmdname' => ':'
                    },
                    {
                      'text' => ' b'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'chap-b'
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
                'line_nr' => 6
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
                      'text' => 'chap b'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'chap-b'
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
                'line_nr' => 7
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
                      'text' => 'chap'
                    },
                    {
                      'cmdname' => ' '
                    },
                    {
                      'cmdname' => ' '
                    },
                    {
                      'text' => 'b'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'chap-b'
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
                'line_nr' => 8
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
                      'text' => 'chap'
                    },
                    {
                      'cmdname' => ' '
                    },
                    {
                      'text' => ' b'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'chap-b'
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
                'line_nr' => 9
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
                      'text' => 'chap '
                    },
                    {
                      'cmdname' => ' '
                    },
                    {
                      'text' => 'b'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'chap-b'
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
                'line_nr' => 10
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
                      'text' => 'label'
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
                      'text' => 'chap '
                    },
                    {
                      'cmdname' => ':'
                    },
                    {
                      'text' => ' b'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'chap-b'
                  },
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
              'source_info' => {
                'line_nr' => 11
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
                      'text' => 'label'
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
                      'text' => 'chap b'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'chap-b'
                  },
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
              'source_info' => {
                'line_nr' => 12
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
                      'text' => 'label'
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
                      'text' => 'chap '
                    },
                    {
                      'cmdname' => ' '
                    },
                    {
                      'cmdname' => ' '
                    },
                    {
                      'text' => 'b'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'chap-b'
                  },
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
              'source_info' => {
                'line_nr' => 13
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
                'line_nr' => 14
              }
            }
          ],
          'source_info' => {
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
                  'text' => 'chap '
                },
                {
                  'cmdname' => ':'
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
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'chap-b'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 16
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
          'type' => 'arguments_line'
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
        'line_nr' => 17
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[3];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'contents'}[0];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'contents'}[1];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'contents'}[2];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[1];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[2];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'contents'}[0];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'contents'}[1];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'contents'}[2];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[3]{'contents'}[0];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[3]{'contents'}[0];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[3]{'contents'}[1];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[3]{'contents'}[2];
$result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'space_and_commands_in_menu_node'}{'contents'}[2]{'contents'}[2]{'contents'}[9]{'contents'}[3]{'contents'}[3];

$result_texis{'space_and_commands_in_menu_node'} = '@node Top
@top top

@menu
* chap  b::
* chap @: b::
* chap b::
* chap@ @ b::
* chap@  b::
* chap @ b::
* label: chap @: b.
* label: chap b.
* label: chap @ @ b.
@end menu

@node chap @: b
@chapter Chap
';


$result_texts{'space_and_commands_in_menu_node'} = 'top
***

* chap  b::
* chap  b::
* chap b::
* chap  b::
* chap  b::
* chap  b::
* label: chap  b.
* label: chap b.
* label: chap   b.

1 Chap
******
';

$result_sectioning{'space_and_commands_in_menu_node'} = {
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
                    'normalized' => 'chap-b'
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
$result_sectioning{'space_and_commands_in_menu_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'space_and_commands_in_menu_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'space_and_commands_in_menu_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'space_and_commands_in_menu_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'space_and_commands_in_menu_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'space_and_commands_in_menu_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'space_and_commands_in_menu_node'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'space_and_commands_in_menu_node'};

$result_nodes{'space_and_commands_in_menu_node'} = [
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
              'next' => {},
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chap-b'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'space_and_commands_in_menu_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'} = $result_nodes{'space_and_commands_in_menu_node'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'space_and_commands_in_menu_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'space_and_commands_in_menu_node'}[0];
$result_nodes{'space_and_commands_in_menu_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'space_and_commands_in_menu_node'}[0];
$result_nodes{'space_and_commands_in_menu_node'}[1] = $result_nodes{'space_and_commands_in_menu_node'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'space_and_commands_in_menu_node'} = [
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
        'next' => {},
        'prev' => {},
        'up' => {}
      },
      'normalized' => 'chap-b'
    }
  }
];
$result_menus{'space_and_commands_in_menu_node'}[1]{'extra'}{'menu_directions'}{'next'} = $result_menus{'space_and_commands_in_menu_node'}[1];
$result_menus{'space_and_commands_in_menu_node'}[1]{'extra'}{'menu_directions'}{'prev'} = $result_menus{'space_and_commands_in_menu_node'}[1];
$result_menus{'space_and_commands_in_menu_node'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'space_and_commands_in_menu_node'}[0];

$result_errors{'space_and_commands_in_menu_node'} = [
  {
    'error_line' => 'warning: @menu entry node name `chap  b\' different from node name `chap @: b\'
',
    'line_nr' => 5,
    'text' => '@menu entry node name `chap  b\' different from node name `chap @: b\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu entry node name `chap b\' different from node name `chap @: b\'
',
    'line_nr' => 7,
    'text' => '@menu entry node name `chap b\' different from node name `chap @: b\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu entry node name `chap@ @ b\' different from node name `chap @: b\'
',
    'line_nr' => 8,
    'text' => '@menu entry node name `chap@ @ b\' different from node name `chap @: b\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu entry node name `chap@  b\' different from node name `chap @: b\'
',
    'line_nr' => 9,
    'text' => '@menu entry node name `chap@  b\' different from node name `chap @: b\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu entry node name `chap @ b\' different from node name `chap @: b\'
',
    'line_nr' => 10,
    'text' => '@menu entry node name `chap @ b\' different from node name `chap @: b\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu entry node name `chap b\' different from node name `chap @: b\'
',
    'line_nr' => 12,
    'text' => '@menu entry node name `chap b\' different from node name `chap @: b\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu entry node name `chap @ @ b\' different from node name `chap @: b\'
',
    'line_nr' => 13,
    'text' => '@menu entry node name `chap @ @ b\' different from node name `chap @: b\'',
    'type' => 'warning'
  }
];


$result_floats{'space_and_commands_in_menu_node'} = {};



$result_converted{'plaintext'}->{'space_and_commands_in_menu_node'} = 'top
***

* Menu:

* chap  b::
* chap  b::
* chap b::
* chap  b::
* chap  b::
* chap  b::
* label: chap  b.
* label: chap b.
* label: chap   b.

1 Chap
******

';


$result_converted{'html'}->{'space_and_commands_in_menu_node'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
td.menu-entry-description {vertical-align: top; padding-left: 1em}
td.menu-entry-destination {vertical-align: top}
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#chap-b" accesskey="n" rel="next">Chap</a> &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="#chap-b" accesskey="1">chap  b</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#chap-b" accesskey="2">chap  b</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#chap-b" accesskey="3">chap b</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#chap-b" accesskey="4">chap&nbsp;&nbsp;b</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#chap-b" accesskey="5">chap&nbsp; b</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#chap-b" accesskey="6">chap &nbsp;b</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#chap-b" accesskey="7">label</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#chap-b" accesskey="8">label</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#chap-b" accesskey="9">label</a>:</td><td class="menu-entry-description">
</td></tr>
</table>

<hr>
<div class="chapter-level-extent" id="chap-b">
<div class="nav-panel">
<p>
Next: <a href="#chap-b" accesskey="n" rel="next">Chap</a>, Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Chap"><span>1 Chap<a class="copiable-link" href="#Chap"> &para;</a></span></h2>
</div>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'space_and_commands_in_menu_node'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap &noeos; b</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>chap  b</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>chap &noeos; b</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>chap b</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>chap<spacecmd type="spc"/><spacecmd type="spc"/>b</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>chap<spacecmd type="spc"/> b</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>chap <spacecmd type="spc"/>b</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menutitle>label</menutitle><menuseparator>: </menuseparator><menunode>chap &noeos; b</menunode><menuseparator>.</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menutitle>label</menutitle><menuseparator>: </menuseparator><menunode>chap b</menunode><menuseparator>.</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menutitle>label</menutitle><menuseparator>: </menuseparator><menunode>chap <spacecmd type="spc"/><spacecmd type="spc"/>b</menunode><menuseparator>.</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<node identifier="chap-b" spaces=" "><nodename>chap &noeos; b</nodename><nodenext automatic="on">chap &noeos; b</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chap</sectiontitle>
</chapter>
';

1;
