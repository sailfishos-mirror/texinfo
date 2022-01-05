use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'two_footnotes_in_nodes_separate'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'separate'
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
          'cmdname' => 'footnotestyle',
          'extra' => {
            'misc_args' => [
              'separate'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          },
          'parent' => {}
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
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 2,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '2 footnotes in 2 nodes'
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
              'parent' => {},
              'text' => 'A'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Footnote Top/1
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'para2'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'footnote',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
              'parent' => {}
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'B'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Footnote Top/2
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'para2'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'footnote',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              },
              'parent' => {}
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
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 14,
                'macro' => ''
              },
              'parent' => {},
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
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 15,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 13,
            'macro' => ''
          },
          'parent' => {}
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
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 3,
        'macro' => ''
      },
      'parent' => {}
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
            'normalized' => 'chapter'
          }
        ],
        'normalized' => 'chapter',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 17,
        'macro' => ''
      },
      'parent' => {}
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'C'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Footnote chapter/1
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'para2'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'footnote',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 20,
                'macro' => ''
              },
              'parent' => {}
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'D'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Footnote chapter/2
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'para2'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'footnote',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 24,
                'macro' => ''
              },
              'parent' => {}
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
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 18,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[0]{'contents'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'};
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[1]{'args'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[1];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[1]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'};
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'args'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[1];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[1];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[1];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[3];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[3];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[3];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'extra'}{'command'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[1];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[1];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[1];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[1];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[3];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[1];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[3];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[2];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'extra'}{'end_command'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'contents'}[2];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[2]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'};
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[3]{'args'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[3];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[3]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'};
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'args'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[1];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[1];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[1];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[3];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[3];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[3];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4];
$result_trees{'two_footnotes_in_nodes_separate'}{'contents'}[4]{'parent'} = $result_trees{'two_footnotes_in_nodes_separate'};

$result_texis{'two_footnotes_in_nodes_separate'} = '@footnotestyle separate
@node Top
@top 2 footnotes in 2 nodes

A@footnote{Footnote Top/1

para2}

B@footnote{Footnote Top/2

para2}

@menu
* chapter::
@end menu

@node chapter
@chapter chapter

C@footnote{Footnote chapter/1

para2}

D@footnote{Footnote chapter/2

para2}

';


$result_texts{'two_footnotes_in_nodes_separate'} = '2 footnotes in 2 nodes
**********************

A

B

* chapter::

1 chapter
*********

C

D

';

$result_sectioning{'two_footnotes_in_nodes_separate'} = {
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
$result_sectioning{'two_footnotes_in_nodes_separate'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'two_footnotes_in_nodes_separate'}{'structure'}{'section_childs'}[0];
$result_sectioning{'two_footnotes_in_nodes_separate'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'two_footnotes_in_nodes_separate'}{'structure'}{'section_childs'}[0];
$result_sectioning{'two_footnotes_in_nodes_separate'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'two_footnotes_in_nodes_separate'}{'structure'}{'section_childs'}[0];
$result_sectioning{'two_footnotes_in_nodes_separate'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'two_footnotes_in_nodes_separate'};

$result_nodes{'two_footnotes_in_nodes_separate'} = {
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
        'normalized' => 'chapter'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'two_footnotes_in_nodes_separate'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'two_footnotes_in_nodes_separate'};
$result_nodes{'two_footnotes_in_nodes_separate'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'two_footnotes_in_nodes_separate'};
$result_nodes{'two_footnotes_in_nodes_separate'}{'structure'}{'node_next'} = $result_nodes{'two_footnotes_in_nodes_separate'}{'structure'}{'menu_child'};

$result_menus{'two_footnotes_in_nodes_separate'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'chapter'
      },
      'structure' => {
        'menu_up' => {},
        'menu_up_hash' => {
          'Top' => 1
        }
      }
    }
  }
};
$result_menus{'two_footnotes_in_nodes_separate'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'two_footnotes_in_nodes_separate'};

$result_errors{'two_footnotes_in_nodes_separate'} = [];


$result_floats{'two_footnotes_in_nodes_separate'} = {};



$result_converted{'html'}->{'two_footnotes_in_nodes_separate'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>2 footnotes in 2 nodes</title>

<meta name="description" content="2 footnotes in 2 nodes">
<meta name="keywords" content="2 footnotes in 2 nodes">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
a.copiable-anchor {visibility: hidden; text-decoration: none; line-height: 0em}
a.summary-letter {text-decoration: none}
blockquote.indentedblock {margin-right: 0em}
div.center-align {text-align:center}
div.display {margin-left: 3.2em}
div.example {margin-left: 3.2em}
h1.center-align {text-align:center}
h2.center-align {text-align:center}
h3.center-align {text-align:center}
h3.right-align {text-align:right}
h4.center-align {text-align:center}
kbd {font-style: oblique}
kbd.key {font-style: normal}
p.center-align {text-align:center}
p.left-align {text-align:left}
p.right-align {text-align:right}
pre.display {font-family: inherit}
pre.format {font-family: inherit}
pre.menu-comment {font-family: serif}
pre.menu-preformatted {font-family: serif}
span.nolinebreak {white-space: nowrap}
span.roman {font-family: initial; font-weight: normal}
span.sansserif {font-family: sans-serif; font-weight: normal}
span:hover a.copiable-anchor {visibility: visible}
ul.mark-bullet {list-style-type: disc}
ul.no-bullet {list-style: none}
-->
</style>


</head>

<body lang="en">
<div class="top" id="Top">
<div class="header">
<p>
Next: <a href="#chapter" accesskey="n" rel="next">chapter</a> &nbsp; </p>
</div>
<h1 class="top" id="g_t2-footnotes-in-2-nodes">2 footnotes in 2 nodes</h1>

<p>A<a id="DOCF1" href="#FOOT1"><sup>1</sup></a>
</p>
<p>B<a id="DOCF2" href="#FOOT2"><sup>2</sup></a>
</p>

<ul class="section-toc">
<li><a href="#chapter" accesskey="1">chapter</a></li>
</ul>
<hr>
<div class="chapter" id="chapter">
<div class="header">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">2 footnotes in 2 nodes</a>, Up: <a href="#Top" accesskey="u" rel="up">2 footnotes in 2 nodes</a> &nbsp; </p>
</div>
<h2 class="chapter" id="chapter-1">1 chapter</h2>

<p>C<a id="DOCF3" href="#FOOT3"><sup>3</sup></a>
</p>
<p>D<a id="DOCF4" href="#FOOT4"><sup>4</sup></a>
</p>
</div>
</div>
<div class="footnotes_element" id="SEC_Foot">
<div class="header">
<p>
 &nbsp; </p>
</div>
<h4 class="footnotes-heading">Footnotes</h4>

<h5><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>Footnote Top/1
</p>
<p>para2</p>
<h5><a id="FOOT2" href="#DOCF2">(2)</a></h5>
<p>Footnote Top/2
</p>
<p>para2</p>
<h5><a id="FOOT3" href="#DOCF3">(3)</a></h5>
<p>Footnote chapter/1
</p>
<p>para2</p>
<h5><a id="FOOT4" href="#DOCF4">(4)</a></h5>
<p>Footnote chapter/2
</p>
<p>para2</p>
</div>


</body>
</html>
';


$result_converted{'info'}->{'two_footnotes_in_nodes_separate'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapter,  Up: (dir)

2 footnotes in 2 nodes
**********************

A(1) (*note Top-Footnote-1::)

   B(2) (*note Top-Footnote-2::)

* Menu:

* chapter::


File: ,  Node: Top-Footnotes,  Up: Top

   (1) Footnote Top/1

   para2

   (2) Footnote Top/2

   para2


File: ,  Node: chapter,  Prev: Top,  Up: Top

1 chapter
*********

C(1) (*note chapter-Footnote-1::)

   D(2) (*note chapter-Footnote-2::)


File: ,  Node: chapter-Footnotes,  Up: chapter

   (1) Footnote chapter/1

   para2

   (2) Footnote chapter/2

   para2



Tag Table:
Node: Top27
Node: Top-Footnotes211
Ref: Top-Footnote-1253
Ref: Top-Footnote-2286
Node: chapter319
Node: chapter-Footnotes461
Ref: chapter-Footnote-1511
Ref: chapter-Footnote-2548

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'two_footnotes_in_nodes_separate'} = '2 footnotes in 2 nodes
**********************

A(1) (*note Top-Footnote-1::)

   B(2) (*note Top-Footnote-2::)

   (1) Footnote Top/1

   para2

   (2) Footnote Top/2

   para2

1 chapter
*********

C(1) (*note chapter-Footnote-1::)

   D(2) (*note chapter-Footnote-2::)

   (1) Footnote chapter/1

   para2

   (2) Footnote chapter/2

   para2

';


$result_converted{'html_text'}->{'two_footnotes_in_nodes_separate'} = '<div class="top" id="Top">
<div class="header">
<p>
 &nbsp; </p>
</div>
<h1 class="top" id="g_t2-footnotes-in-2-nodes">2 footnotes in 2 nodes</h1>

<p>A<a id="DOCF1" href="#FOOT1"><sup>1</sup></a>
</p>
<p>B<a id="DOCF2" href="#FOOT2"><sup>2</sup></a>
</p>

<ul class="section-toc">
<li><a href="#chapter" accesskey="1">chapter</a></li>
</ul>
<hr>
<div class="chapter" id="chapter">
<div class="header">
<p>
 &nbsp; </p>
</div>
<h2 class="chapter" id="chapter-1">1 chapter</h2>

<p>C<a id="DOCF3" href="#FOOT3"><sup>3</sup></a>
</p>
<p>D<a id="DOCF4" href="#FOOT4"><sup>4</sup></a>
</p>
</div>
</div>
<div class="footnotes_element" id="SEC_Foot">
<div class="header">
<p>
 &nbsp; </p>
</div>
<h4 class="footnotes-heading">Footnotes</h4>

<h5><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>Footnote Top/1
</p>
<p>para2</p>
<h5><a id="FOOT2" href="#DOCF2">(2)</a></h5>
<p>Footnote Top/2
</p>
<p>para2</p>
<h5><a id="FOOT3" href="#DOCF3">(3)</a></h5>
<p>Footnote chapter/1
</p>
<p>para2</p>
<h5><a id="FOOT4" href="#DOCF4">(4)</a></h5>
<p>Footnote chapter/2
</p>
<p>para2</p>
</div>';

1;
