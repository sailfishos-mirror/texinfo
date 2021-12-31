use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'part_chapter_after_top'} = [
  {
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
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 1,
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
                  'line_nr' => 5,
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
                  'line_nr' => 6,
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
              'line_nr' => 4,
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
          'line_nr' => 2,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 0
        }
      }
    ],
    'extra' => {
      'node' => {},
      'section' => {},
      'unit_command' => {}
    },
    'structure' => {},
    'type' => 'unit'
  },
  {
    'contents' => [
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'part'
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
        'cmdname' => 'part',
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
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 8,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 0
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
          'line_nr' => 10,
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
        'contents' => [],
        'extra' => {
          'associated_part' => {},
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 11,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 1,
          'number' => 1
        }
      }
    ],
    'extra' => {
      'node' => {},
      'section' => {},
      'unit_command' => {}
    },
    'structure' => {
      'unit_prev' => {}
    },
    'type' => 'unit'
  }
];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_chapter_after_top'}[0];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[1];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'part_chapter_after_top'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'part_chapter_after_top'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[1]{'parent'} = $result_trees{'part_chapter_after_top'}[0];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2];
$result_trees{'part_chapter_after_top'}[0]{'contents'}[2]{'parent'} = $result_trees{'part_chapter_after_top'}[0];
$result_trees{'part_chapter_after_top'}[0]{'extra'}{'node'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[1];
$result_trees{'part_chapter_after_top'}[0]{'extra'}{'section'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2];
$result_trees{'part_chapter_after_top'}[0]{'extra'}{'unit_command'} = $result_trees{'part_chapter_after_top'}[0]{'contents'}[2];
$result_trees{'part_chapter_after_top'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_chapter_after_top'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'part_chapter_after_top'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'part_chapter_after_top'}[1]{'contents'}[0];
$result_trees{'part_chapter_after_top'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_chapter_after_top'}[1]{'contents'}[0];
$result_trees{'part_chapter_after_top'}[1]{'contents'}[0]{'parent'} = $result_trees{'part_chapter_after_top'}[1];
$result_trees{'part_chapter_after_top'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_chapter_after_top'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'part_chapter_after_top'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'part_chapter_after_top'}[1]{'contents'}[1];
$result_trees{'part_chapter_after_top'}[1]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'part_chapter_after_top'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'part_chapter_after_top'}[1]{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'part_chapter_after_top'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'part_chapter_after_top'}[1]{'contents'}[1]{'parent'} = $result_trees{'part_chapter_after_top'}[1];
$result_trees{'part_chapter_after_top'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_chapter_after_top'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'part_chapter_after_top'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'part_chapter_after_top'}[1]{'contents'}[2];
$result_trees{'part_chapter_after_top'}[1]{'contents'}[2]{'extra'}{'associated_part'} = $result_trees{'part_chapter_after_top'}[1]{'contents'}[0];
$result_trees{'part_chapter_after_top'}[1]{'contents'}[2]{'parent'} = $result_trees{'part_chapter_after_top'}[1];
$result_trees{'part_chapter_after_top'}[1]{'extra'}{'node'} = $result_trees{'part_chapter_after_top'}[1]{'contents'}[1];
$result_trees{'part_chapter_after_top'}[1]{'extra'}{'section'} = $result_trees{'part_chapter_after_top'}[1]{'contents'}[2];
$result_trees{'part_chapter_after_top'}[1]{'extra'}{'unit_command'} = $result_trees{'part_chapter_after_top'}[1]{'contents'}[2];
$result_trees{'part_chapter_after_top'}[1]{'structure'}{'unit_prev'} = $result_trees{'part_chapter_after_top'}[0];

$result_texis{'part_chapter_after_top'} = '@node Top
@top top

@menu
* chapter::
@end menu

@part part

@node chapter
@chapter chapter 
';


$result_texts{'part_chapter_after_top'} = 'top
***

* chapter::

part
****

1 chapter
*********
';

$result_sectioning{'part_chapter_after_top'} = {
  'structure' => {
    'level' => -1,
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top',
              'spaces_before_argument' => ' '
            }
          },
          'spaces_before_argument' => ' '
        },
        'structure' => {
          'level' => 0,
          'section_up' => {}
        }
      },
      {
        'cmdname' => 'part',
        'extra' => {
          'part_associated_section' => {
            'cmdname' => 'chapter',
            'extra' => {
              'associated_node' => {
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'chapter',
                  'spaces_before_argument' => ' '
                }
              },
              'associated_part' => {},
              'spaces_before_argument' => ' '
            },
            'structure' => {
              'level' => 1,
              'number' => 1,
              'section_up' => {},
              'toplevel_prev' => {},
              'toplevel_up' => {}
            }
          },
          'spaces_before_argument' => ' '
        },
        'structure' => {
          'level' => 0,
          'section_childs' => [
            {}
          ],
          'section_prev' => {},
          'section_up' => {}
        }
      }
    ]
  }
};
$result_sectioning{'part_chapter_after_top'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'part_chapter_after_top'};
$result_sectioning{'part_chapter_after_top'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'part_chapter_after_top'}{'structure'}{'section_childs'}[1];
$result_sectioning{'part_chapter_after_top'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'structure'}{'section_up'} = $result_sectioning{'part_chapter_after_top'}{'structure'}{'section_childs'}[1];
$result_sectioning{'part_chapter_after_top'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'structure'}{'toplevel_prev'} = $result_sectioning{'part_chapter_after_top'}{'structure'}{'section_childs'}[0];
$result_sectioning{'part_chapter_after_top'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'structure'}{'toplevel_up'} = $result_sectioning{'part_chapter_after_top'}{'structure'}{'section_childs'}[0];
$result_sectioning{'part_chapter_after_top'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[0] = $result_sectioning{'part_chapter_after_top'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'part_chapter_after_top'}{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'part_chapter_after_top'}{'structure'}{'section_childs'}[0];
$result_sectioning{'part_chapter_after_top'}{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'part_chapter_after_top'};

$result_nodes{'part_chapter_after_top'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'structure' => {
        'level' => 0
      }
    },
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'menu_child' => {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'chapter',
        'extra' => {
          'associated_part' => {
            'cmdname' => 'part',
            'extra' => {
              'spaces_before_argument' => ' '
            },
            'structure' => {
              'level' => 0
            }
          },
          'spaces_before_argument' => ' '
        },
        'structure' => {
          'level' => 1,
          'number' => 1
        }
      },
      'normalized' => 'chapter',
      'spaces_before_argument' => ' '
    },
    'node_prev' => {},
    'node_up' => {}
  },
  'menus' => [
    {
      'cmdname' => 'menu',
      'extra' => {
        'end_command' => {
          'cmdname' => 'end',
          'extra' => {
            'command_argument' => 'menu',
            'spaces_before_argument' => ' ',
            'text_arg' => 'menu'
          }
        }
      }
    }
  ],
  'node_next' => {}
};
$result_nodes{'part_chapter_after_top'}{'menu_child'}{'node_prev'} = $result_nodes{'part_chapter_after_top'};
$result_nodes{'part_chapter_after_top'}{'menu_child'}{'node_up'} = $result_nodes{'part_chapter_after_top'};
$result_nodes{'part_chapter_after_top'}{'node_next'} = $result_nodes{'part_chapter_after_top'}{'menu_child'};

$result_menus{'part_chapter_after_top'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'menu_child' => {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'chapter',
      'spaces_before_argument' => ' '
    },
    'menu_up' => {},
    'menu_up_hash' => {
      'Top' => 1
    }
  }
};
$result_menus{'part_chapter_after_top'}{'menu_child'}{'menu_up'} = $result_menus{'part_chapter_after_top'};

$result_errors{'part_chapter_after_top'} = [];


$result_floats{'part_chapter_after_top'} = {};


$result_elements{'part_chapter_after_top'} = [
  {
    'extra' => {
      'node' => {
        'cmdname' => 'node',
        'extra' => {
          'normalized' => 'Top',
          'spaces_before_argument' => ' '
        },
        'menu_child' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'chapter',
            'spaces_before_argument' => ' '
          },
          'menu_up' => {},
          'menu_up_hash' => {
            'Top' => 1
          }
        }
      },
      'section' => {
        'cmdname' => 'top',
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'structure' => {
          'level' => 0
        }
      },
      'unit_command' => {}
    },
    'structure' => {
      'directions' => {
        'FastForward' => {
          'extra' => {
            'node' => {},
            'section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_part' => {
                  'cmdname' => 'part',
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'structure' => {
                    'level' => 0
                  }
                },
                'spaces_before_argument' => ' '
              },
              'structure' => {
                'level' => 1,
                'number' => 1
              }
            },
            'unit_command' => {}
          },
          'structure' => {
            'directions' => {
              'Back' => {},
              'FastBack' => {},
              'NodeBack' => {},
              'NodePrev' => {},
              'NodeUp' => {},
              'This' => {}
            }
          },
          'type' => 'unit'
        },
        'Forward' => {},
        'Next' => {},
        'NodeForward' => {},
        'NodeNext' => {},
        'This' => {}
      }
    },
    'type' => 'unit'
  },
  {}
];
$result_elements{'part_chapter_after_top'}[0]{'extra'}{'node'}{'menu_child'}{'menu_up'} = $result_elements{'part_chapter_after_top'}[0]{'extra'}{'node'};
$result_elements{'part_chapter_after_top'}[0]{'extra'}{'unit_command'} = $result_elements{'part_chapter_after_top'}[0]{'extra'}{'section'};
$result_elements{'part_chapter_after_top'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'} = $result_elements{'part_chapter_after_top'}[0]{'extra'}{'node'}{'menu_child'};
$result_elements{'part_chapter_after_top'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_elements{'part_chapter_after_top'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_elements{'part_chapter_after_top'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_elements{'part_chapter_after_top'}[0];
$result_elements{'part_chapter_after_top'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'part_chapter_after_top'}[0];
$result_elements{'part_chapter_after_top'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_elements{'part_chapter_after_top'}[0];
$result_elements{'part_chapter_after_top'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodePrev'} = $result_elements{'part_chapter_after_top'}[0];
$result_elements{'part_chapter_after_top'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_elements{'part_chapter_after_top'}[0];
$result_elements{'part_chapter_after_top'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'part_chapter_after_top'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'part_chapter_after_top'}[0]{'structure'}{'directions'}{'Forward'} = $result_elements{'part_chapter_after_top'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'part_chapter_after_top'}[0]{'structure'}{'directions'}{'Next'} = $result_elements{'part_chapter_after_top'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'part_chapter_after_top'}[0]{'structure'}{'directions'}{'NodeForward'} = $result_elements{'part_chapter_after_top'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'part_chapter_after_top'}[0]{'structure'}{'directions'}{'NodeNext'} = $result_elements{'part_chapter_after_top'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'part_chapter_after_top'}[0]{'structure'}{'directions'}{'This'} = $result_elements{'part_chapter_after_top'}[0];
$result_elements{'part_chapter_after_top'}[1] = $result_elements{'part_chapter_after_top'}[0]{'structure'}{'directions'}{'FastForward'};



$result_directions_text{'part_chapter_after_top'} = 'element: @top top
  FastForward: @chapter chapter
  Forward: @chapter chapter
  Next: @chapter chapter
  NodeForward: @chapter chapter
  NodeNext: @chapter chapter
  This: @top top
element: @chapter chapter
  Back: @top top
  FastBack: @top top
  NodeBack: @top top
  NodePrev: @top top
  NodeUp: @top top
  This: @chapter chapter
';


$result_converted{'info'}->{'part_chapter_after_top'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapter,  Up: (dir)

top
***

* Menu:

* chapter::


File: ,  Node: chapter,  Prev: Top,  Up: Top

1 chapter
*********



Tag Table:
Node: Top27
Node: chapter108

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'part_chapter_after_top'} = '<!DOCTYPE html>
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
<h1 class="top" id="top">top</h1>


<hr>
</div>
<div class="part" id="part">
<div class="header">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h1 class="part">part</h1>
<hr>

<ul class="section-toc">
<li><a href="#chapter" accesskey="1">chapter</a></li>
</ul>
<div class="chapter" id="chapter">
<h2 class="chapter" id="chapter-1">1 chapter</h2>
</div>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'part_chapter_after_top'} = '<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<menu endspaces=" ">
<menuentry leadingtext="* "><menunode separator="::">chapter</menunode><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<part spaces=" "><sectiontitle>part</sectiontitle>

<node name="chapter" spaces=" "><nodename>chapter</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chapter </sectiontitle>
</chapter>
</part>
';

1;
