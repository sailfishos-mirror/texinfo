use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'chapter_sections'} = [
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
                'text' => 'unnumbered'
              }
            ],
            'info' => {
              'spaces_after_argument' => '
'
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
          'spaces_before_argument' => ' '
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 1,
          'macro' => ''
        }
      }
    ],
    'extra' => {
      'unit_command' => {}
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
                'text' => 'First chapter'
              }
            ],
            'info' => {
              'spaces_after_argument' => '
'
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
        'extra' => {},
        'info' => {
          'spaces_before_argument' => ' '
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 3,
          'macro' => ''
        }
      }
    ],
    'extra' => {
      'unit_command' => {}
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
                'text' => 'second'
              }
            ],
            'info' => {
              'spaces_after_argument' => '
'
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
        'extra' => {},
        'info' => {
          'spaces_before_argument' => ' '
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 5,
          'macro' => ''
        }
      }
    ],
    'extra' => {
      'unit_command' => {}
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
                'text' => 'Chapter'
              }
            ],
            'info' => {
              'spaces_after_argument' => '
'
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
        'extra' => {},
        'info' => {
          'spaces_before_argument' => ' '
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 7,
          'macro' => ''
        }
      }
    ],
    'extra' => {
      'unit_command' => {}
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
                'text' => 'Section of chapter'
              }
            ],
            'info' => {
              'spaces_after_argument' => '
'
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
        'extra' => {},
        'info' => {
          'spaces_before_argument' => ' '
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 9,
          'macro' => ''
        }
      }
    ],
    'extra' => {
      'unit_command' => {}
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
                'text' => 'subsection 1'
              }
            ],
            'info' => {
              'spaces_after_argument' => '
'
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
        'extra' => {},
        'info' => {
          'spaces_before_argument' => ' '
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 11,
          'macro' => ''
        }
      }
    ],
    'extra' => {
      'unit_command' => {}
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
                'text' => 'subsection 2'
              }
            ],
            'info' => {
              'spaces_after_argument' => '
'
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
        'extra' => {},
        'info' => {
          'spaces_before_argument' => ' '
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 13,
          'macro' => ''
        }
      }
    ],
    'extra' => {
      'unit_command' => {}
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
                'text' => 'Chapter 2'
              }
            ],
            'info' => {
              'spaces_after_argument' => '
'
            },
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'chapter',
        'extra' => {},
        'info' => {
          'spaces_before_argument' => ' '
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 15,
          'macro' => ''
        }
      }
    ],
    'extra' => {
      'unit_command' => {}
    },
    'type' => 'unit'
  }
];
$result_trees{'chapter_sections'}[0]{'extra'}{'unit_command'} = $result_trees{'chapter_sections'}[0]{'contents'}[1];
$result_trees{'chapter_sections'}[1]{'extra'}{'unit_command'} = $result_trees{'chapter_sections'}[1]{'contents'}[0];
$result_trees{'chapter_sections'}[2]{'extra'}{'unit_command'} = $result_trees{'chapter_sections'}[2]{'contents'}[0];
$result_trees{'chapter_sections'}[3]{'extra'}{'unit_command'} = $result_trees{'chapter_sections'}[3]{'contents'}[0];
$result_trees{'chapter_sections'}[4]{'extra'}{'unit_command'} = $result_trees{'chapter_sections'}[4]{'contents'}[0];
$result_trees{'chapter_sections'}[5]{'extra'}{'unit_command'} = $result_trees{'chapter_sections'}[5]{'contents'}[0];
$result_trees{'chapter_sections'}[6]{'extra'}{'unit_command'} = $result_trees{'chapter_sections'}[6]{'contents'}[0];
$result_trees{'chapter_sections'}[7]{'extra'}{'unit_command'} = $result_trees{'chapter_sections'}[7]{'contents'}[0];

$result_texis{'chapter_sections'} = '@unnumbered unnumbered

@chapter First chapter

@section second

@chapter Chapter

@section Section of chapter

@subsection subsection 1

@subsection subsection 2

@chapter Chapter 2
';


$result_texts{'chapter_sections'} = 'unnumbered
**********

1 First chapter
***************

1.1 second
==========

2 Chapter
*********

2.1 Section of chapter
======================

2.1.1 subsection 1
------------------

2.1.2 subsection 2
------------------

3 Chapter 2
***********
';

$result_sectioning{'chapter_sections'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'unnumbered',
        'extra' => {},
        'info' => {},
        'structure' => {
          'associated_unit' => {
            'extra' => {
              'unit_command' => {}
            },
            'structure' => {
              'directions' => {
                'FastForward' => {
                  'extra' => {
                    'unit_command' => {
                      'cmdname' => 'chapter',
                      'extra' => {},
                      'info' => {},
                      'structure' => {
                        'associated_unit' => {},
                        'section_childs' => [
                          {
                            'cmdname' => 'section',
                            'extra' => {},
                            'info' => {},
                            'structure' => {
                              'associated_unit' => {
                                'extra' => {
                                  'unit_command' => {}
                                },
                                'structure' => {
                                  'directions' => {
                                    'Back' => {},
                                    'FastBack' => {},
                                    'FastForward' => {
                                      'extra' => {
                                        'unit_command' => {
                                          'cmdname' => 'chapter',
                                          'extra' => {},
                                          'info' => {},
                                          'structure' => {
                                            'associated_unit' => {},
                                            'section_childs' => [
                                              {
                                                'cmdname' => 'section',
                                                'extra' => {},
                                                'info' => {},
                                                'structure' => {
                                                  'associated_unit' => {
                                                    'extra' => {
                                                      'unit_command' => {}
                                                    },
                                                    'structure' => {
                                                      'directions' => {
                                                        'Back' => {},
                                                        'FastBack' => {},
                                                        'FastForward' => {
                                                          'extra' => {
                                                            'unit_command' => {
                                                              'cmdname' => 'chapter',
                                                              'extra' => {},
                                                              'info' => {},
                                                              'structure' => {
                                                                'associated_unit' => {},
                                                                'section_level' => 1,
                                                                'section_number' => 3,
                                                                'section_prev' => {},
                                                                'section_up' => {},
                                                                'toplevel_prev' => {}
                                                              }
                                                            }
                                                          },
                                                          'structure' => {
                                                            'directions' => {
                                                              'Back' => {
                                                                'extra' => {
                                                                  'unit_command' => {
                                                                    'cmdname' => 'subsection',
                                                                    'extra' => {},
                                                                    'info' => {},
                                                                    'structure' => {
                                                                      'associated_unit' => {},
                                                                      'section_level' => 3,
                                                                      'section_number' => '2.1.2',
                                                                      'section_prev' => {
                                                                        'cmdname' => 'subsection',
                                                                        'extra' => {},
                                                                        'info' => {},
                                                                        'structure' => {
                                                                          'associated_unit' => {
                                                                            'extra' => {
                                                                              'unit_command' => {}
                                                                            },
                                                                            'structure' => {
                                                                              'directions' => {
                                                                                'Back' => {},
                                                                                'FastBack' => {},
                                                                                'FastForward' => {},
                                                                                'Forward' => {},
                                                                                'Next' => {},
                                                                                'This' => {},
                                                                                'Up' => {}
                                                                              },
                                                                              'unit_next' => {},
                                                                              'unit_prev' => {}
                                                                            },
                                                                            'type' => 'unit'
                                                                          },
                                                                          'section_level' => 3,
                                                                          'section_number' => '2.1.1',
                                                                          'section_up' => {}
                                                                        }
                                                                      },
                                                                      'section_up' => {}
                                                                    }
                                                                  }
                                                                },
                                                                'structure' => {
                                                                  'directions' => {
                                                                    'Back' => {},
                                                                    'FastBack' => {},
                                                                    'FastForward' => {},
                                                                    'Forward' => {},
                                                                    'Prev' => {},
                                                                    'This' => {},
                                                                    'Up' => {}
                                                                  },
                                                                  'unit_next' => {},
                                                                  'unit_prev' => {}
                                                                },
                                                                'type' => 'unit'
                                                              },
                                                              'FastBack' => {},
                                                              'Prev' => {},
                                                              'This' => {}
                                                            },
                                                            'unit_prev' => {}
                                                          },
                                                          'type' => 'unit'
                                                        },
                                                        'Forward' => {},
                                                        'This' => {},
                                                        'Up' => {}
                                                      },
                                                      'unit_next' => {},
                                                      'unit_prev' => {}
                                                    },
                                                    'type' => 'unit'
                                                  },
                                                  'section_childs' => [
                                                    {},
                                                    {}
                                                  ],
                                                  'section_level' => 2,
                                                  'section_number' => '2.1',
                                                  'section_up' => {}
                                                }
                                              }
                                            ],
                                            'section_level' => 1,
                                            'section_number' => 2,
                                            'section_prev' => {},
                                            'section_up' => {},
                                            'toplevel_prev' => {}
                                          }
                                        }
                                      },
                                      'structure' => {
                                        'directions' => {
                                          'Back' => {},
                                          'FastBack' => {},
                                          'FastForward' => {},
                                          'Forward' => {},
                                          'Next' => {},
                                          'Prev' => {},
                                          'This' => {}
                                        },
                                        'unit_next' => {},
                                        'unit_prev' => {}
                                      },
                                      'type' => 'unit'
                                    },
                                    'Forward' => {},
                                    'This' => {},
                                    'Up' => {}
                                  },
                                  'unit_next' => {},
                                  'unit_prev' => {}
                                },
                                'type' => 'unit'
                              },
                              'section_level' => 2,
                              'section_number' => '1.1',
                              'section_up' => {}
                            }
                          }
                        ],
                        'section_level' => 1,
                        'section_number' => 1,
                        'section_prev' => {},
                        'section_up' => {},
                        'toplevel_prev' => {}
                      }
                    }
                  },
                  'structure' => {
                    'directions' => {
                      'Back' => {},
                      'FastBack' => {},
                      'FastForward' => {},
                      'Forward' => {},
                      'Next' => {},
                      'Prev' => {},
                      'This' => {}
                    },
                    'unit_next' => {},
                    'unit_prev' => {}
                  },
                  'type' => 'unit'
                },
                'Forward' => {},
                'Next' => {},
                'This' => {}
              },
              'unit_next' => {}
            },
            'type' => 'unit'
          },
          'section_level' => 1,
          'section_up' => {}
        }
      },
      {},
      {},
      {}
    ],
    'section_level' => 0
  }
};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0];
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0];
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0];
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_prev'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_up'} = $result_sectioning{'chapter_sections'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'toplevel_prev'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'section_prev'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'section_prev'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'section_prev'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'section_prev'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'section_prev'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'section_prev'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'section_prev'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Next'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'section_prev'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'section_prev'}{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'section_prev'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Up'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'section_prev'}{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'section_prev'}{'structure'}{'associated_unit'}{'structure'}{'unit_prev'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'section_prev'}{'structure'}{'section_up'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0];
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'section_up'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0];
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'section_prev'}{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastForward'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Prev'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'section_prev'}{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'This'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Up'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'unit_next'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'unit_prev'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'section_prev'}{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Prev'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_prev'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'section_prev'}{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Up'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'section_prev'}{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'unit_prev'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0] = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'section_prev'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1] = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_prev'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_up'} = $result_sectioning{'chapter_sections'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'toplevel_prev'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Next'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Prev'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_next'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_prev'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Up'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'unit_prev'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_prev'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0];
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_up'} = $result_sectioning{'chapter_sections'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'toplevel_prev'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0];
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Next'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Prev'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_next'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_prev'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Next'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'chapter_sections'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[1] = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[2] = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[3] = $result_sectioning{'chapter_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};

$result_errors{'chapter_sections'} = [];


$result_floats{'chapter_sections'} = {};


$result_elements{'chapter_sections'} = [
  {
    'extra' => {
      'unit_command' => {
        'cmdname' => 'unnumbered',
        'extra' => {},
        'info' => {},
        'structure' => {
          'associated_unit' => {}
        }
      }
    },
    'structure' => {
      'directions' => {
        'FastForward' => {
          'extra' => {
            'unit_command' => {
              'cmdname' => 'chapter',
              'extra' => {},
              'info' => {},
              'structure' => {
                'associated_unit' => {},
                'section_number' => 1
              }
            }
          },
          'structure' => {
            'directions' => {
              'Back' => {},
              'FastBack' => {},
              'FastForward' => {
                'extra' => {
                  'unit_command' => {
                    'cmdname' => 'chapter',
                    'extra' => {},
                    'info' => {},
                    'structure' => {
                      'associated_unit' => {},
                      'section_number' => 2
                    }
                  }
                },
                'structure' => {
                  'directions' => {
                    'Back' => {
                      'extra' => {
                        'unit_command' => {
                          'cmdname' => 'section',
                          'extra' => {},
                          'info' => {},
                          'structure' => {
                            'associated_unit' => {},
                            'section_number' => '1.1'
                          }
                        }
                      },
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
                      'type' => 'unit'
                    },
                    'FastBack' => {},
                    'FastForward' => {
                      'extra' => {
                        'unit_command' => {
                          'cmdname' => 'chapter',
                          'extra' => {},
                          'info' => {},
                          'structure' => {
                            'associated_unit' => {},
                            'section_number' => 3
                          }
                        }
                      },
                      'structure' => {
                        'directions' => {
                          'Back' => {
                            'extra' => {
                              'unit_command' => {
                                'cmdname' => 'subsection',
                                'extra' => {},
                                'info' => {},
                                'structure' => {
                                  'associated_unit' => {},
                                  'section_number' => '2.1.2'
                                }
                              }
                            },
                            'structure' => {
                              'directions' => {
                                'Back' => {
                                  'extra' => {
                                    'unit_command' => {
                                      'cmdname' => 'subsection',
                                      'extra' => {},
                                      'info' => {},
                                      'structure' => {
                                        'associated_unit' => {},
                                        'section_number' => '2.1.1'
                                      }
                                    }
                                  },
                                  'structure' => {
                                    'directions' => {
                                      'Back' => {
                                        'extra' => {
                                          'unit_command' => {
                                            'cmdname' => 'section',
                                            'extra' => {},
                                            'info' => {},
                                            'structure' => {
                                              'associated_unit' => {},
                                              'section_number' => '2.1'
                                            }
                                          }
                                        },
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
                                        'type' => 'unit'
                                      },
                                      'FastBack' => {},
                                      'FastForward' => {},
                                      'Forward' => {},
                                      'Next' => {},
                                      'This' => {},
                                      'Up' => {}
                                    }
                                  },
                                  'type' => 'unit'
                                },
                                'FastBack' => {},
                                'FastForward' => {},
                                'Forward' => {},
                                'Prev' => {},
                                'This' => {},
                                'Up' => {}
                              }
                            },
                            'type' => 'unit'
                          },
                          'FastBack' => {},
                          'Prev' => {},
                          'This' => {}
                        }
                      },
                      'type' => 'unit'
                    },
                    'Forward' => {},
                    'Next' => {},
                    'Prev' => {},
                    'This' => {}
                  }
                },
                'type' => 'unit'
              },
              'Forward' => {},
              'Next' => {},
              'Prev' => {},
              'This' => {}
            }
          },
          'type' => 'unit'
        },
        'Forward' => {},
        'Next' => {},
        'This' => {}
      }
    },
    'type' => 'unit'
  },
  {},
  {},
  {},
  {},
  {},
  {},
  {}
];
$result_elements{'chapter_sections'}[0]{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'chapter_sections'}[0];
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_elements{'chapter_sections'}[0];
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'chapter_sections'}[0];
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastForward'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Forward'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'This'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Up'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastForward'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Forward'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'This'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Up'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastForward'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Forward'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Next'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'This'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Up'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastForward'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Forward'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Prev'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'This'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Up'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Prev'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Next'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Prev'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Next'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Prev'} = $result_elements{'chapter_sections'}[0];
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'Forward'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'Next'} = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'This'} = $result_elements{'chapter_sections'}[0];
$result_elements{'chapter_sections'}[1] = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[2] = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[3] = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[4] = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[5] = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[6] = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[7] = $result_elements{'chapter_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};



$result_directions_text{'chapter_sections'} = 'element: @unnumbered unnumbered
  FastForward: @chapter First chapter
  Forward: @chapter First chapter
  Next: @chapter First chapter
  This: @unnumbered unnumbered
element: @chapter First chapter
  Back: @unnumbered unnumbered
  FastBack: @unnumbered unnumbered
  FastForward: @chapter Chapter
  Forward: @section second
  Next: @chapter Chapter
  Prev: @unnumbered unnumbered
  This: @chapter First chapter
element: @section second
  Back: @chapter First chapter
  FastBack: @chapter First chapter
  FastForward: @chapter Chapter
  Forward: @chapter Chapter
  This: @section second
  Up: @chapter First chapter
element: @chapter Chapter
  Back: @section second
  FastBack: @chapter First chapter
  FastForward: @chapter Chapter 2
  Forward: @section Section of chapter
  Next: @chapter Chapter 2
  Prev: @chapter First chapter
  This: @chapter Chapter
element: @section Section of chapter
  Back: @chapter Chapter
  FastBack: @chapter Chapter
  FastForward: @chapter Chapter 2
  Forward: @subsection subsection 1
  This: @section Section of chapter
  Up: @chapter Chapter
element: @subsection subsection 1
  Back: @section Section of chapter
  FastBack: @chapter Chapter
  FastForward: @chapter Chapter 2
  Forward: @subsection subsection 2
  Next: @subsection subsection 2
  This: @subsection subsection 1
  Up: @section Section of chapter
element: @subsection subsection 2
  Back: @subsection subsection 1
  FastBack: @chapter Chapter
  FastForward: @chapter Chapter 2
  Forward: @chapter Chapter 2
  Prev: @subsection subsection 1
  This: @subsection subsection 2
  Up: @section Section of chapter
element: @chapter Chapter 2
  Back: @subsection subsection 2
  FastBack: @chapter Chapter
  Prev: @chapter Chapter
  This: @chapter Chapter 2
';


$result_converted{'xml'}->{'chapter_sections'} = '<unnumbered spaces=" "><sectiontitle>unnumbered</sectiontitle>

</unnumbered>
<chapter spaces=" "><sectiontitle>First chapter</sectiontitle>

<section spaces=" "><sectiontitle>second</sectiontitle>

</section>
</chapter>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>

<section spaces=" "><sectiontitle>Section of chapter</sectiontitle>

<subsection spaces=" "><sectiontitle>subsection 1</sectiontitle>

</subsection>
<subsection spaces=" "><sectiontitle>subsection 2</sectiontitle>

</subsection>
</section>
</chapter>
<chapter spaces=" "><sectiontitle>Chapter 2</sectiontitle>
</chapter>
';

1;
