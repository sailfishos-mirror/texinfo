use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'semi_auto'} = {
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
      'cmdname' => 'top',
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
                      'text' => 'Chap1'
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
                  'normalized' => 'Chap1'
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
                      'text' => 'Section non auto'
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
                  'normalized' => 'Section-non-auto'
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
              'text' => 'Chap1'
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
            'normalized' => 'Chap1'
          }
        ],
        'normalized' => 'Chap1',
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
              'text' => 'Chapter 1'
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
                      'text' => 'Sec in chapter'
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
                  'normalized' => 'Sec-in-chapter'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 13,
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
                'line_nr' => 14,
                'macro' => ''
              }
            }
          ],
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
        'line_nr' => 10,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Sec in chapter'
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
            'normalized' => 'Sec-in-chapter'
          }
        ],
        'normalized' => 'Sec-in-chapter',
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
              'text' => 'Sec in chapter'
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
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 17,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Section non auto'
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
              'text' => 'Chap1'
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
            'normalized' => 'Section-non-auto'
          },
          undef,
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Chap1'
          },
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Section-non-auto',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 19,
        'macro' => ''
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
      'cmdname' => 'section',
      'contents' => [],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 20,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'semi_auto'}{'contents'}[0]{'parent'} = $result_trees{'semi_auto'};
$result_trees{'semi_auto'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[1]{'args'}[0];
$result_trees{'semi_auto'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[1];
$result_trees{'semi_auto'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'semi_auto'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'semi_auto'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[1]{'parent'} = $result_trees{'semi_auto'};
$result_trees{'semi_auto'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2]{'args'}[0];
$result_trees{'semi_auto'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2];
$result_trees{'semi_auto'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'semi_auto'}{'contents'}[2];
$result_trees{'semi_auto'}{'contents'}[2]{'parent'} = $result_trees{'semi_auto'};
$result_trees{'semi_auto'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[3]{'args'}[0];
$result_trees{'semi_auto'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[3];
$result_trees{'semi_auto'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'semi_auto'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'semi_auto'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[3]{'parent'} = $result_trees{'semi_auto'};
$result_trees{'semi_auto'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[4]{'args'}[0];
$result_trees{'semi_auto'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[4];
$result_trees{'semi_auto'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[4];
$result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1];
$result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1];
$result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1];
$result_trees{'semi_auto'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'semi_auto'}{'contents'}[4];
$result_trees{'semi_auto'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'semi_auto'}{'contents'}[4];
$result_trees{'semi_auto'}{'contents'}[4]{'parent'} = $result_trees{'semi_auto'};
$result_trees{'semi_auto'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[5]{'args'}[0];
$result_trees{'semi_auto'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[5];
$result_trees{'semi_auto'}{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'semi_auto'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[5]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'semi_auto'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[5]{'parent'} = $result_trees{'semi_auto'};
$result_trees{'semi_auto'}{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[6]{'args'}[0];
$result_trees{'semi_auto'}{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[6];
$result_trees{'semi_auto'}{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[6];
$result_trees{'semi_auto'}{'contents'}[6]{'parent'} = $result_trees{'semi_auto'};
$result_trees{'semi_auto'}{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[7]{'args'}[0];
$result_trees{'semi_auto'}{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[7];
$result_trees{'semi_auto'}{'contents'}[7]{'args'}[1]{'parent'} = $result_trees{'semi_auto'}{'contents'}[7];
$result_trees{'semi_auto'}{'contents'}[7]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[7]{'args'}[2];
$result_trees{'semi_auto'}{'contents'}[7]{'args'}[2]{'parent'} = $result_trees{'semi_auto'}{'contents'}[7];
$result_trees{'semi_auto'}{'contents'}[7]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[7]{'args'}[3];
$result_trees{'semi_auto'}{'contents'}[7]{'args'}[3]{'parent'} = $result_trees{'semi_auto'}{'contents'}[7];
$result_trees{'semi_auto'}{'contents'}[7]{'extra'}{'node_content'}[0] = $result_trees{'semi_auto'}{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[7]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'semi_auto'}{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[7]{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'semi_auto'}{'contents'}[7]{'args'}[2]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[7]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'semi_auto'}{'contents'}[7]{'args'}[3]{'contents'}[0];
$result_trees{'semi_auto'}{'contents'}[7]{'parent'} = $result_trees{'semi_auto'};
$result_trees{'semi_auto'}{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[8]{'args'}[0];
$result_trees{'semi_auto'}{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'semi_auto'}{'contents'}[8];
$result_trees{'semi_auto'}{'contents'}[8]{'parent'} = $result_trees{'semi_auto'};

$result_texis{'semi_auto'} = '@node Top
@top Top

@menu
* Chap1::
* Section non auto::
@end menu

@node Chap1
@chapter Chapter 1

@menu
* Sec in chapter::
@end menu

@node Sec in chapter
@section Sec in chapter

@node Section non auto,, Chap1, Top
@section Section
';


$result_texts{'semi_auto'} = 'Top
***

* Chap1::
* Section non auto::

1 Chapter 1
***********

* Sec in chapter::

1.1 Sec in chapter
==================

1.2 Section
===========
';

$result_sectioning{'semi_auto'} = {
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
                    'normalized' => 'Chap1'
                  },
                  'structure' => {}
                }
              },
              'structure' => {
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'Sec-in-chapter'
                        },
                        'structure' => {}
                      }
                    },
                    'structure' => {
                      'section_level' => 2,
                      'section_number' => '1.1',
                      'section_up' => {}
                    }
                  },
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'Section-non-auto'
                        },
                        'structure' => {}
                      }
                    },
                    'structure' => {
                      'section_level' => 2,
                      'section_number' => '1.2',
                      'section_prev' => {},
                      'section_up' => {}
                    }
                  }
                ],
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
$result_sectioning{'semi_auto'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'semi_auto'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'semi_auto'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'semi_auto'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'semi_auto'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'semi_auto'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'semi_auto'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'semi_auto'}{'structure'}{'section_childs'}[0];
$result_sectioning{'semi_auto'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'semi_auto'}{'structure'}{'section_childs'}[0];
$result_sectioning{'semi_auto'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'semi_auto'}{'structure'}{'section_childs'}[0];
$result_sectioning{'semi_auto'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'semi_auto'};

$result_nodes{'semi_auto'} = {
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
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'menus' => [
          {
            'cmdname' => 'menu'
          }
        ],
        'normalized' => 'Chap1'
      },
      'structure' => {
        'menu_child' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'section',
              'extra' => {},
              'structure' => {
                'section_number' => '1.1'
              }
            },
            'normalized' => 'Sec-in-chapter'
          },
          'structure' => {
            'node_next' => {
              'cmdname' => 'node',
              'extra' => {
                'associated_section' => {
                  'cmdname' => 'section',
                  'extra' => {},
                  'structure' => {
                    'section_number' => '1.2'
                  }
                },
                'normalized' => 'Section-non-auto'
              },
              'structure' => {
                'node_prev' => {},
                'node_up' => {}
              }
            },
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
$result_nodes{'semi_auto'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'semi_auto'}{'structure'}{'menu_child'};
$result_nodes{'semi_auto'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'semi_auto'};
$result_nodes{'semi_auto'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'semi_auto'}{'structure'}{'menu_child'};
$result_nodes{'semi_auto'}{'structure'}{'menu_child'}{'structure'}{'node_next'} = $result_nodes{'semi_auto'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'};
$result_nodes{'semi_auto'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'semi_auto'};
$result_nodes{'semi_auto'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'semi_auto'};
$result_nodes{'semi_auto'}{'structure'}{'node_next'} = $result_nodes{'semi_auto'}{'structure'}{'menu_child'};

$result_menus{'semi_auto'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'Chap1'
      },
      'structure' => {
        'menu_child' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'Sec-in-chapter'
          },
          'structure' => {
            'menu_up' => {},
            'menu_up_hash' => {
              'Chap1' => 1
            }
          }
        },
        'menu_next' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'Section-non-auto'
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
$result_menus{'semi_auto'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'semi_auto'}{'structure'}{'menu_child'};
$result_menus{'semi_auto'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'semi_auto'}{'structure'}{'menu_child'};
$result_menus{'semi_auto'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'semi_auto'};
$result_menus{'semi_auto'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'semi_auto'};

$result_errors{'semi_auto'} = [
  {
    'error_line' => 'warning: node `Section non auto\' is next for `Chap1\' in menu but not in sectioning
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => '',
    'text' => 'node `Section non auto\' is next for `Chap1\' in menu but not in sectioning',
    'type' => 'warning'
  }
];


$result_floats{'semi_auto'} = {};


1;
