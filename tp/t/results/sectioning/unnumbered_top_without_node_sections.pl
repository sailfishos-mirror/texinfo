use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'unnumbered_top_without_node_sections'} = [
  {
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
        'args' => [
          {
            'contents' => [
              {
                'text' => 'a node'
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
              'manual_content' => [
                {}
              ]
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
        'cmdname' => 'node',
        'extra' => {
          'is_target' => 1,
          'normalized' => 'a-node'
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
                'text' => 'unnumbered'
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
        'cmdname' => 'unnumbered',
        'contents' => [
          {
            'text' => '
',
            'type' => 'empty_line'
          },
          {
            'contents' => [
              {
                'text' => 'in unnumbered
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
      }
    ],
    'type' => 'unit',
    'unit_command' => {}
  },
  {
    'contents' => [
      {
        'args' => [
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
        'cmdname' => 'top',
        'contents' => [
          {
            'contents' => [
              {
                'text' => 'Top section
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
        'extra' => {},
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
    'type' => 'unit',
    'unit_command' => {}
  },
  {
    'contents' => [
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'second'
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
              'manual_content' => [
                {}
              ]
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
        'cmdname' => 'node',
        'extra' => {
          'is_target' => 1,
          'normalized' => 'second'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
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
                'text' => 'Chapter'
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
                'text' => 'Text of chapter
'
              }
            ],
            'type' => 'paragraph'
          }
        ],
        'extra' => {
          'section_number' => 1
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
        }
      }
    ],
    'type' => 'unit',
    'unit_command' => {}
  }
];
$result_trees{'unnumbered_top_without_node_sections'}[0]{'contents'}[1]{'args'}[3]{'extra'}{'manual_content'}[0] = $result_trees{'unnumbered_top_without_node_sections'}[0]{'contents'}[1]{'args'}[3]{'contents'}[1];
$result_trees{'unnumbered_top_without_node_sections'}[0]{'unit_command'} = $result_trees{'unnumbered_top_without_node_sections'}[0]{'contents'}[2];
$result_trees{'unnumbered_top_without_node_sections'}[1]{'unit_command'} = $result_trees{'unnumbered_top_without_node_sections'}[1]{'contents'}[0];
$result_trees{'unnumbered_top_without_node_sections'}[2]{'contents'}[0]{'args'}[3]{'extra'}{'manual_content'}[0] = $result_trees{'unnumbered_top_without_node_sections'}[2]{'contents'}[0]{'args'}[3]{'contents'}[1];
$result_trees{'unnumbered_top_without_node_sections'}[2]{'unit_command'} = $result_trees{'unnumbered_top_without_node_sections'}[2]{'contents'}[1];

$result_texis{'unnumbered_top_without_node_sections'} = '@node a node,,,(dir)
@unnumbered unnumbered

in unnumbered

@top top section
Top section

@node second,,,(dir)
@chapter Chapter

Text of chapter
';


$result_texts{'unnumbered_top_without_node_sections'} = 'unnumbered
**********

in unnumbered

top section
***********
Top section

1 Chapter
*********

Text of chapter
';

$result_sectioning{'unnumbered_top_without_node_sections'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'unnumbered',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'a-node'
            },
            'structure' => {
              'associated_unit' => {
                'directions' => {
                  'FastForward' => {
                    'directions' => {
                      'Back' => {},
                      'FastBack' => {},
                      'FastForward' => {
                        'directions' => {
                          'Back' => {},
                          'FastBack' => {},
                          'NodeUp' => {
                            'extra' => {},
                            'type' => 'external_node'
                          },
                          'Prev' => {},
                          'This' => {}
                        },
                        'tree_unit_directions' => {
                          'prev' => {}
                        },
                        'type' => 'unit',
                        'unit_command' => {
                          'cmdname' => 'chapter',
                          'extra' => {
                            'associated_node' => {
                              'cmdname' => 'node',
                              'extra' => {
                                'normalized' => 'second'
                              },
                              'structure' => {
                                'associated_unit' => {}
                              }
                            },
                            'section_directions' => {
                              'prev' => {
                                'cmdname' => 'top',
                                'extra' => {
                                  'section_directions' => {
                                    'prev' => {},
                                    'up' => {}
                                  },
                                  'section_level' => 1,
                                  'toplevel_directions' => {
                                    'prev' => {}
                                  }
                                },
                                'structure' => {
                                  'associated_unit' => {}
                                }
                              },
                              'up' => {}
                            },
                            'section_level' => 1,
                            'section_number' => 1,
                            'toplevel_directions' => {
                              'prev' => {},
                              'up' => {}
                            }
                          },
                          'structure' => {
                            'associated_unit' => {}
                          }
                        }
                      },
                      'Forward' => {},
                      'Next' => {},
                      'Prev' => {},
                      'This' => {}
                    },
                    'tree_unit_directions' => {
                      'prev' => {}
                    },
                    'type' => 'unit',
                    'unit_command' => {}
                  },
                  'Forward' => {},
                  'Next' => {},
                  'NodeUp' => {
                    'extra' => {},
                    'type' => 'external_node'
                  },
                  'This' => {}
                },
                'tree_unit_directions' => {},
                'type' => 'unit',
                'unit_command' => {}
              }
            }
          },
          'section_directions' => {
            'up' => {}
          },
          'section_level' => 1,
          'toplevel_directions' => {}
        },
        'structure' => {
          'associated_unit' => {}
        }
      },
      {},
      {}
    ],
    'section_directions' => {},
    'section_level' => 0
  },
  'structure' => {}
};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_node'}{'structure'}{'associated_unit'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'unnumbered_top_without_node_sections'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'structure'}{'associated_unit'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'unnumbered_top_without_node_sections'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'Forward'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'Next'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'unit_command'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'unnumbered_top_without_node_sections'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[1] = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[2] = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'};

$result_nodes{'unnumbered_top_without_node_sections'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'unnumbered',
      'extra' => {},
      'structure' => {
        'associated_unit' => {
          'directions' => {
            'FastForward' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'FastForward' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
                    'NodeUp' => {
                      'extra' => {
                        'manual_content' => [
                          {
                            'text' => 'dir'
                          }
                        ]
                      },
                      'type' => 'external_node'
                    },
                    'Prev' => {},
                    'This' => {}
                  },
                  'tree_unit_directions' => {
                    'prev' => {}
                  },
                  'type' => 'unit',
                  'unit_command' => {
                    'cmdname' => 'chapter',
                    'extra' => {
                      'section_number' => 1
                    },
                    'structure' => {
                      'associated_unit' => {}
                    }
                  }
                },
                'Forward' => {},
                'Next' => {},
                'Prev' => {},
                'This' => {}
              },
              'tree_unit_directions' => {
                'next' => {},
                'prev' => {}
              },
              'type' => 'unit',
              'unit_command' => {
                'cmdname' => 'top',
                'extra' => {},
                'structure' => {
                  'associated_unit' => {}
                }
              }
            },
            'Forward' => {},
            'Next' => {},
            'NodeUp' => {
              'extra' => {
                'manual_content' => [
                  {
                    'text' => 'dir'
                  }
                ]
              },
              'type' => 'external_node'
            },
            'This' => {}
          },
          'tree_unit_directions' => {
            'next' => {}
          },
          'type' => 'unit',
          'unit_command' => {}
        }
      }
    },
    'normalized' => 'a-node'
  },
  'structure' => {
    'associated_unit' => {},
    'node_up' => {
      'extra' => {
        'manual_content' => []
      }
    }
  }
};
$result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'Forward'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'Next'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'This'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'unit_command'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'};
$result_nodes{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'unnumbered_top_without_node_sections'}{'structure'}{'node_up'}{'extra'}{'manual_content'} = $result_nodes{'unnumbered_top_without_node_sections'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'NodeUp'}{'extra'}{'manual_content'};

$result_menus{'unnumbered_top_without_node_sections'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'a-node'
  },
  'structure' => {
    'associated_unit' => {
      'directions' => {
        'FastForward' => {
          'directions' => {
            'Back' => {},
            'FastBack' => {},
            'FastForward' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'NodeUp' => {
                  'extra' => {
                    'manual_content' => [
                      {
                        'text' => 'dir'
                      }
                    ]
                  },
                  'type' => 'external_node'
                },
                'Prev' => {},
                'This' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'type' => 'unit',
              'unit_command' => {
                'cmdname' => 'chapter',
                'extra' => {
                  'section_number' => 1
                },
                'structure' => {
                  'associated_unit' => {}
                }
              }
            },
            'Forward' => {},
            'Next' => {},
            'Prev' => {},
            'This' => {}
          },
          'tree_unit_directions' => {
            'next' => {},
            'prev' => {}
          },
          'type' => 'unit',
          'unit_command' => {
            'cmdname' => 'top',
            'extra' => {},
            'structure' => {
              'associated_unit' => {}
            }
          }
        },
        'Forward' => {},
        'Next' => {},
        'NodeUp' => {
          'extra' => {
            'manual_content' => [
              {
                'text' => 'dir'
              }
            ]
          },
          'type' => 'external_node'
        },
        'This' => {}
      },
      'tree_unit_directions' => {
        'next' => {}
      },
      'type' => 'unit',
      'unit_command' => {
        'cmdname' => 'unnumbered',
        'extra' => {},
        'structure' => {
          'associated_unit' => {}
        }
      }
    }
  }
};
$result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'};
$result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'};
$result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'};
$result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'};
$result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'Forward'} = $result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'Next'} = $result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'This'} = $result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'};
$result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'}{'unit_command'}{'structure'}{'associated_unit'} = $result_menus{'unnumbered_top_without_node_sections'}{'structure'}{'associated_unit'};

$result_errors{'unnumbered_top_without_node_sections'} = [
  {
    'error_line' => 'warning: lowering the section level of @top appearing after a lower element
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'lowering the section level of @top appearing after a lower element',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `second\' unreferenced
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => '',
    'text' => 'node `second\' unreferenced',
    'type' => 'warning'
  }
];


$result_floats{'unnumbered_top_without_node_sections'} = {};


$result_elements{'unnumbered_top_without_node_sections'} = [
  {
    'directions' => {
      'FastForward' => {
        'directions' => {
          'Back' => {},
          'FastBack' => {},
          'FastForward' => {
            'directions' => {
              'Back' => {},
              'FastBack' => {},
              'NodeUp' => {
                'extra' => {
                  'manual_content' => [
                    {
                      'text' => 'dir'
                    }
                  ]
                },
                'type' => 'external_node'
              },
              'Prev' => {},
              'This' => {}
            },
            'type' => 'unit',
            'unit_command' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => 1
              },
              'structure' => {
                'associated_unit' => {}
              }
            }
          },
          'Forward' => {},
          'Next' => {},
          'Prev' => {},
          'This' => {}
        },
        'type' => 'unit',
        'unit_command' => {
          'cmdname' => 'top',
          'extra' => {},
          'structure' => {
            'associated_unit' => {}
          }
        }
      },
      'Forward' => {},
      'Next' => {},
      'NodeUp' => {
        'extra' => {
          'manual_content' => [
            {
              'text' => 'dir'
            }
          ]
        },
        'type' => 'external_node'
      },
      'This' => {}
    },
    'type' => 'unit',
    'unit_command' => {
      'cmdname' => 'unnumbered',
      'extra' => {},
      'structure' => {
        'associated_unit' => {}
      }
    }
  },
  {},
  {}
];
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'unnumbered_top_without_node_sections'}[0];
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'unnumbered_top_without_node_sections'}[0];
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_elements{'unnumbered_top_without_node_sections'}[0];
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'Forward'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'Next'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'This'} = $result_elements{'unnumbered_top_without_node_sections'}[0];
$result_elements{'unnumbered_top_without_node_sections'}[0]{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'unnumbered_top_without_node_sections'}[0];
$result_elements{'unnumbered_top_without_node_sections'}[1] = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[2] = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};



$result_directions_text{'unnumbered_top_without_node_sections'} = 'element: @unnumbered unnumbered
  FastForward: @top top section
  Forward: @top top section
  Next: @top top section
  NodeUp: (dir)
  This: @unnumbered unnumbered
element: @top top section
  Back: @unnumbered unnumbered
  FastBack: @unnumbered unnumbered
  FastForward: @chapter Chapter
  Forward: @chapter Chapter
  Next: @chapter Chapter
  Prev: @unnumbered unnumbered
  This: @top top section
element: @chapter Chapter
  Back: @top top section
  FastBack: @top top section
  NodeUp: (dir)
  Prev: @top top section
  This: @chapter Chapter
';


$result_converted{'info'}->{'unnumbered_top_without_node_sections'} = 'This is , produced from .


File: ,  Node: a node,  Up: (dir)

unnumbered
**********

in unnumbered

top section
***********

Top section


File: ,  Node: second,  Up: (dir)

1 Chapter
*********

Text of chapter


Tag Table:
Node: a node27
Node: second140

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'unnumbered_top_without_node_sections'} = [
  {
    'error_line' => 'warning: document without Top node
',
    'text' => 'document without Top node',
    'type' => 'warning'
  }
];



$result_converted{'html'}->{'unnumbered_top_without_node_sections'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top section</title>

<meta name="description" content="top section">
<meta name="keywords" content="top section">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#a-node" rel="start" title="a node">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">
<div class="unnumbered-level-extent" id="a-node">
<div class="nav-panel">
<p>
Up: <a href="dir.html#Top" accesskey="u" rel="up">(dir)</a> &nbsp; </p>
</div>
<h2 class="unnumbered" id="unnumbered"><span>unnumbered<a class="copiable-link" href="#unnumbered"> &para;</a></span></h2>

<p>in unnumbered
</p>
</div>
<div class="unnumbered-level-extent" id="top-section">
<h2 class="unnumbered top-level-set-unnumbered"><span>top section<a class="copiable-link" href="#top-section"> &para;</a></span></h2>
<p>Top section
</p>
<hr>
</div>
<div class="chapter-level-extent" id="second">
<div class="nav-panel">
<p>
Up: <a href="dir.html#Top" accesskey="u" rel="up">(dir)</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>

<p>Text of chapter
</p></div>



</body>
</html>
';


$result_converted{'latex_text'}->{'unnumbered_top_without_node_sections'} = '\\begin{document}
\\chapter*{{unnumbered}}
\\label{anchor:a-node}%

in unnumbered

\\part*{{top section}}
Top section

\\chapter{{Chapter}}
\\label{anchor:second}%

Text of chapter
';

1;
