use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'double_part'} = [
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
        'parent' => {},
        'structure' => {}
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
                        'text' => 'node chapter'
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
                    'normalized' => 'node-chapter'
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
      'first_in_page' => {},
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
                'text' => 'part first'
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
          },
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'Text part first.
'
              }
            ],
            'parent' => {},
            'type' => 'paragraph'
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
      }
    ],
    'extra' => {
      'first_in_page' => {},
      'section' => {},
      'unit_command' => {}
    },
    'structure' => {
      'unit_prev' => {}
    },
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
                'text' => 'part second'
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
            'contents' => [
              {
                'parent' => {},
                'text' => 'Text part second.
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
          'line_nr' => 11,
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
                'text' => 'node chapter'
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
              'normalized' => 'node-chapter'
            }
          ],
          'normalized' => 'node-chapter',
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 14,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {}
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'chapter after 2 parts'
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
          }
        ],
        'extra' => {
          'associated_part' => {},
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 15,
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
      'first_in_page' => {},
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
$result_trees{'double_part'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_part'}[0];
$result_trees{'double_part'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_part'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'double_part'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'double_part'}[0]{'contents'}[1];
$result_trees{'double_part'}[0]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'double_part'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'double_part'}[0]{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'double_part'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'double_part'}[0]{'contents'}[1]{'parent'} = $result_trees{'double_part'}[0];
$result_trees{'double_part'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_part'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'double_part'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'double_part'}[0]{'contents'}[2];
$result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'double_part'}[0]{'contents'}[2];
$result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'double_part'}[0]{'contents'}[2];
$result_trees{'double_part'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'double_part'}[0]{'contents'}[2];
$result_trees{'double_part'}[0]{'contents'}[2]{'parent'} = $result_trees{'double_part'}[0];
$result_trees{'double_part'}[0]{'extra'}{'first_in_page'} = $result_trees{'double_part'}[0];
$result_trees{'double_part'}[0]{'extra'}{'node'} = $result_trees{'double_part'}[0]{'contents'}[1];
$result_trees{'double_part'}[0]{'extra'}{'section'} = $result_trees{'double_part'}[0]{'contents'}[2];
$result_trees{'double_part'}[0]{'extra'}{'unit_command'} = $result_trees{'double_part'}[0]{'contents'}[2];
$result_trees{'double_part'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_part'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'double_part'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'double_part'}[1]{'contents'}[0];
$result_trees{'double_part'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_part'}[1]{'contents'}[0];
$result_trees{'double_part'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'double_part'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'double_part'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'double_part'}[1]{'contents'}[0];
$result_trees{'double_part'}[1]{'contents'}[0]{'parent'} = $result_trees{'double_part'}[1];
$result_trees{'double_part'}[1]{'extra'}{'first_in_page'} = $result_trees{'double_part'}[1];
$result_trees{'double_part'}[1]{'extra'}{'section'} = $result_trees{'double_part'}[1]{'contents'}[0];
$result_trees{'double_part'}[1]{'extra'}{'unit_command'} = $result_trees{'double_part'}[1]{'contents'}[0];
$result_trees{'double_part'}[1]{'structure'}{'unit_prev'} = $result_trees{'double_part'}[0];
$result_trees{'double_part'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_part'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'double_part'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'double_part'}[2]{'contents'}[0];
$result_trees{'double_part'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_part'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'double_part'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_part'}[2]{'contents'}[0];
$result_trees{'double_part'}[2]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'double_part'}[2]{'contents'}[0];
$result_trees{'double_part'}[2]{'contents'}[0]{'parent'} = $result_trees{'double_part'}[2];
$result_trees{'double_part'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_part'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'double_part'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'double_part'}[2]{'contents'}[1];
$result_trees{'double_part'}[2]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'double_part'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'double_part'}[2]{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'double_part'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'double_part'}[2]{'contents'}[1]{'parent'} = $result_trees{'double_part'}[2];
$result_trees{'double_part'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_part'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'double_part'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'double_part'}[2]{'contents'}[2];
$result_trees{'double_part'}[2]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'double_part'}[2]{'contents'}[2];
$result_trees{'double_part'}[2]{'contents'}[2]{'extra'}{'associated_part'} = $result_trees{'double_part'}[2]{'contents'}[0];
$result_trees{'double_part'}[2]{'contents'}[2]{'parent'} = $result_trees{'double_part'}[2];
$result_trees{'double_part'}[2]{'extra'}{'first_in_page'} = $result_trees{'double_part'}[2];
$result_trees{'double_part'}[2]{'extra'}{'node'} = $result_trees{'double_part'}[2]{'contents'}[1];
$result_trees{'double_part'}[2]{'extra'}{'section'} = $result_trees{'double_part'}[2]{'contents'}[2];
$result_trees{'double_part'}[2]{'extra'}{'unit_command'} = $result_trees{'double_part'}[2]{'contents'}[2];
$result_trees{'double_part'}[2]{'structure'}{'unit_prev'} = $result_trees{'double_part'}[1];

$result_texis{'double_part'} = '@node Top
@top top

@menu
* node chapter::
@end menu

@part part first

Text part first.
@part part second
Text part second.

@node node chapter
@chapter chapter after 2 parts

';


$result_texts{'double_part'} = 'top
***

* node chapter::

part first
**********

Text part first.
part second
***********
Text part second.

1 chapter after 2 parts
***********************

';

$result_sectioning{'double_part'} = {
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
            },
            'structure' => {}
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
          'spaces_before_argument' => ' '
        },
        'structure' => {
          'level' => 0,
          'section_prev' => {},
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
                  'normalized' => 'node-chapter',
                  'spaces_before_argument' => ' '
                },
                'structure' => {}
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
$result_sectioning{'double_part'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'double_part'};
$result_sectioning{'double_part'}{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'double_part'}{'structure'}{'section_childs'}[0];
$result_sectioning{'double_part'}{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'double_part'};
$result_sectioning{'double_part'}{'structure'}{'section_childs'}[2]{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'double_part'}{'structure'}{'section_childs'}[2];
$result_sectioning{'double_part'}{'structure'}{'section_childs'}[2]{'extra'}{'part_associated_section'}{'structure'}{'section_up'} = $result_sectioning{'double_part'}{'structure'}{'section_childs'}[2];
$result_sectioning{'double_part'}{'structure'}{'section_childs'}[2]{'extra'}{'part_associated_section'}{'structure'}{'toplevel_prev'} = $result_sectioning{'double_part'}{'structure'}{'section_childs'}[0];
$result_sectioning{'double_part'}{'structure'}{'section_childs'}[2]{'extra'}{'part_associated_section'}{'structure'}{'toplevel_up'} = $result_sectioning{'double_part'}{'structure'}{'section_childs'}[0];
$result_sectioning{'double_part'}{'structure'}{'section_childs'}[2]{'structure'}{'section_childs'}[0] = $result_sectioning{'double_part'}{'structure'}{'section_childs'}[2]{'extra'}{'part_associated_section'};
$result_sectioning{'double_part'}{'structure'}{'section_childs'}[2]{'structure'}{'section_prev'} = $result_sectioning{'double_part'}{'structure'}{'section_childs'}[1];
$result_sectioning{'double_part'}{'structure'}{'section_childs'}[2]{'structure'}{'section_up'} = $result_sectioning{'double_part'};

$result_nodes{'double_part'} = {
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
  'structure' => {
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
        'normalized' => 'node-chapter',
        'spaces_before_argument' => ' '
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'double_part'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'double_part'};
$result_nodes{'double_part'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'double_part'};
$result_nodes{'double_part'}{'structure'}{'node_next'} = $result_nodes{'double_part'}{'structure'}{'menu_child'};

$result_menus{'double_part'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'node-chapter',
        'spaces_before_argument' => ' '
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
$result_menus{'double_part'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'double_part'};

$result_errors{'double_part'} = [
  {
    'error_line' => ':8: warning: no sectioning command associated with @part
',
    'file_name' => '',
    'line_nr' => 8,
    'macro' => '',
    'text' => 'no sectioning command associated with @part',
    'type' => 'warning'
  },
  {
    'error_line' => ':8: warning: @part not empty
',
    'file_name' => '',
    'line_nr' => 8,
    'macro' => '',
    'text' => '@part not empty',
    'type' => 'warning'
  },
  {
    'error_line' => ':11: warning: @part not empty
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => '',
    'text' => '@part not empty',
    'type' => 'warning'
  }
];


$result_floats{'double_part'} = {};


$result_elements{'double_part'} = [
  {
    'extra' => {
      'first_in_page' => {},
      'node' => {
        'cmdname' => 'node',
        'extra' => {
          'normalized' => 'Top',
          'spaces_before_argument' => ' '
        },
        'structure' => {
          'menu_child' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'node-chapter',
              'spaces_before_argument' => ' '
            },
            'structure' => {
              'menu_up' => {},
              'menu_up_hash' => {
                'Top' => 1
              }
            }
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
            'first_in_page' => {},
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
              'Back' => {
                'extra' => {
                  'first_in_page' => {},
                  'section' => {
                    'cmdname' => 'part',
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
                    'Back' => {},
                    'FastForward' => {},
                    'Forward' => {},
                    'Next' => {},
                    'Prev' => {},
                    'This' => {}
                  }
                },
                'type' => 'unit'
              },
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
  {},
  {}
];
$result_elements{'double_part'}[0]{'extra'}{'first_in_page'} = $result_elements{'double_part'}[0];
$result_elements{'double_part'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_elements{'double_part'}[0]{'extra'}{'node'};
$result_elements{'double_part'}[0]{'extra'}{'unit_command'} = $result_elements{'double_part'}[0]{'extra'}{'section'};
$result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'first_in_page'} = $result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'} = $result_elements{'double_part'}[0]{'extra'}{'node'}{'structure'}{'menu_child'};
$result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'first_in_page'} = $result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'} = $result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'section'};
$result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'} = $result_elements{'double_part'}[0];
$result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastForward'} = $result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Forward'} = $result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Next'} = $result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Prev'} = $result_elements{'double_part'}[0];
$result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'This'} = $result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_elements{'double_part'}[0];
$result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodePrev'} = $result_elements{'double_part'}[0];
$result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_elements{'double_part'}[0];
$result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'double_part'}[0]{'structure'}{'directions'}{'Forward'} = $result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'double_part'}[0]{'structure'}{'directions'}{'Next'} = $result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'double_part'}[0]{'structure'}{'directions'}{'NodeForward'} = $result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'double_part'}[0]{'structure'}{'directions'}{'NodeNext'} = $result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'double_part'}[0]{'structure'}{'directions'}{'This'} = $result_elements{'double_part'}[0];
$result_elements{'double_part'}[1] = $result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'double_part'}[2] = $result_elements{'double_part'}[0]{'structure'}{'directions'}{'FastForward'};



$result_directions_text{'double_part'} = 'element: @top top
  FastForward: @chapter chapter after 2 parts
  Forward: @part part first
  Next: @part part first
  NodeForward: @chapter chapter after 2 parts
  NodeNext: @chapter chapter after 2 parts
  This: @top top
element: @part part first
  Back: @top top
  FastForward: @chapter chapter after 2 parts
  Forward: @chapter chapter after 2 parts
  Next: @chapter chapter after 2 parts
  Prev: @top top
  This: @part part first
element: @chapter chapter after 2 parts
  Back: @part part first
  FastBack: @part part first
  NodeBack: @top top
  NodePrev: @top top
  NodeUp: @top top
  This: @chapter chapter after 2 parts
';


$result_converted{'plaintext'}->{'double_part'} = 'top
***

Text part first.
Text part second.

1 chapter after 2 parts
***********************

';


$result_converted{'html'}->{'double_part'} = '<!DOCTYPE html>
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
Next: <a href="#node-chapter" accesskey="n" rel="next">chapter after 2 parts</a> &nbsp; </p>
</div>
<h1 class="top" id="top">top</h1>


</div>
<div class="part" id="part-first">
<h1 class="part">part first</h1>
<hr>

<p>Text part first.
</p><hr>
</div>
<div class="part" id="part-second">
<div class="header">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h1 class="part">part second</h1>
<hr>
<p>Text part second.
</p>
<ul class="section-toc">
<li><a href="#node-chapter" accesskey="1">chapter after 2 parts</a></li>
</ul>
<div class="chapter" id="node-chapter">
<h2 class="chapter" id="chapter-after-2-parts">1 chapter after 2 parts</h2>

</div>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'double_part'} = '<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">node chapter</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<menu endspaces=" ">
<menuentry leadingtext="* "><menunode separator="::">node chapter</menunode><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<part spaces=" "><sectiontitle>part first</sectiontitle>

<para>Text part first.
</para></part>
<part spaces=" "><sectiontitle>part second</sectiontitle>
<para>Text part second.
</para>
<node name="node-chapter" spaces=" "><nodename>node chapter</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chapter after 2 parts</sectiontitle>

</chapter>
</part>
';

1;
