use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'menu_entry_name'} = {
  'contents' => [
    {
      'contents' => [
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_name'
                },
                {
                  'parent' => {},
                  'text' => ': ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '('
                    },
                    {
                      'parent' => {},
                      'text' => 'f'
                    },
                    {
                      'parent' => {},
                      'text' => ')'
                    },
                    {
                      'parent' => {},
                      'text' => 'b'
                    },
                    {
                      'parent' => {},
                      'text' => '
',
                      'type' => 'space_at_end_menu_node'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'contents' => [
                    {
                      'contents' => [],
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
                'menu_entry_name' => {},
                'menu_entry_node' => {
                  'manual_content' => [
                    {}
                  ],
                  'node_content' => [
                    {},
                    {}
                  ],
                  'normalized' => 'b'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_name'
                },
                {
                  'parent' => {},
                  'text' => ': ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '('
                    },
                    {
                      'parent' => {},
                      'text' => 'f'
                    },
                    {
                      'parent' => {},
                      'text' => ')'
                    },
                    {
                      'parent' => {},
                      'text' => 'b1.c'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => ',',
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
                'menu_entry_name' => {},
                'menu_entry_node' => {
                  'manual_content' => [
                    {}
                  ],
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'b1_002ec'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_name'
                },
                {
                  'parent' => {},
                  'text' => ': ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '('
                    },
                    {
                      'parent' => {},
                      'text' => 'f'
                    },
                    {
                      'parent' => {},
                      'text' => ')'
                    },
                    {
                      'parent' => {},
                      'text' => 'b2.c'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => ',     ',
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
                'menu_entry_name' => {},
                'menu_entry_node' => {
                  'manual_content' => [
                    {}
                  ],
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'b2_002ec'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_name'
                },
                {
                  'parent' => {},
                  'text' => ': ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '('
                    },
                    {
                      'parent' => {},
                      'text' => 'f'
                    },
                    {
                      'parent' => {},
                      'text' => ')'
                    },
                    {
                      'parent' => {},
                      'text' => 'b3.c'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => ',    ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'd
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
                'menu_entry_name' => {},
                'menu_entry_node' => {
                  'manual_content' => [
                    {}
                  ],
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'b3_002ec'
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_name'
                },
                {
                  'parent' => {},
                  'text' => ': ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '('
                    },
                    {
                      'parent' => {},
                      'text' => 'f'
                    },
                    {
                      'parent' => {},
                      'text' => ')'
                    },
                    {
                      'parent' => {},
                      'text' => 'b1.'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '. ',
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
                'menu_entry_name' => {},
                'menu_entry_node' => {
                  'manual_content' => [
                    {}
                  ],
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'b1_002e'
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
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a '
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_name'
                },
                {
                  'parent' => {},
                  'text' => ': ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '('
                    },
                    {
                      'parent' => {},
                      'text' => 'f'
                    },
                    {
                      'parent' => {},
                      'text' => ')'
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'parent' => {},
                      'text' => 'b2 .'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '.',
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
                'menu_entry_name' => {},
                'menu_entry_node' => {
                  'manual_content' => [
                    {}
                  ],
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'b2-_002e'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
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
                      'text' => 'a.n'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_name'
                },
                {
                  'parent' => {},
                  'text' => ': ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '('
                    },
                    {
                      'parent' => {},
                      'text' => 'f'
                    },
                    {
                      'parent' => {},
                      'text' => ')'
                    },
                    {
                      'parent' => {},
                      'text' => 'b3.'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '.         ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'd
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
                'menu_entry_name' => {},
                'menu_entry_node' => {
                  'manual_content' => [
                    {}
                  ],
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'b3_002e'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_name'
                },
                {
                  'parent' => {},
                  'text' => ': ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '('
                    },
                    {
                      'parent' => {},
                      'text' => 'f'
                    },
                    {
                      'parent' => {},
                      'text' => ')'
                    },
                    {
                      'parent' => {},
                      'text' => 'b1.c'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '.',
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
                'menu_entry_name' => {},
                'menu_entry_node' => {
                  'manual_content' => [
                    {}
                  ],
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'b1_002ec'
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_name'
                },
                {
                  'parent' => {},
                  'text' => ': ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '('
                    },
                    {
                      'parent' => {},
                      'text' => 'f'
                    },
                    {
                      'parent' => {},
                      'text' => ')'
                    },
                    {
                      'parent' => {},
                      'text' => 'b2.c'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '.  ',
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
                'menu_entry_name' => {},
                'menu_entry_node' => {
                  'manual_content' => [
                    {}
                  ],
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'b2_002ec'
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_name'
                },
                {
                  'parent' => {},
                  'text' => ': ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '('
                    },
                    {
                      'parent' => {},
                      'text' => 'f'
                    },
                    {
                      'parent' => {},
                      'text' => ')'
                    },
                    {
                      'parent' => {},
                      'text' => 'b3.c'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '. ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'd
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
                'menu_entry_name' => {},
                'menu_entry_node' => {
                  'manual_content' => [
                    {}
                  ],
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'b3_002ec'
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
            'line_nr' => 1,
            'macro' => ''
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[2]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[3]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[4]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[4]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[4];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[4]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[4];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'menu_entry_name'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'menu_entry_node'}{'manual_content'}[0] = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[1] = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[4];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[3]{'contents'}[2]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[3]{'contents'}[3]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[4]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[5]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[5]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[5]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'menu_entry_name'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'menu_entry_node'}{'manual_content'}[0] = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[3]{'contents'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[3]{'contents'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[3]{'contents'}[2]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[3]{'contents'}[3]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[3]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[4]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[5]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[5]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[5]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'menu_entry_description'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'menu_entry_name'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'menu_entry_node'}{'manual_content'}[0] = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[3]{'contents'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[3]{'contents'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[1]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[2]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[3]{'contents'}[2]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[3]{'contents'}[3]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[3]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[4]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[5]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[5]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[5]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'extra'}{'menu_entry_description'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'extra'}{'menu_entry_name'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'extra'}{'menu_entry_node'}{'manual_content'}[0] = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[3]{'contents'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[3]{'contents'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[1]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[2]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[3]{'contents'}[2]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[3]{'contents'}[3]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[3]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[4]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[5]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[5]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[5]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'extra'}{'menu_entry_description'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'extra'}{'menu_entry_name'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'extra'}{'menu_entry_node'}{'manual_content'}[0] = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[3]{'contents'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[3]{'contents'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[1]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[2]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[3]{'contents'}[2]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[3]{'contents'}[3]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[3]{'contents'}[4]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[3]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[4]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[5]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[5]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[5]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'extra'}{'menu_entry_description'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'extra'}{'menu_entry_name'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'extra'}{'menu_entry_node'}{'manual_content'}[0] = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[3]{'contents'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[3]{'contents'}[4];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[1]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[2]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[3]{'contents'}[2]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[3]{'contents'}[3]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[3]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[4]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[5]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[5]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[5]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'extra'}{'menu_entry_description'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'extra'}{'menu_entry_name'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'extra'}{'menu_entry_node'}{'manual_content'}[0] = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[3]{'contents'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[3]{'contents'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[1]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[2]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[3]{'contents'}[2]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[3]{'contents'}[3]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[3]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[4]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[5]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[5]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[5]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'extra'}{'menu_entry_description'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'extra'}{'menu_entry_name'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'extra'}{'menu_entry_node'}{'manual_content'}[0] = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[3]{'contents'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[3]{'contents'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[1]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[2]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[3]{'contents'}[2]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[3]{'contents'}[3]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[3]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[4]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[5]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[5]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[5]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'extra'}{'menu_entry_description'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'extra'}{'menu_entry_name'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'extra'}{'menu_entry_node'}{'manual_content'}[0] = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[3]{'contents'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[3]{'contents'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[1]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[2]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[3]{'contents'}[2]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[3]{'contents'}[3]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[3]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[4]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[5]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[5]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[5]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'extra'}{'menu_entry_description'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[5];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'extra'}{'menu_entry_name'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'extra'}{'menu_entry_node'}{'manual_content'}[0] = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[3]{'contents'}[1];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[3]{'contents'}[3];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[10];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'}{'contents'}[0];
$result_trees{'menu_entry_name'}{'contents'}[0]{'parent'} = $result_trees{'menu_entry_name'};

$result_texis{'menu_entry_name'} = '@menu
* a: (f)b
* a: (f)b1.c,
* a: (f)b2.c,     
* a: (f)b3.c,    d
* a: (f)b1.. 
* a : (f) b2 ..
* a.n: (f)b3..         d
* a: (f)b1.c.
* a: (f)b2.c.  
* a: (f)b3.c. d
@end menu
';


$result_texts{'menu_entry_name'} = '* a: (f)b
* a: (f)b1.c,
* a: (f)b2.c,     
* a: (f)b3.c,    d
* a: (f)b1.. 
* a : (f) b2 ..
* a.n: (f)b3..         d
* a: (f)b1.c.
* a: (f)b2.c.  
* a: (f)b3.c. d
';

$result_errors{'menu_entry_name'} = [];


$result_floats{'menu_entry_name'} = {};



$result_converted{'plaintext'}->{'menu_entry_name'} = '* Menu:

* a: (f)b
* a: (f)b1.c,
* a: (f)b2.c,
* a: (f)b3.c,    d
* a: (f)b1..
* a : (f) b2 ..
* a.n: (f)b3..         d
* a: (f)b1.c.
* a: (f)b2.c.
* a: (f)b3.c. d
';


$result_converted{'html'}->{'menu_entry_name'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<style type="text/css">
<!--
td.menu-entry-description {vertical-align: top}
td.menu-entry-destination {vertical-align: top}
-->
</style>


</head>

<body lang="en">
<table class="menu" border="0" cellspacing="0">
<tr><td class="menu-entry-destination">&bull; <a href="f.html#b" accesskey="1">a</a>:</td><td>&nbsp;&nbsp;</td><td class="menu-entry-description"></td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="f.html#b1_002ec" accesskey="2">a</a>:</td><td>&nbsp;&nbsp;</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="f.html#b2_002ec" accesskey="3">a</a>:</td><td>&nbsp;&nbsp;</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="f.html#b3_002ec" accesskey="4">a</a>:</td><td>&nbsp;&nbsp;</td><td class="menu-entry-description">d
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="f.html#b1_002e" accesskey="5">a</a>:</td><td>&nbsp;&nbsp;</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="f.html#b2-_002e" accesskey="6">a </a>:</td><td>&nbsp;&nbsp;</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="f.html#b3_002e" accesskey="7">a.n</a>:</td><td>&nbsp;&nbsp;</td><td class="menu-entry-description">d
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="f.html#b1_002ec" accesskey="8">a</a>:</td><td>&nbsp;&nbsp;</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="f.html#b2_002ec" accesskey="9">a</a>:</td><td>&nbsp;&nbsp;</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="f.html#b3_002ec">a</a>:</td><td>&nbsp;&nbsp;</td><td class="menu-entry-description">d
</td></tr>
</table>



</body>
</html>
';

$result_converted_errors{'html'}->{'menu_entry_name'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'menu_entry_name'} = '<menu endspaces=" ">
<menuentry leadingtext="* "><menutitle separator=": ">a</menutitle><menunode>(f)b
</menunode><menudescription><pre xml:space="preserve"></pre></menudescription></menuentry><menuentry leadingtext="* "><menutitle separator=": ">a</menutitle><menunode separator=",">(f)b1.c</menunode><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry leadingtext="* "><menutitle separator=": ">a</menutitle><menunode separator=",     ">(f)b2.c</menunode><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry leadingtext="* "><menutitle separator=": ">a</menutitle><menunode separator=",    ">(f)b3.c</menunode><menudescription><pre xml:space="preserve">d
</pre></menudescription></menuentry><menuentry leadingtext="* "><menutitle separator=": ">a</menutitle><menunode separator=". ">(f)b1.</menunode><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry leadingtext="* "><menutitle separator=": ">a </menutitle><menunode separator=".">(f) b2 .</menunode><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry leadingtext="* "><menutitle separator=": ">a.n</menutitle><menunode separator=".         ">(f)b3.</menunode><menudescription><pre xml:space="preserve">d
</pre></menudescription></menuentry><menuentry leadingtext="* "><menutitle separator=": ">a</menutitle><menunode separator=".">(f)b1.c</menunode><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry leadingtext="* "><menutitle separator=": ">a</menutitle><menunode separator=".  ">(f)b2.c</menunode><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry leadingtext="* "><menutitle separator=": ">a</menutitle><menunode separator=". ">(f)b3.c</menunode><menudescription><pre xml:space="preserve">d
</pre></menudescription></menuentry></menu>
';

1;
