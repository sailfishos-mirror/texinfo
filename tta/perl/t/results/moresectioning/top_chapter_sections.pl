use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'top_chapter_sections'} = [
  {
    'unit_command' => {
      'cmdname' => 'top',
      'contents' => [
        {
          'contents' => [
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
          'type' => 'arguments_line'
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
        'line_nr' => 1
      }
    },
    'unit_contents' => [
      {
        'type' => 'before_node_section'
      },
      {}
    ],
    'unit_type' => 'unit'
  },
  {
    'unit_command' => {
      'cmdname' => 'unnumbered',
      'contents' => [
        {
          'contents' => [
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
          'type' => 'arguments_line'
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
        'line_nr' => 3
      }
    },
    'unit_contents' => [
      {}
    ],
    'unit_type' => 'unit'
  },
  {
    'unit_command' => {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'First chapter'
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
        'line_nr' => 5
      }
    },
    'unit_contents' => [
      {}
    ],
    'unit_type' => 'unit'
  },
  {
    'unit_command' => {
      'cmdname' => 'section',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'second'
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
        }
      ],
      'extra' => {
        'section_number' => '1.1'
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
    'unit_contents' => [
      {}
    ],
    'unit_type' => 'unit'
  },
  {
    'unit_command' => {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
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
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => '2'
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
    'unit_contents' => [
      {}
    ],
    'unit_type' => 'unit'
  },
  {
    'unit_command' => {
      'cmdname' => 'section',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Section of chapter'
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
        }
      ],
      'extra' => {
        'section_number' => '2.1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 11
      }
    },
    'unit_contents' => [
      {}
    ],
    'unit_type' => 'unit'
  },
  {
    'unit_command' => {
      'cmdname' => 'subsection',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'subsection 1'
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
        }
      ],
      'extra' => {
        'section_number' => '2.1.1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 13
      }
    },
    'unit_contents' => [
      {}
    ],
    'unit_type' => 'unit'
  },
  {
    'unit_command' => {
      'cmdname' => 'subsection',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'subsection 2'
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
        }
      ],
      'extra' => {
        'section_number' => '2.1.2'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 15
      }
    },
    'unit_contents' => [
      {}
    ],
    'unit_type' => 'unit'
  },
  {
    'unit_command' => {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Chapter 2'
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
        'section_number' => '3'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 17
      }
    },
    'unit_contents' => [
      {}
    ],
    'unit_type' => 'unit'
  }
];
$result_trees{'top_chapter_sections'}[0]{'unit_contents'}[1] = $result_trees{'top_chapter_sections'}[0]{'unit_command'};
$result_trees{'top_chapter_sections'}[1]{'unit_contents'}[0] = $result_trees{'top_chapter_sections'}[1]{'unit_command'};
$result_trees{'top_chapter_sections'}[2]{'unit_contents'}[0] = $result_trees{'top_chapter_sections'}[2]{'unit_command'};
$result_trees{'top_chapter_sections'}[3]{'unit_contents'}[0] = $result_trees{'top_chapter_sections'}[3]{'unit_command'};
$result_trees{'top_chapter_sections'}[4]{'unit_contents'}[0] = $result_trees{'top_chapter_sections'}[4]{'unit_command'};
$result_trees{'top_chapter_sections'}[5]{'unit_contents'}[0] = $result_trees{'top_chapter_sections'}[5]{'unit_command'};
$result_trees{'top_chapter_sections'}[6]{'unit_contents'}[0] = $result_trees{'top_chapter_sections'}[6]{'unit_command'};
$result_trees{'top_chapter_sections'}[7]{'unit_contents'}[0] = $result_trees{'top_chapter_sections'}[7]{'unit_command'};
$result_trees{'top_chapter_sections'}[8]{'unit_contents'}[0] = $result_trees{'top_chapter_sections'}[8]{'unit_command'};

$result_texis{'top_chapter_sections'} = '@top top

@unnumbered unnumbered

@chapter First chapter

@section second

@chapter Chapter

@section Section of chapter

@subsection subsection 1

@subsection subsection 2

@chapter Chapter 2
';


$result_texts{'top_chapter_sections'} = 'top
***

unnumbered
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

$result_sectioning{'top_chapter_sections'} = {
  'extra' => {
    'section_childs' => [
      {
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
                    'FastForward' => {
                      'directions' => {
                        'Back' => {
                          'directions' => {
                            'Back' => {},
                            'FastBack' => {},
                            'FastForward' => {},
                            'Forward' => {},
                            'This' => {},
                            'Up' => {}
                          },
                          'tree_unit_directions' => {
                            'prev' => {}
                          },
                          'unit_command' => {
                            'associated_unit' => {},
                            'cmdname' => 'section',
                            'extra' => {
                              'section_directions' => {
                                'up' => {
                                  'associated_unit' => {},
                                  'cmdname' => 'chapter',
                                  'extra' => {
                                    'section_childs' => [
                                      {}
                                    ],
                                    'section_directions' => {
                                      'prev' => {
                                        'associated_unit' => {},
                                        'cmdname' => 'unnumbered',
                                        'extra' => {
                                          'section_directions' => {
                                            'up' => {}
                                          },
                                          'section_level' => 1,
                                          'toplevel_directions' => {
                                            'prev' => {},
                                            'up' => {}
                                          }
                                        }
                                      },
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
                              },
                              'section_level' => 2,
                              'section_number' => '1.1'
                            }
                          },
                          'unit_type' => 'unit'
                        },
                        'FastBack' => {},
                        'FastForward' => {
                          'directions' => {
                            'Back' => {
                              'directions' => {
                                'Back' => {
                                  'directions' => {
                                    'Back' => {
                                      'directions' => {
                                        'Back' => {},
                                        'FastBack' => {},
                                        'FastForward' => {},
                                        'Forward' => {},
                                        'This' => {},
                                        'Up' => {}
                                      },
                                      'tree_unit_directions' => {
                                        'prev' => {}
                                      },
                                      'unit_command' => {
                                        'associated_unit' => {},
                                        'cmdname' => 'section',
                                        'extra' => {
                                          'section_childs' => [
                                            {
                                              'associated_unit' => {},
                                              'cmdname' => 'subsection',
                                              'extra' => {
                                                'section_directions' => {
                                                  'up' => {}
                                                },
                                                'section_level' => 3,
                                                'section_number' => '2.1.1'
                                              }
                                            },
                                            {
                                              'associated_unit' => {},
                                              'cmdname' => 'subsection',
                                              'extra' => {
                                                'section_directions' => {
                                                  'prev' => {},
                                                  'up' => {}
                                                },
                                                'section_level' => 3,
                                                'section_number' => '2.1.2'
                                              }
                                            }
                                          ],
                                          'section_directions' => {
                                            'up' => {
                                              'associated_unit' => {},
                                              'cmdname' => 'chapter',
                                              'extra' => {
                                                'section_childs' => [
                                                  {}
                                                ],
                                                'section_directions' => {
                                                  'prev' => {},
                                                  'up' => {}
                                                },
                                                'section_level' => 1,
                                                'section_number' => '2',
                                                'toplevel_directions' => {
                                                  'prev' => {},
                                                  'up' => {}
                                                }
                                              }
                                            }
                                          },
                                          'section_level' => 2,
                                          'section_number' => '2.1'
                                        }
                                      },
                                      'unit_type' => 'unit'
                                    },
                                    'FastBack' => {},
                                    'FastForward' => {},
                                    'Forward' => {},
                                    'Next' => {},
                                    'This' => {},
                                    'Up' => {}
                                  },
                                  'tree_unit_directions' => {
                                    'prev' => {}
                                  },
                                  'unit_command' => {},
                                  'unit_type' => 'unit'
                                },
                                'FastBack' => {},
                                'FastForward' => {},
                                'Forward' => {},
                                'Prev' => {},
                                'This' => {},
                                'Up' => {}
                              },
                              'tree_unit_directions' => {
                                'prev' => {}
                              },
                              'unit_command' => {},
                              'unit_type' => 'unit'
                            },
                            'FastBack' => {},
                            'Prev' => {},
                            'This' => {},
                            'Up' => {}
                          },
                          'tree_unit_directions' => {
                            'prev' => {}
                          },
                          'unit_command' => {
                            'associated_unit' => {},
                            'cmdname' => 'chapter',
                            'extra' => {
                              'section_directions' => {
                                'prev' => {},
                                'up' => {}
                              },
                              'section_level' => 1,
                              'section_number' => '3',
                              'toplevel_directions' => {
                                'prev' => {},
                                'up' => {}
                              }
                            }
                          },
                          'unit_type' => 'unit'
                        },
                        'Forward' => {},
                        'Next' => {},
                        'Prev' => {},
                        'This' => {},
                        'Up' => {}
                      },
                      'tree_unit_directions' => {
                        'prev' => {}
                      },
                      'unit_command' => {},
                      'unit_type' => 'unit'
                    },
                    'Forward' => {},
                    'Next' => {},
                    'Prev' => {},
                    'This' => {},
                    'Up' => {}
                  },
                  'tree_unit_directions' => {
                    'prev' => {}
                  },
                  'unit_command' => {},
                  'unit_type' => 'unit'
                },
                'Forward' => {},
                'Next' => {},
                'This' => {},
                'Up' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'unit_command' => {},
              'unit_type' => 'unit'
            },
            'Forward' => {},
            'This' => {}
          },
          'tree_unit_directions' => {},
          'unit_command' => {},
          'unit_type' => 'unit'
        },
        'cmdname' => 'top',
        'extra' => {
          'section_childs' => [
            {},
            {},
            {},
            {}
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
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'This'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'associated_unit'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[0] = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_directions'}{'prev'}{'associated_unit'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[0]{'associated_unit'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[1]{'associated_unit'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'associated_unit'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[0] = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'This'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[1];
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'} = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0] = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1] = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2] = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3] = $result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'};
$result_sectioning{'top_chapter_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'top_chapter_sections'};

$result_errors{'top_chapter_sections'} = [];


$result_floats{'top_chapter_sections'} = {};


$result_elements{'top_chapter_sections'} = [
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
              'FastForward' => {
                'directions' => {
                  'Back' => {
                    'directions' => {
                      'Back' => {},
                      'FastBack' => {},
                      'FastForward' => {},
                      'Forward' => {},
                      'This' => {},
                      'Up' => {}
                    },
                    'unit_command' => {
                      'associated_unit' => {},
                      'cmdname' => 'section',
                      'extra' => {
                        'section_number' => '1.1'
                      }
                    },
                    'unit_type' => 'unit'
                  },
                  'FastBack' => {},
                  'FastForward' => {
                    'directions' => {
                      'Back' => {
                        'directions' => {
                          'Back' => {
                            'directions' => {
                              'Back' => {
                                'directions' => {
                                  'Back' => {},
                                  'FastBack' => {},
                                  'FastForward' => {},
                                  'Forward' => {},
                                  'This' => {},
                                  'Up' => {}
                                },
                                'unit_command' => {
                                  'associated_unit' => {},
                                  'cmdname' => 'section',
                                  'extra' => {
                                    'section_number' => '2.1'
                                  }
                                },
                                'unit_type' => 'unit'
                              },
                              'FastBack' => {},
                              'FastForward' => {},
                              'Forward' => {},
                              'Next' => {},
                              'This' => {},
                              'Up' => {}
                            },
                            'unit_command' => {
                              'associated_unit' => {},
                              'cmdname' => 'subsection',
                              'extra' => {
                                'section_number' => '2.1.1'
                              }
                            },
                            'unit_type' => 'unit'
                          },
                          'FastBack' => {},
                          'FastForward' => {},
                          'Forward' => {},
                          'Prev' => {},
                          'This' => {},
                          'Up' => {}
                        },
                        'unit_command' => {
                          'associated_unit' => {},
                          'cmdname' => 'subsection',
                          'extra' => {
                            'section_number' => '2.1.2'
                          }
                        },
                        'unit_type' => 'unit'
                      },
                      'FastBack' => {},
                      'Prev' => {},
                      'This' => {},
                      'Up' => {}
                    },
                    'unit_command' => {
                      'associated_unit' => {},
                      'cmdname' => 'chapter',
                      'extra' => {
                        'section_number' => '3'
                      }
                    },
                    'unit_type' => 'unit'
                  },
                  'Forward' => {},
                  'Next' => {},
                  'Prev' => {},
                  'This' => {},
                  'Up' => {}
                },
                'unit_command' => {
                  'associated_unit' => {},
                  'cmdname' => 'chapter',
                  'extra' => {
                    'section_number' => '2'
                  }
                },
                'unit_type' => 'unit'
              },
              'Forward' => {},
              'Next' => {},
              'Prev' => {},
              'This' => {},
              'Up' => {}
            },
            'unit_command' => {
              'associated_unit' => {},
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '1'
              }
            },
            'unit_type' => 'unit'
          },
          'Forward' => {},
          'Next' => {},
          'This' => {},
          'Up' => {}
        },
        'unit_command' => {
          'associated_unit' => {},
          'cmdname' => 'unnumbered',
          'extra' => {}
        },
        'unit_type' => 'unit'
      },
      'Forward' => {},
      'This' => {}
    },
    'unit_command' => {
      'associated_unit' => {},
      'cmdname' => 'top',
      'extra' => {}
    },
    'unit_type' => 'unit'
  },
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {}
];
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'top_chapter_sections'}[0];
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'top_chapter_sections'}[0];
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'This'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'This'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'top_chapter_sections'}[0];
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'top_chapter_sections'}[0];
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'top_chapter_sections'}[0];
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'top_chapter_sections'}[0];
$result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'Forward'} = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[0]{'directions'}{'This'} = $result_elements{'top_chapter_sections'}[0];
$result_elements{'top_chapter_sections'}[0]{'unit_command'}{'associated_unit'} = $result_elements{'top_chapter_sections'}[0];
$result_elements{'top_chapter_sections'}[1] = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[2] = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[3] = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'top_chapter_sections'}[4] = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'top_chapter_sections'}[5] = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'top_chapter_sections'}[6] = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'top_chapter_sections'}[7] = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'top_chapter_sections'}[8] = $result_elements{'top_chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};



$result_directions_text{'top_chapter_sections'} = 'output unit: @top top
  This: @top top
  Forward: @unnumbered unnumbered
  FastForward: @unnumbered unnumbered
output unit: @unnumbered unnumbered
  This: @unnumbered unnumbered
  Forward: @chapter First chapter
  Back: @top top
  FastForward: @chapter First chapter
  FastBack: @top top
  Next: @chapter First chapter
  Up: @top top
output unit: @chapter First chapter
  This: @chapter First chapter
  Forward: @section second
  Back: @unnumbered unnumbered
  FastForward: @chapter Chapter
  FastBack: @unnumbered unnumbered
  Next: @chapter Chapter
  Prev: @unnumbered unnumbered
  Up: @top top
output unit: @section second
  This: @section second
  Forward: @chapter Chapter
  Back: @chapter First chapter
  FastForward: @chapter Chapter
  FastBack: @chapter First chapter
  Up: @chapter First chapter
output unit: @chapter Chapter
  This: @chapter Chapter
  Forward: @section Section of chapter
  Back: @section second
  FastForward: @chapter Chapter 2
  FastBack: @chapter First chapter
  Next: @chapter Chapter 2
  Prev: @chapter First chapter
  Up: @top top
output unit: @section Section of chapter
  This: @section Section of chapter
  Forward: @subsection subsection 1
  Back: @chapter Chapter
  FastForward: @chapter Chapter 2
  FastBack: @chapter Chapter
  Up: @chapter Chapter
output unit: @subsection subsection 1
  This: @subsection subsection 1
  Forward: @subsection subsection 2
  Back: @section Section of chapter
  FastForward: @chapter Chapter 2
  FastBack: @chapter Chapter
  Next: @subsection subsection 2
  Up: @section Section of chapter
output unit: @subsection subsection 2
  This: @subsection subsection 2
  Forward: @chapter Chapter 2
  Back: @subsection subsection 1
  FastForward: @chapter Chapter 2
  FastBack: @chapter Chapter
  Prev: @subsection subsection 1
  Up: @section Section of chapter
output unit: @chapter Chapter 2
  This: @chapter Chapter 2
  Back: @subsection subsection 2
  FastBack: @chapter Chapter
  Prev: @chapter Chapter
  Up: @top top
';


$result_converted{'xml'}->{'top_chapter_sections'} = '<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<unnumbered spaces=" "><sectiontitle>unnumbered</sectiontitle>

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
