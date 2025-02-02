use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'nodes_before_top'} = {
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
                  'text' => 'first'
                }
              ],
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
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            },
            {
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
                'manual_content' => {
                  'contents' => [
                    {}
                  ]
                }
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
                      'text' => 'node in menu before top'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'node-in-menu-before-top'
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
                'line_nr' => 4
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
                'line_nr' => 5
              }
            }
          ],
          'source_info' => {
            'line_nr' => 3
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'first'
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
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'node in menu before top'
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
                  'text' => 'first'
                }
              ],
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => 'first'
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
        'normalized' => 'node-in-menu-before-top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 7
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
                  'text' => 'Top'
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
                  'text' => 'first'
                }
              ],
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => 'first'
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
        'line_nr' => 9
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
                  'text' => 'top section'
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
                      'text' => 'second node'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'second-node'
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
            'line_nr' => 12
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
                  'text' => 'second node'
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
        'normalized' => 'second-node'
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
                  'text' => 'a chapter'
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
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[0]{'contents'}[3]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'nodes_before_top'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[0]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'nodes_before_top'}{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[0]{'contents'}[2]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'nodes_before_top'}{'contents'}[3]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'nodes_before_top'}{'contents'}[4]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];

$result_texis{'nodes_before_top'} = '@node first, Top, ,(dir)

@menu
* node in menu before top::
@end menu

@node node in menu before top,,,first

@node Top,,first
@top top section 

@menu
* second node::
@end menu

@node second node
@chapter a chapter
';


$result_texts{'nodes_before_top'} = '
* node in menu before top::


top section
***********

* second node::

1 a chapter
***********
';

$result_sectioning{'nodes_before_top'} = {
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
                    'normalized' => 'second-node'
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
$result_sectioning{'nodes_before_top'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'nodes_before_top'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodes_before_top'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'nodes_before_top'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodes_before_top'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'nodes_before_top'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodes_before_top'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'nodes_before_top'};

$result_nodes{'nodes_before_top'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'top',
              'extra' => {}
            },
            'node_directions' => {
              'prev' => {}
            },
            'normalized' => 'Top'
          }
        },
        'up' => {
          'extra' => {
            'manual_content' => {}
          },
          'type' => 'line_arg'
        }
      },
      'normalized' => 'first'
    }
  },
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'up' => {}
      },
      'normalized' => 'node-in-menu-before-top'
    }
  },
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'chapter',
        'extra' => {
          'section_number' => '1'
        }
      },
      'node_directions' => {
        'up' => {}
      },
      'normalized' => 'second-node'
    }
  }
];
$result_nodes{'nodes_before_top'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'nodes_before_top'}[0];
$result_nodes{'nodes_before_top'}[1]{'extra'}{'node_directions'}{'up'} = $result_nodes{'nodes_before_top'}[0];
$result_nodes{'nodes_before_top'}[2] = $result_nodes{'nodes_before_top'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodes_before_top'}[3]{'extra'}{'node_directions'}{'up'} = $result_nodes{'nodes_before_top'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'nodes_before_top'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'first'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'up' => {}
      },
      'normalized' => 'node-in-menu-before-top'
    }
  },
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
        'up' => {}
      },
      'normalized' => 'second-node'
    }
  }
];
$result_menus{'nodes_before_top'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'nodes_before_top'}[0];
$result_menus{'nodes_before_top'}[3]{'extra'}{'menu_directions'}{'up'} = $result_menus{'nodes_before_top'}[2];

$result_errors{'nodes_before_top'} = [
  {
    'error_line' => 'warning: node `first\' not in menu
',
    'line_nr' => 1,
    'text' => 'node `first\' not in menu',
    'type' => 'warning'
  }
];


$result_floats{'nodes_before_top'} = {};



$result_converted{'latex_text'}->{'nodes_before_top'} = '\\begin{document}
\\label{anchor:first}%


\\label{anchor:node-in-menu-before-top}%

\\label{anchor:Top}%
\\chapter{{a chapter}}
\\label{anchor:second-node}%
';

1;
