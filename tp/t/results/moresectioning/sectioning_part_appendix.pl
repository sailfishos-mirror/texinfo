use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'sectioning_part_appendix'} = [
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
        'cmdname' => 'top',
        'contents' => [
          {
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
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
                'text' => 'chapter'
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
          }
        ],
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 3,
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
                'text' => 'section'
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
        'cmdname' => 'section',
        'contents' => [
          {
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 5,
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
                'text' => 'subsection'
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
        'cmdname' => 'subsection',
        'contents' => [
          {
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
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
                'text' => 'subsubsection'
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
        'cmdname' => 'subsubsection',
        'contents' => [
          {
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
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
                'text' => 'part'
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
        'cmdname' => 'part',
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
          'line_nr' => 11,
          'macro' => ''
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'chapter in part'
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
          }
        ],
        'extra' => {
          'associated_part' => {}
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 13,
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
                'text' => 'second chapter in part'
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
          }
        ],
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 15,
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
          }
        ],
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 17,
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
                'text' => 'appendix'
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
        'cmdname' => 'appendix',
        'contents' => [
          {
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 19,
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
                'text' => 'appendixsec'
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
        'cmdname' => 'appendixsec',
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 21,
          'macro' => ''
        }
      }
    ],
    'type' => 'unit',
    'unit_command' => {}
  }
];
$result_trees{'sectioning_part_appendix'}[0]{'unit_command'} = $result_trees{'sectioning_part_appendix'}[0]{'contents'}[1];
$result_trees{'sectioning_part_appendix'}[1]{'unit_command'} = $result_trees{'sectioning_part_appendix'}[1]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[2]{'unit_command'} = $result_trees{'sectioning_part_appendix'}[2]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[3]{'unit_command'} = $result_trees{'sectioning_part_appendix'}[3]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[4]{'unit_command'} = $result_trees{'sectioning_part_appendix'}[4]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[5]{'contents'}[1]{'extra'}{'associated_part'} = $result_trees{'sectioning_part_appendix'}[5]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[5]{'unit_command'} = $result_trees{'sectioning_part_appendix'}[5]{'contents'}[1];
$result_trees{'sectioning_part_appendix'}[6]{'unit_command'} = $result_trees{'sectioning_part_appendix'}[6]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[7]{'unit_command'} = $result_trees{'sectioning_part_appendix'}[7]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[8]{'unit_command'} = $result_trees{'sectioning_part_appendix'}[8]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[9]{'unit_command'} = $result_trees{'sectioning_part_appendix'}[9]{'contents'}[0];

$result_texis{'sectioning_part_appendix'} = '@top top

@chapter chapter

@section section

@subsection subsection

@subsubsection subsubsection

@part part

@chapter chapter in part

@chapter second chapter in part

@unnumbered unnumbered

@appendix appendix

@appendixsec appendixsec
';


$result_texts{'sectioning_part_appendix'} = 'top
***

1 chapter
*********

1.1 section
===========

1.1.1 subsection
----------------

1.1.1.1 subsubsection
.....................

part
****

2 chapter in part
*****************

3 second chapter in part
************************

unnumbered
**********

Appendix A appendix
*******************

A.1 appendixsec
===============
';

$result_sectioning{'sectioning_part_appendix'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'structure' => {
          'associated_unit' => {
            'structure' => {
              'directions' => {
                'FastForward' => {
                  'structure' => {
                    'directions' => {
                      'Back' => {},
                      'FastBack' => {},
                      'FastForward' => {
                        'structure' => {
                          'directions' => {
                            'Back' => {
                              'structure' => {
                                'directions' => {
                                  'Back' => {
                                    'structure' => {
                                      'directions' => {
                                        'Back' => {
                                          'structure' => {
                                            'directions' => {
                                              'Back' => {},
                                              'FastBack' => {},
                                              'FastForward' => {},
                                              'Forward' => {},
                                              'This' => {},
                                              'Up' => {}
                                            }
                                          },
                                          'tree_unit_directions' => {
                                            'next' => {},
                                            'prev' => {}
                                          },
                                          'type' => 'unit',
                                          'unit_command' => {
                                            'cmdname' => 'section',
                                            'structure' => {
                                              'associated_unit' => {},
                                              'section_childs' => [
                                                {
                                                  'cmdname' => 'subsection',
                                                  'structure' => {
                                                    'associated_unit' => {},
                                                    'section_childs' => [
                                                      {
                                                        'cmdname' => 'subsubsection',
                                                        'structure' => {
                                                          'associated_unit' => {},
                                                          'section_level' => 4,
                                                          'section_number' => '1.1.1.1',
                                                          'section_up' => {}
                                                        }
                                                      }
                                                    ],
                                                    'section_level' => 3,
                                                    'section_number' => '1.1.1',
                                                    'section_up' => {}
                                                  }
                                                }
                                              ],
                                              'section_level' => 2,
                                              'section_number' => '1.1',
                                              'section_up' => {
                                                'cmdname' => 'chapter',
                                                'structure' => {
                                                  'associated_unit' => {},
                                                  'section_childs' => [
                                                    {}
                                                  ],
                                                  'section_level' => 1,
                                                  'section_number' => 1,
                                                  'section_up' => {},
                                                  'toplevel_prev' => {},
                                                  'toplevel_up' => {}
                                                }
                                              }
                                            }
                                          }
                                        },
                                        'FastBack' => {},
                                        'FastForward' => {},
                                        'Forward' => {},
                                        'This' => {},
                                        'Up' => {}
                                      }
                                    },
                                    'tree_unit_directions' => {
                                      'next' => {},
                                      'prev' => {}
                                    },
                                    'type' => 'unit',
                                    'unit_command' => {}
                                  },
                                  'FastBack' => {},
                                  'FastForward' => {},
                                  'Forward' => {},
                                  'This' => {},
                                  'Up' => {}
                                }
                              },
                              'tree_unit_directions' => {
                                'next' => {},
                                'prev' => {}
                              },
                              'type' => 'unit',
                              'unit_command' => {}
                            },
                            'FastBack' => {},
                            'FastForward' => {
                              'structure' => {
                                'directions' => {
                                  'Back' => {},
                                  'FastBack' => {},
                                  'FastForward' => {
                                    'structure' => {
                                      'directions' => {
                                        'Back' => {},
                                        'FastBack' => {},
                                        'FastForward' => {
                                          'structure' => {
                                            'directions' => {
                                              'Back' => {},
                                              'FastBack' => {},
                                              'Forward' => {
                                                'structure' => {
                                                  'directions' => {
                                                    'Back' => {},
                                                    'FastBack' => {},
                                                    'This' => {},
                                                    'Up' => {}
                                                  }
                                                },
                                                'tree_unit_directions' => {
                                                  'prev' => {}
                                                },
                                                'type' => 'unit',
                                                'unit_command' => {
                                                  'cmdname' => 'appendixsec',
                                                  'structure' => {
                                                    'associated_unit' => {},
                                                    'section_level' => 2,
                                                    'section_number' => 'A.1',
                                                    'section_up' => {
                                                      'cmdname' => 'appendix',
                                                      'structure' => {
                                                        'associated_unit' => {},
                                                        'section_childs' => [
                                                          {}
                                                        ],
                                                        'section_level' => 1,
                                                        'section_number' => 'A',
                                                        'section_prev' => {
                                                          'cmdname' => 'part',
                                                          'extra' => {
                                                            'part_associated_section' => {
                                                              'cmdname' => 'chapter',
                                                              'extra' => {
                                                                'associated_part' => {}
                                                              },
                                                              'structure' => {
                                                                'associated_unit' => {},
                                                                'section_level' => 1,
                                                                'section_number' => 2,
                                                                'section_up' => {},
                                                                'toplevel_prev' => {},
                                                                'toplevel_up' => {}
                                                              }
                                                            }
                                                          },
                                                          'structure' => {
                                                            'associated_unit' => {},
                                                            'section_childs' => [
                                                              {},
                                                              {
                                                                'cmdname' => 'chapter',
                                                                'structure' => {
                                                                  'associated_unit' => {},
                                                                  'section_level' => 1,
                                                                  'section_number' => 3,
                                                                  'section_prev' => {},
                                                                  'section_up' => {},
                                                                  'toplevel_prev' => {},
                                                                  'toplevel_up' => {}
                                                                }
                                                              },
                                                              {
                                                                'cmdname' => 'unnumbered',
                                                                'structure' => {
                                                                  'associated_unit' => {},
                                                                  'section_level' => 1,
                                                                  'section_prev' => {},
                                                                  'section_up' => {},
                                                                  'toplevel_prev' => {},
                                                                  'toplevel_up' => {}
                                                                }
                                                              }
                                                            ],
                                                            'section_level' => 0,
                                                            'section_prev' => {},
                                                            'section_up' => {}
                                                          }
                                                        },
                                                        'section_up' => {},
                                                        'toplevel_prev' => {},
                                                        'toplevel_up' => {}
                                                      }
                                                    }
                                                  }
                                                }
                                              },
                                              'Prev' => {},
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
                                        'Forward' => {},
                                        'Prev' => {},
                                        'This' => {},
                                        'Up' => {}
                                      }
                                    },
                                    'tree_unit_directions' => {
                                      'next' => {},
                                      'prev' => {}
                                    },
                                    'type' => 'unit',
                                    'unit_command' => {}
                                  },
                                  'Forward' => {},
                                  'Next' => {},
                                  'Prev' => {},
                                  'This' => {},
                                  'Up' => {}
                                }
                              },
                              'tree_unit_directions' => {
                                'next' => {},
                                'prev' => {}
                              },
                              'type' => 'unit',
                              'unit_command' => {}
                            },
                            'Forward' => {},
                            'Next' => {},
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
                      'Forward' => {},
                      'This' => {},
                      'Up' => {}
                    }
                  },
                  'tree_unit_directions' => {
                    'next' => {},
                    'prev' => {}
                  },
                  'type' => 'unit',
                  'unit_command' => {}
                },
                'Forward' => {},
                'Next' => {},
                'This' => {}
              }
            },
            'tree_unit_directions' => {
              'next' => {}
            },
            'type' => 'unit',
            'unit_command' => {}
          },
          'section_childs' => [
            {}
          ],
          'section_level' => 0,
          'section_up' => {}
        }
      },
      {},
      {}
    ],
    'section_level' => -1
  }
};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastForward'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'This'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'unit_command'}{'structure'}{'associated_unit'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'unit_command'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'unit_command'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'associated_unit'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_childs'}[0] = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'unit_command'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'toplevel_prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'toplevel_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastForward'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'This'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'unit_command'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'unit_command'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastForward'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'This'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'unit_command'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'associated_unit'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_childs'}[0] = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'extra'}{'part_associated_section'}{'structure'}{'associated_unit'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'extra'}{'part_associated_section'}{'structure'}{'section_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'extra'}{'part_associated_section'}{'structure'}{'toplevel_prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'unit_command'}{'structure'}{'section_up'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'extra'}{'part_associated_section'}{'structure'}{'toplevel_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'structure'}{'associated_unit'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'structure'}{'section_childs'}[0] = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'extra'}{'part_associated_section'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'structure'}{'section_childs'}[1]{'structure'}{'associated_unit'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'extra'}{'part_associated_section'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'extra'}{'part_associated_section'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'structure'}{'section_childs'}[2]{'structure'}{'associated_unit'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'structure'}{'section_childs'}[2]{'structure'}{'section_prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'structure'}{'section_childs'}[1];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'structure'}{'section_childs'}[2]{'structure'}{'section_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'structure'}{'section_childs'}[2]{'structure'}{'toplevel_prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'structure'}{'section_childs'}[1];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'structure'}{'section_childs'}[2]{'structure'}{'toplevel_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'structure'}{'section_prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'structure'}{'section_up'} = $result_sectioning{'sectioning_part_appendix'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_up'} = $result_sectioning{'sectioning_part_appendix'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'toplevel_prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'structure'}{'section_childs'}[2];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'toplevel_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'unit_command'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'unit_command'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'structure'}{'section_childs'}[2];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Next'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'unit_command'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'structure'}{'section_childs'}[1];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Next'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'unit_command'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'}{'extra'}{'part_associated_section'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'unit_command'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'unit_command'}{'structure'}{'section_up'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Next'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'unit_command'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0] = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'unit_command'}{'structure'}{'section_up'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'sectioning_part_appendix'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1] = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'}{'structure'}{'section_prev'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[2] = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'section_up'};

$result_errors{'sectioning_part_appendix'} = [];


$result_floats{'sectioning_part_appendix'} = {};


$result_elements{'sectioning_part_appendix'} = [
  {
    'structure' => {
      'directions' => {
        'FastForward' => {
          'structure' => {
            'directions' => {
              'Back' => {},
              'FastBack' => {},
              'FastForward' => {
                'structure' => {
                  'directions' => {
                    'Back' => {
                      'structure' => {
                        'directions' => {
                          'Back' => {
                            'structure' => {
                              'directions' => {
                                'Back' => {
                                  'structure' => {
                                    'directions' => {
                                      'Back' => {},
                                      'FastBack' => {},
                                      'FastForward' => {},
                                      'Forward' => {},
                                      'This' => {},
                                      'Up' => {}
                                    }
                                  },
                                  'type' => 'unit',
                                  'unit_command' => {
                                    'cmdname' => 'section',
                                    'structure' => {
                                      'associated_unit' => {},
                                      'section_number' => '1.1'
                                    }
                                  }
                                },
                                'FastBack' => {},
                                'FastForward' => {},
                                'Forward' => {},
                                'This' => {},
                                'Up' => {}
                              }
                            },
                            'type' => 'unit',
                            'unit_command' => {
                              'cmdname' => 'subsection',
                              'structure' => {
                                'associated_unit' => {},
                                'section_number' => '1.1.1'
                              }
                            }
                          },
                          'FastBack' => {},
                          'FastForward' => {},
                          'Forward' => {},
                          'This' => {},
                          'Up' => {}
                        }
                      },
                      'type' => 'unit',
                      'unit_command' => {
                        'cmdname' => 'subsubsection',
                        'structure' => {
                          'associated_unit' => {},
                          'section_number' => '1.1.1.1'
                        }
                      }
                    },
                    'FastBack' => {},
                    'FastForward' => {
                      'structure' => {
                        'directions' => {
                          'Back' => {},
                          'FastBack' => {},
                          'FastForward' => {
                            'structure' => {
                              'directions' => {
                                'Back' => {},
                                'FastBack' => {},
                                'FastForward' => {
                                  'structure' => {
                                    'directions' => {
                                      'Back' => {},
                                      'FastBack' => {},
                                      'Forward' => {
                                        'structure' => {
                                          'directions' => {
                                            'Back' => {},
                                            'FastBack' => {},
                                            'This' => {},
                                            'Up' => {}
                                          }
                                        },
                                        'type' => 'unit',
                                        'unit_command' => {
                                          'cmdname' => 'appendixsec',
                                          'structure' => {
                                            'associated_unit' => {},
                                            'section_number' => 'A.1'
                                          }
                                        }
                                      },
                                      'Prev' => {},
                                      'This' => {}
                                    }
                                  },
                                  'type' => 'unit',
                                  'unit_command' => {
                                    'cmdname' => 'appendix',
                                    'structure' => {
                                      'associated_unit' => {},
                                      'section_number' => 'A'
                                    }
                                  }
                                },
                                'Forward' => {},
                                'Prev' => {},
                                'This' => {},
                                'Up' => {}
                              }
                            },
                            'type' => 'unit',
                            'unit_command' => {
                              'cmdname' => 'unnumbered',
                              'structure' => {
                                'associated_unit' => {}
                              }
                            }
                          },
                          'Forward' => {},
                          'Next' => {},
                          'Prev' => {},
                          'This' => {},
                          'Up' => {}
                        }
                      },
                      'type' => 'unit',
                      'unit_command' => {
                        'cmdname' => 'chapter',
                        'structure' => {
                          'associated_unit' => {},
                          'section_number' => 3
                        }
                      }
                    },
                    'Forward' => {},
                    'Next' => {},
                    'This' => {}
                  }
                },
                'type' => 'unit',
                'unit_command' => {
                  'cmdname' => 'chapter',
                  'extra' => {
                    'associated_part' => {
                      'cmdname' => 'part',
                      'extra' => {},
                      'structure' => {
                        'associated_unit' => {}
                      }
                    }
                  },
                  'structure' => {
                    'associated_unit' => {},
                    'section_number' => 2
                  }
                }
              },
              'Forward' => {},
              'This' => {},
              'Up' => {}
            }
          },
          'type' => 'unit',
          'unit_command' => {
            'cmdname' => 'chapter',
            'structure' => {
              'associated_unit' => {},
              'section_number' => 1
            }
          }
        },
        'Forward' => {},
        'Next' => {},
        'This' => {}
      }
    },
    'type' => 'unit',
    'unit_command' => {
      'cmdname' => 'top',
      'structure' => {
        'associated_unit' => {}
      }
    }
  },
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {}
];
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_elements{'sectioning_part_appendix'}[0];
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'sectioning_part_appendix'}[0];
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastForward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Forward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'This'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Up'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastForward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Forward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'This'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Up'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastForward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Forward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'This'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Up'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Up'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Prev'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Prev'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Next'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Prev'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Next'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_elements{'sectioning_part_appendix'}[0];
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'Forward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'Next'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'This'} = $result_elements{'sectioning_part_appendix'}[0];
$result_elements{'sectioning_part_appendix'}[0]{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'sectioning_part_appendix'}[0];
$result_elements{'sectioning_part_appendix'}[1] = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[2] = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[3] = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[4] = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[5] = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[6] = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[7] = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[8] = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[9] = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'};



$result_directions_text{'sectioning_part_appendix'} = 'element: @top top
  FastForward: @chapter chapter
  Forward: @chapter chapter
  Next: @chapter chapter in part
  This: @top top
element: @chapter chapter
  Back: @top top
  FastBack: @top top
  FastForward: @chapter chapter in part
  Forward: @section section
  This: @chapter chapter
  Up: @top top
element: @section section
  Back: @chapter chapter
  FastBack: @chapter chapter
  FastForward: @chapter chapter in part
  Forward: @subsection subsection
  This: @section section
  Up: @chapter chapter
element: @subsection subsection
  Back: @section section
  FastBack: @chapter chapter
  FastForward: @chapter chapter in part
  Forward: @subsubsection subsubsection
  This: @subsection subsection
  Up: @section section
element: @subsubsection subsubsection
  Back: @subsection subsection
  FastBack: @chapter chapter
  FastForward: @chapter chapter in part
  Forward: @chapter chapter in part
  This: @subsubsection subsubsection
  Up: @subsection subsection
element: @chapter chapter in part
  Back: @subsubsection subsubsection
  FastBack: @chapter chapter
  FastForward: @chapter second chapter in part
  Forward: @chapter second chapter in part
  Next: @chapter second chapter in part
  This: @chapter chapter in part
element: @chapter second chapter in part
  Back: @chapter chapter in part
  FastBack: @chapter chapter in part
  FastForward: @unnumbered unnumbered
  Forward: @unnumbered unnumbered
  Next: @unnumbered unnumbered
  Prev: @chapter chapter in part
  This: @chapter second chapter in part
  Up: @chapter chapter in part
element: @unnumbered unnumbered
  Back: @chapter second chapter in part
  FastBack: @chapter second chapter in part
  FastForward: @appendix appendix
  Forward: @appendix appendix
  Prev: @chapter second chapter in part
  This: @unnumbered unnumbered
  Up: @chapter chapter in part
element: @appendix appendix
  Back: @unnumbered unnumbered
  FastBack: @unnumbered unnumbered
  Forward: @appendixsec appendixsec
  Prev: @chapter chapter in part
  This: @appendix appendix
element: @appendixsec appendixsec
  Back: @appendix appendix
  FastBack: @appendix appendix
  This: @appendixsec appendixsec
  Up: @appendix appendix
';


$result_converted{'xml'}->{'sectioning_part_appendix'} = '<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<chapter spaces=" "><sectiontitle>chapter</sectiontitle>

<section spaces=" "><sectiontitle>section</sectiontitle>

<subsection spaces=" "><sectiontitle>subsection</sectiontitle>

<subsubsection spaces=" "><sectiontitle>subsubsection</sectiontitle>

</subsubsection>
</subsection>
</section>
</chapter>
<part spaces=" "><sectiontitle>part</sectiontitle>

<chapter spaces=" "><sectiontitle>chapter in part</sectiontitle>

</chapter>
<chapter spaces=" "><sectiontitle>second chapter in part</sectiontitle>

</chapter>
<unnumbered spaces=" "><sectiontitle>unnumbered</sectiontitle>

</unnumbered>
</part>
<appendix spaces=" "><sectiontitle>appendix</sectiontitle>

<appendixsec spaces=" "><sectiontitle>appendixsec</sectiontitle>
</appendixsec>
</appendix>
';

1;
