use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'colons_in_index_entries_and_node_no_quoting'} = {
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
                      'text' => 'One'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'text' => '::'
                            }
                          ],
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'asis',
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 4,
                        'macro' => ''
                      }
                    },
                    {
                      'text' => 'node'
                    },
                    {
                      'args' => [
                        {
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'comma',
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 4,
                        'macro' => ''
                      }
                    },
                    {
                      'text' => ' with entries.'
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
                    {},
                    {},
                    {},
                    {},
                    {}
                  ],
                  'normalized' => 'One_003a_003anode_002c-with-entries_002e'
                }
              },
              'source_info' => {
                'file_name' => '',
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
                      'text' => 'Concept Index'
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
                  'normalized' => 'Concept-Index'
                }
              },
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
                'line_nr' => 6,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => '',
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
      'extra' => {
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
              'text' => 'One'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => '::'
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'asis',
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
            },
            {
              'text' => 'node'
            },
            {
              'args' => [
                {
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'comma',
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
            },
            {
              'text' => ' with entries.'
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
                  'text' => ':'
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
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => ':a'
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
            'file_name' => '',
            'line_nr' => 11,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'b:c'
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
            'file_name' => '',
            'line_nr' => 12,
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
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'example',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'some example just to have text
'
                }
              ],
              'type' => 'preformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'example'
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
                'text_arg' => 'example'
              },
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
          'source_info' => {
            'file_name' => '',
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
              'contents' => [
                {
                  'text' => 'd::e'
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
            'file_name' => '',
            'line_nr' => 18,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'f :d'
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
            'file_name' => '',
            'line_nr' => 19,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'g: h'
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
            'file_name' => '',
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
          'contents' => [
            {
              'text' => 'node one
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
        'nodes_manuals' => [
          {
            'node_content' => [
              {},
              {},
              {},
              {},
              {}
            ],
            'normalized' => 'One_003a_003anode_002c-with-entries_002e'
          }
        ],
        'normalized' => 'One_003a_003anode_002c-with-entries_002e'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 8,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Concept Index'
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
      'extra' => {
        'isindex' => 1,
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Concept-Index'
          }
        ],
        'normalized' => 'Concept-Index'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 24,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_node_label'}{'node_content'}[0] = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_node_label'}{'node_content'}[1] = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_node_label'}{'node_content'}[2] = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_node_label'}{'node_content'}[3] = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_node_label'}{'node_content'}[4] = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[4];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node_label'}{'node_content'}[0] = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'contents'}[1]{'extra'}{'element_node'} = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'contents'}[1];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'contents'}[2]{'extra'}{'element_node'} = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'contents'}[2]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'contents'}[2];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'contents'}[3]{'extra'}{'element_node'} = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'contents'}[3]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'contents'}[3];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'contents'}[7]{'extra'}{'element_node'} = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'contents'}[7]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'contents'}[7];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'contents'}[8]{'extra'}{'element_node'} = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'contents'}[8]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'contents'}[8];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'contents'}[9]{'extra'}{'element_node'} = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'contents'}[9]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'contents'}[9];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'extra'}{'nodes_manuals'}[0]{'node_content'}[1] = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'args'}[0]{'contents'}[1];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'extra'}{'nodes_manuals'}[0]{'node_content'}[2] = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'extra'}{'nodes_manuals'}[0]{'node_content'}[3] = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'args'}[0]{'contents'}[3];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'extra'}{'nodes_manuals'}[0]{'node_content'}[4] = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[2]{'args'}[0]{'contents'}[4];
$result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'colons_in_index_entries_and_node_no_quoting'}{'contents'}[3]{'args'}[0]{'contents'}[0];

$result_texis{'colons_in_index_entries_and_node_no_quoting'} = '@node Top

@menu
* One@asis{::}node@comma{} with entries.::
* Concept Index::
@end menu

@node One@asis{::}node@comma{} with entries.

@cindex :
@cindex :a
@cindex b:c

@example
some example just to have text
@end example

@cindex d::e
@cindex f :d
@cindex g: h

node one

@node Concept Index

@printindex cp

';


$result_texts{'colons_in_index_entries_and_node_no_quoting'} = '
* One::node, with entries.::
* Concept Index::



some example just to have text


node one



';

$result_nodes{'colons_in_index_entries_and_node_no_quoting'} = {
  'cmdname' => 'node',
  'extra' => {
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
        'normalized' => 'One_003a_003anode_002c-with-entries_002e'
      },
      'info' => {},
      'structure' => {
        'node_next' => {
          'cmdname' => 'node',
          'extra' => {
            'isindex' => 1,
            'normalized' => 'Concept-Index'
          },
          'info' => {},
          'structure' => {
            'node_prev' => {},
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
$result_nodes{'colons_in_index_entries_and_node_no_quoting'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'colons_in_index_entries_and_node_no_quoting'}{'structure'}{'menu_child'};
$result_nodes{'colons_in_index_entries_and_node_no_quoting'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'colons_in_index_entries_and_node_no_quoting'};
$result_nodes{'colons_in_index_entries_and_node_no_quoting'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'colons_in_index_entries_and_node_no_quoting'};
$result_nodes{'colons_in_index_entries_and_node_no_quoting'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'colons_in_index_entries_and_node_no_quoting'};
$result_nodes{'colons_in_index_entries_and_node_no_quoting'}{'structure'}{'node_next'} = $result_nodes{'colons_in_index_entries_and_node_no_quoting'}{'structure'}{'menu_child'};

$result_menus{'colons_in_index_entries_and_node_no_quoting'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'One_003a_003anode_002c-with-entries_002e'
      },
      'info' => {},
      'structure' => {
        'menu_next' => {
          'cmdname' => 'node',
          'extra' => {
            'isindex' => 1,
            'normalized' => 'Concept-Index'
          },
          'info' => {},
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
$result_menus{'colons_in_index_entries_and_node_no_quoting'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'colons_in_index_entries_and_node_no_quoting'}{'structure'}{'menu_child'};
$result_menus{'colons_in_index_entries_and_node_no_quoting'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'colons_in_index_entries_and_node_no_quoting'};
$result_menus{'colons_in_index_entries_and_node_no_quoting'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'colons_in_index_entries_and_node_no_quoting'};

$result_errors{'colons_in_index_entries_and_node_no_quoting'} = [];


$result_floats{'colons_in_index_entries_and_node_no_quoting'} = {};


$result_indices_sort_strings{'colons_in_index_entries_and_node_no_quoting'} = {
  'cp' => [
    ':',
    ':a',
    'b:c',
    'd::e',
    'f :d',
    'g: h'
  ]
};


$result_converted_errors{'file_info'}->{'colons_in_index_entries_and_node_no_quoting'} = [
  {
    'error_line' => 'warning: menu entry node name should not contain `:\'
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => 'menu entry node name should not contain `:\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @node name should not contain `,\': One::node, with entries.
',
    'file_name' => '',
    'line_nr' => 8,
    'macro' => '',
    'text' => '@node name should not contain `,\': One::node, with entries.',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node name with index entries should not contain `:\'
',
    'file_name' => '',
    'line_nr' => 8,
    'macro' => '',
    'text' => 'node name with index entries should not contain `:\'',
    'type' => 'warning'
  }
];


1;
