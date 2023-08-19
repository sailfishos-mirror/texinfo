use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'transliterated_split_equivalent_nodes'} = [
  {
    'contents' => [
      {
        'type' => 'before_node_section'
      },
      {
        'args' => [
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
                        'args' => [
                          {
                            'contents' => [
                              {
                                'text' => 'a'
                              }
                            ],
                            'type' => 'following_arg'
                          }
                        ],
                        'cmdname' => '~',
                        'source_info' => {
                          'file_name' => '',
                          'line_nr' => 4,
                          'macro' => ''
                        }
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => '_00e3'
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
                        'text' => 'n'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'n'
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
                  'file_name' => '',
                  'line_nr' => 5,
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
                        'args' => [
                          {
                            'contents' => [
                              {
                                'text' => 'a'
                              }
                            ],
                            'type' => 'following_arg'
                          }
                        ],
                        'cmdname' => '^',
                        'source_info' => {
                          'file_name' => '',
                          'line_nr' => 6,
                          'macro' => ''
                        }
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => '_00e2'
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
                  'line_nr' => 7,
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
          'is_target' => 1,
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
                'args' => [
                  {
                    'contents' => [
                      {
                        'text' => 'a'
                      }
                    ],
                    'type' => 'following_arg'
                  }
                ],
                'cmdname' => '~',
                'source_info' => {
                  'file_name' => '',
                  'line_nr' => 9,
                  'macro' => ''
                }
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
        'extra' => {
          'is_target' => 1,
          'normalized' => '_00e3'
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
                'args' => [
                  {
                    'contents' => [
                      {
                        'text' => 'a'
                      }
                    ],
                    'type' => 'following_arg'
                  }
                ],
                'cmdname' => '~',
                'source_info' => {
                  'file_name' => '',
                  'line_nr' => 10,
                  'macro' => ''
                }
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
          'line_nr' => 10,
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
                'text' => 'n'
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
          }
        ],
        'extra' => {
          'is_target' => 1,
          'normalized' => 'n'
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
                'args' => [
                  {
                    'contents' => [
                      {
                        'text' => 'a'
                      }
                    ],
                    'type' => 'following_arg'
                  }
                ],
                'cmdname' => '^',
                'source_info' => {
                  'file_name' => '',
                  'line_nr' => 14,
                  'macro' => ''
                }
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
        'extra' => {
          'is_target' => 1,
          'normalized' => '_00e2'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 14,
          'macro' => ''
        }
      }
    ],
    'type' => 'unit',
    'unit_command' => {}
  }
];
$result_trees{'transliterated_split_equivalent_nodes'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'transliterated_split_equivalent_nodes'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'transliterated_split_equivalent_nodes'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'transliterated_split_equivalent_nodes'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'transliterated_split_equivalent_nodes'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'transliterated_split_equivalent_nodes'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'transliterated_split_equivalent_nodes'}[0]{'unit_command'} = $result_trees{'transliterated_split_equivalent_nodes'}[0]{'contents'}[1];
$result_trees{'transliterated_split_equivalent_nodes'}[1]{'unit_command'} = $result_trees{'transliterated_split_equivalent_nodes'}[1]{'contents'}[0];
$result_trees{'transliterated_split_equivalent_nodes'}[2]{'unit_command'} = $result_trees{'transliterated_split_equivalent_nodes'}[2]{'contents'}[0];
$result_trees{'transliterated_split_equivalent_nodes'}[3]{'unit_command'} = $result_trees{'transliterated_split_equivalent_nodes'}[3]{'contents'}[0];

$result_texis{'transliterated_split_equivalent_nodes'} = '@node top

@menu
* @~a::
* n::
* @^a::
@end menu

@node @~a
@unnumbered @~a

@node n

@node @^a
';


$result_texts{'transliterated_split_equivalent_nodes'} = '
* a~::
* n::
* a^::

a~
**


';

$result_sectioning{'transliterated_split_equivalent_nodes'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'unnumbered',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => '_00e3'
            },
            'structure' => {
              'associated_unit' => {
                'structure' => {
                  'directions' => {
                    'Back' => {
                      'structure' => {
                        'directions' => {
                          'Forward' => {},
                          'NodeForward' => {},
                          'NodeNext' => {},
                          'This' => {}
                        }
                      },
                      'tree_unit_directions' => {
                        'next' => {}
                      },
                      'type' => 'unit',
                      'unit_command' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'Top'
                        },
                        'structure' => {
                          'associated_unit' => {}
                        }
                      }
                    },
                    'Forward' => {
                      'structure' => {
                        'directions' => {
                          'Back' => {},
                          'FastBack' => {},
                          'Forward' => {
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
                            'tree_unit_directions' => {
                              'prev' => {}
                            },
                            'type' => 'unit',
                            'unit_command' => {
                              'cmdname' => 'node',
                              'extra' => {
                                'normalized' => '_00e2'
                              },
                              'structure' => {
                                'associated_unit' => {}
                              }
                            }
                          },
                          'NodeBack' => {},
                          'NodeForward' => {},
                          'NodeNext' => {},
                          'NodePrev' => {},
                          'NodeUp' => {},
                          'This' => {}
                        }
                      },
                      'tree_unit_directions' => {
                        'next' => {},
                        'prev' => {}
                      },
                      'type' => 'unit',
                      'unit_command' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'n'
                        },
                        'structure' => {
                          'associated_unit' => {}
                        }
                      }
                    },
                    'NodeBack' => {},
                    'NodeForward' => {},
                    'NodeNext' => {},
                    'NodePrev' => {},
                    'NodeUp' => {},
                    'This' => {}
                  }
                },
                'tree_unit_directions' => {
                  'next' => {},
                  'prev' => {}
                },
                'type' => 'unit',
                'unit_command' => {}
              }
            }
          }
        },
        'structure' => {
          'associated_unit' => {},
          'section_level' => 1,
          'section_up' => {}
        }
      }
    ],
    'section_level' => 0
  }
};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'NodeForward'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'NodeNext'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'This'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'}{'unit_command'}{'structure'}{'associated_unit'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeBack'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodePrev'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeUp'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeBack'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeForward'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeNext'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodePrev'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeUp'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'tree_unit_directions'}{'next'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeBack'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodePrev'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeUp'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'unit_command'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'transliterated_split_equivalent_nodes'};

$result_nodes{'transliterated_split_equivalent_nodes'} = {
  'cmdname' => 'node',
  'extra' => {
    'menus' => [
      {
        'cmdname' => 'menu'
      }
    ],
    'normalized' => 'Top'
  },
  'structure' => {
    'associated_unit' => {
      'structure' => {
        'directions' => {
          'Forward' => {
            'structure' => {
              'directions' => {
                'Back' => {},
                'Forward' => {
                  'structure' => {
                    'directions' => {
                      'Back' => {},
                      'FastBack' => {},
                      'Forward' => {
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
                        'tree_unit_directions' => {
                          'prev' => {}
                        },
                        'type' => 'unit',
                        'unit_command' => {
                          'cmdname' => 'node',
                          'extra' => {
                            'normalized' => '_00e2'
                          },
                          'structure' => {
                            'associated_unit' => {},
                            'node_prev' => {
                              'cmdname' => 'node',
                              'extra' => {
                                'normalized' => 'n'
                              },
                              'structure' => {
                                'associated_unit' => {},
                                'node_next' => {},
                                'node_prev' => {
                                  'cmdname' => 'node',
                                  'extra' => {
                                    'associated_section' => {
                                      'cmdname' => 'unnumbered',
                                      'extra' => {},
                                      'structure' => {
                                        'associated_unit' => {}
                                      }
                                    },
                                    'normalized' => '_00e3'
                                  },
                                  'structure' => {
                                    'associated_unit' => {},
                                    'node_next' => {},
                                    'node_prev' => {},
                                    'node_up' => {}
                                  }
                                },
                                'node_up' => {}
                              }
                            },
                            'node_up' => {}
                          }
                        }
                      },
                      'NodeBack' => {},
                      'NodeForward' => {},
                      'NodeNext' => {},
                      'NodePrev' => {},
                      'NodeUp' => {},
                      'This' => {}
                    }
                  },
                  'tree_unit_directions' => {
                    'next' => {},
                    'prev' => {}
                  },
                  'type' => 'unit',
                  'unit_command' => {}
                },
                'NodeBack' => {},
                'NodeForward' => {},
                'NodeNext' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'This' => {}
              }
            },
            'tree_unit_directions' => {
              'next' => {},
              'prev' => {}
            },
            'type' => 'unit',
            'unit_command' => {}
          },
          'NodeForward' => {},
          'NodeNext' => {},
          'This' => {}
        }
      },
      'tree_unit_directions' => {
        'next' => {}
      },
      'type' => 'unit',
      'unit_command' => {}
    },
    'menu_child' => {},
    'node_next' => {}
  }
};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeBack'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodePrev'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeUp'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_prev'}{'structure'}{'associated_unit'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_prev'}{'structure'}{'node_next'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_prev'}{'structure'}{'node_prev'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_prev'}{'structure'}{'node_prev'}{'structure'}{'associated_unit'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_prev'}{'structure'}{'node_prev'}{'structure'}{'node_next'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_prev'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_prev'}{'structure'}{'node_prev'}{'structure'}{'node_prev'} = $result_nodes{'transliterated_split_equivalent_nodes'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_prev'}{'structure'}{'node_prev'}{'structure'}{'node_up'} = $result_nodes{'transliterated_split_equivalent_nodes'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_prev'}{'structure'}{'node_up'} = $result_nodes{'transliterated_split_equivalent_nodes'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_up'} = $result_nodes{'transliterated_split_equivalent_nodes'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeBack'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeForward'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeNext'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodePrev'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeUp'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'tree_unit_directions'}{'next'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_prev'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeBack'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeForward'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeNext'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodePrev'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeUp'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'tree_unit_directions'}{'next'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'unit_command'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_prev'}{'structure'}{'node_prev'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'unit_command'} = $result_nodes{'transliterated_split_equivalent_nodes'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'menu_child'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_prev'}{'structure'}{'node_prev'};
$result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'node_next'} = $result_nodes{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_prev'}{'structure'}{'node_prev'};

$result_menus{'transliterated_split_equivalent_nodes'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'associated_unit' => {
      'structure' => {
        'directions' => {
          'Forward' => {
            'structure' => {
              'directions' => {
                'Back' => {},
                'Forward' => {
                  'structure' => {
                    'directions' => {
                      'Back' => {},
                      'FastBack' => {},
                      'Forward' => {
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
                        'tree_unit_directions' => {
                          'prev' => {}
                        },
                        'type' => 'unit',
                        'unit_command' => {
                          'cmdname' => 'node',
                          'extra' => {
                            'normalized' => '_00e2'
                          },
                          'structure' => {
                            'associated_unit' => {},
                            'menu_prev' => {
                              'cmdname' => 'node',
                              'extra' => {
                                'normalized' => 'n'
                              },
                              'structure' => {
                                'associated_unit' => {},
                                'menu_next' => {},
                                'menu_prev' => {
                                  'cmdname' => 'node',
                                  'extra' => {
                                    'normalized' => '_00e3'
                                  },
                                  'structure' => {
                                    'associated_unit' => {},
                                    'menu_next' => {},
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
                            },
                            'menu_up' => {},
                            'menu_up_hash' => {
                              'Top' => 1
                            }
                          }
                        }
                      },
                      'NodeBack' => {},
                      'NodeForward' => {},
                      'NodeNext' => {},
                      'NodePrev' => {},
                      'NodeUp' => {},
                      'This' => {}
                    }
                  },
                  'tree_unit_directions' => {
                    'next' => {},
                    'prev' => {}
                  },
                  'type' => 'unit',
                  'unit_command' => {}
                },
                'NodeBack' => {},
                'NodeForward' => {},
                'NodeNext' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'This' => {}
              }
            },
            'tree_unit_directions' => {
              'next' => {},
              'prev' => {}
            },
            'type' => 'unit',
            'unit_command' => {}
          },
          'NodeForward' => {},
          'NodeNext' => {},
          'This' => {}
        }
      },
      'tree_unit_directions' => {
        'next' => {}
      },
      'type' => 'unit',
      'unit_command' => {}
    },
    'menu_child' => {}
  }
};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeBack'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodePrev'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeUp'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'associated_unit'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_next'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_prev'}{'structure'}{'associated_unit'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_prev'}{'structure'}{'menu_next'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_prev'}{'structure'}{'menu_up'} = $result_menus{'transliterated_split_equivalent_nodes'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_up'} = $result_menus{'transliterated_split_equivalent_nodes'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_up'} = $result_menus{'transliterated_split_equivalent_nodes'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeBack'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeForward'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeNext'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodePrev'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeUp'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'tree_unit_directions'}{'next'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeBack'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeForward'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeNext'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodePrev'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeUp'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'tree_unit_directions'}{'next'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'unit_command'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_prev'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'unit_command'} = $result_menus{'transliterated_split_equivalent_nodes'};
$result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'menu_child'} = $result_menus{'transliterated_split_equivalent_nodes'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_prev'};

$result_errors{'transliterated_split_equivalent_nodes'} = [];


$result_floats{'transliterated_split_equivalent_nodes'} = {};


$result_elements{'transliterated_split_equivalent_nodes'} = [
  {
    'structure' => {
      'directions' => {
        'Forward' => {
          'structure' => {
            'directions' => {
              'Back' => {},
              'Forward' => {
                'structure' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
                    'Forward' => {
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
                      'type' => 'unit',
                      'unit_command' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => '_00e2'
                        },
                        'structure' => {
                          'associated_unit' => {},
                          'menu_prev' => {
                            'cmdname' => 'node',
                            'extra' => {
                              'normalized' => 'n'
                            },
                            'structure' => {
                              'associated_unit' => {},
                              'menu_next' => {},
                              'menu_prev' => {
                                'cmdname' => 'node',
                                'extra' => {
                                  'normalized' => '_00e3'
                                },
                                'structure' => {
                                  'associated_unit' => {},
                                  'menu_next' => {},
                                  'menu_up' => {
                                    'cmdname' => 'node',
                                    'extra' => {
                                      'normalized' => 'Top'
                                    },
                                    'structure' => {
                                      'associated_unit' => {},
                                      'menu_child' => {}
                                    }
                                  },
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
                          },
                          'menu_up' => {},
                          'menu_up_hash' => {
                            'Top' => 1
                          }
                        }
                      }
                    },
                    'NodeBack' => {},
                    'NodeForward' => {},
                    'NodeNext' => {},
                    'NodePrev' => {},
                    'NodeUp' => {},
                    'This' => {}
                  }
                },
                'type' => 'unit',
                'unit_command' => {}
              },
              'NodeBack' => {},
              'NodeForward' => {},
              'NodeNext' => {},
              'NodePrev' => {},
              'NodeUp' => {},
              'This' => {}
            }
          },
          'type' => 'unit',
          'unit_command' => {}
        },
        'NodeForward' => {},
        'NodeNext' => {},
        'This' => {}
      }
    },
    'type' => 'unit',
    'unit_command' => {}
  },
  {},
  {},
  {}
];
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_elements{'transliterated_split_equivalent_nodes'}[0];
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeBack'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodePrev'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeUp'} = $result_elements{'transliterated_split_equivalent_nodes'}[0];
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'associated_unit'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_next'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_prev'}{'structure'}{'associated_unit'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_prev'}{'structure'}{'menu_next'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_prev'}{'structure'}{'menu_up'}{'structure'}{'associated_unit'} = $result_elements{'transliterated_split_equivalent_nodes'}[0];
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_prev'}{'structure'}{'menu_up'}{'structure'}{'menu_child'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_prev'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_up'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_prev'}{'structure'}{'menu_up'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_up'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_prev'}{'structure'}{'menu_up'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeBack'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeForward'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeNext'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodePrev'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeUp'} = $result_elements{'transliterated_split_equivalent_nodes'}[0];
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeBack'} = $result_elements{'transliterated_split_equivalent_nodes'}[0];
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeForward'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeNext'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodePrev'} = $result_elements{'transliterated_split_equivalent_nodes'}[0];
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeUp'} = $result_elements{'transliterated_split_equivalent_nodes'}[0];
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'unit_command'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_prev'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'NodeForward'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'NodeNext'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'This'} = $result_elements{'transliterated_split_equivalent_nodes'}[0];
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'unit_command'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_prev'}{'structure'}{'menu_up'};
$result_elements{'transliterated_split_equivalent_nodes'}[1] = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[2] = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[3] = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};



$result_directions_text{'transliterated_split_equivalent_nodes'} = 'element: @node top
  Forward: @node @~a
  NodeForward: @node @~a
  NodeNext: @node @~a
  This: @node top
element: @node @~a
  Back: @node top
  Forward: @node n
  NodeBack: @node top
  NodeForward: @node n
  NodeNext: @node n
  NodePrev: @node top
  NodeUp: @node top
  This: @node @~a
element: @node n
  Back: @node @~a
  FastBack: @node @~a
  Forward: @node @^a
  NodeBack: @node @~a
  NodeForward: @node @^a
  NodeNext: @node @^a
  NodePrev: @node @~a
  NodeUp: @node top
  This: @node n
element: @node @^a
  Back: @node n
  FastBack: @node @~a
  NodeBack: @node n
  NodePrev: @node n
  NodeUp: @node top
  This: @node @^a
';

$result_converted_errors{'file_html'}->{'transliterated_split_equivalent_nodes'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'transliterated_split_equivalent_nodes.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
