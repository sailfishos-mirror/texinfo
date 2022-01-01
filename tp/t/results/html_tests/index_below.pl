use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'index_below'} = [
  {
    'contents' => [
      {
        'contents' => [],
        'parent' => {
          'contents' => [
            {},
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
                }
              ],
              'extra' => {
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
                      'text' => 'chap'
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
                      'text' => 'sec'
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
              'cmdname' => 'section',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'entry'
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
                  'cmdname' => 'cindex',
                  'extra' => {
                    'index_entry' => {
                      'command' => {},
                      'content' => [],
                      'content_normalized' => [],
                      'in_code' => 0,
                      'index_at_command' => 'cindex',
                      'index_ignore_chars' => {},
                      'index_name' => 'cp',
                      'index_type_command' => 'cindex',
                      'number' => 1
                    },
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 7,
                    'macro' => ''
                  },
                  'parent' => {},
                  'type' => 'index_entry_command'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'cp'
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
                  'cmdname' => 'printindex',
                  'extra' => {
                    'misc_args' => [
                      'cp'
                    ],
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 8,
                    'macro' => ''
                  },
                  'parent' => {}
                }
              ],
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'type' => 'document_root'
        },
        'type' => 'before_node_section'
      },
      {}
    ],
    'extra' => {
      'unit_command' => {},
      'unit_section' => {}
    },
    'type' => 'unit'
  },
  {
    'contents' => [
      {}
    ],
    'extra' => {
      'unit_command' => {},
      'unit_section' => {}
    },
    'type' => 'unit'
  },
  {
    'contents' => [
      {}
    ],
    'extra' => {
      'unit_command' => {},
      'unit_section' => {}
    },
    'type' => 'unit'
  }
];
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[0] = $result_trees{'index_below'}[0]{'contents'}[0];
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0];
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'parent'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'};
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0];
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'parent'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'};
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0];
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'contents'}[1];
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'contents'}[1];
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'contents'}[2];
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'parent'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'};
$result_trees{'index_below'}[0]{'contents'}[1] = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'index_below'}[0]{'extra'}{'unit_command'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'index_below'}[0]{'extra'}{'unit_section'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'index_below'}[1]{'contents'}[0] = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'index_below'}[1]{'extra'}{'unit_command'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'index_below'}[1]{'extra'}{'unit_section'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'index_below'}[2]{'contents'}[0] = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'index_below'}[2]{'extra'}{'unit_command'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'index_below'}[2]{'extra'}{'unit_section'} = $result_trees{'index_below'}[0]{'contents'}[0]{'parent'}{'contents'}[3];

$result_texis{'index_below'} = '@top top

@chapter chap

@section sec

@cindex entry
@printindex cp
';


$result_texts{'index_below'} = 'top
***

1 chap
******

1.1 sec
=======

';

$result_sectioning{'index_below'} = {
  'structure' => {
    'level' => -1,
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {},
        'structure' => {
          'associated_unit' => {
            'extra' => {
              'unit_command' => {},
              'unit_section' => {}
            },
            'structure' => {
              'directions' => {
                'FastForward' => {
                  'extra' => {
                    'unit_command' => {
                      'cmdname' => 'chapter',
                      'extra' => {},
                      'structure' => {
                        'associated_unit' => {},
                        'level' => 1,
                        'number' => 1,
                        'section_childs' => [
                          {
                            'cmdname' => 'section',
                            'extra' => {},
                            'structure' => {
                              'associated_unit' => {
                                'extra' => {
                                  'unit_command' => {},
                                  'unit_section' => {}
                                },
                                'structure' => {
                                  'directions' => {
                                    'Back' => {},
                                    'FastBack' => {},
                                    'This' => {},
                                    'Up' => {}
                                  },
                                  'unit_prev' => {}
                                },
                                'type' => 'unit'
                              },
                              'level' => 2,
                              'number' => '1.1',
                              'section_up' => {}
                            }
                          }
                        ],
                        'section_up' => {},
                        'toplevel_prev' => {},
                        'toplevel_up' => {}
                      }
                    },
                    'unit_section' => {}
                  },
                  'structure' => {
                    'directions' => {
                      'Back' => {},
                      'FastBack' => {},
                      'Forward' => {},
                      'This' => {},
                      'Up' => {}
                    },
                    'unit_next' => {},
                    'unit_prev' => {}
                  },
                  'type' => 'unit'
                },
                'Forward' => {},
                'This' => {}
              },
              'unit_next' => {}
            },
            'type' => 'unit'
          },
          'level' => 0,
          'section_childs' => [
            {}
          ],
          'section_up' => {}
        }
      }
    ]
  }
};
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0];
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'extra'}{'unit_section'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0];
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0];
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'extra'}{'unit_section'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0];
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Up'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'unit_prev'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_up'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0];
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'toplevel_prev'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0];
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'toplevel_up'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0];
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_section'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_next'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_prev'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0] = $result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_sectioning{'index_below'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'index_below'};

$result_errors{'index_below'} = [];


$result_floats{'index_below'} = {};


$result_indices_sort_strings{'index_below'} = {
  'cp' => [
    'entry'
  ]
};


$result_elements{'index_below'} = [
  {
    'extra' => {
      'unit_command' => {
        'cmdname' => 'top',
        'extra' => {},
        'structure' => {
          'associated_unit' => {},
          'level' => 0
        }
      },
      'unit_section' => {}
    },
    'structure' => {
      'directions' => {
        'FastForward' => {
          'extra' => {
            'unit_command' => {
              'cmdname' => 'chapter',
              'extra' => {},
              'structure' => {
                'associated_unit' => {},
                'level' => 1,
                'number' => 1
              }
            },
            'unit_section' => {}
          },
          'structure' => {
            'directions' => {
              'Back' => {},
              'FastBack' => {},
              'Forward' => {
                'extra' => {
                  'unit_command' => {
                    'cmdname' => 'section',
                    'extra' => {},
                    'structure' => {
                      'associated_unit' => {},
                      'level' => 2,
                      'number' => '1.1'
                    }
                  },
                  'unit_section' => {}
                },
                'structure' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
                    'This' => {},
                    'Up' => {}
                  }
                },
                'type' => 'unit'
              },
              'This' => {},
              'Up' => {}
            }
          },
          'type' => 'unit'
        },
        'Forward' => {},
        'This' => {}
      }
    },
    'type' => 'unit'
  },
  {},
  {}
];
$result_elements{'index_below'}[0]{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'index_below'}[0];
$result_elements{'index_below'}[0]{'extra'}{'unit_section'} = $result_elements{'index_below'}[0]{'extra'}{'unit_command'};
$result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_section'} = $result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_elements{'index_below'}[0];
$result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'index_below'}[0];
$result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'};
$result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_section'} = $result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'};
$result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'};
$result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Up'} = $result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_elements{'index_below'}[0];
$result_elements{'index_below'}[0]{'structure'}{'directions'}{'Forward'} = $result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'index_below'}[0]{'structure'}{'directions'}{'This'} = $result_elements{'index_below'}[0];
$result_elements{'index_below'}[1] = $result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'index_below'}[2] = $result_elements{'index_below'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'};



$result_directions_text{'index_below'} = 'element: @top top
  FastForward: @chapter chap
  Forward: @chapter chap
  This: @top top
element: @chapter chap
  Back: @top top
  FastBack: @top top
  Forward: @section sec
  This: @chapter chap
  Up: @top top
element: @section sec
  Back: @chapter chap
  FastBack: @chapter chap
  This: @section sec
  Up: @chapter chap
';


$result_converted{'html'}->{'index_below'} = '<!DOCTYPE html>
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

<link href="#top" rel="start" title="top">
<link href="#chap" rel="index" title="1 chap">
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
<div class="top" id="top">
<div class="header">
<p>
 &nbsp; [<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top">top</h1>

<ul class="section-toc">
<li><a href="#chap" accesskey="1">chap</a></li>
</ul>
<hr>
<div class="chapter" id="chap">
<div class="header">
<p>
 Up : <a href="#top" accesskey="u" rel="up">top</a> &nbsp; [<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter">1 chap</h2>

<ul class="section-toc">
<li><a href="#sec" accesskey="1">sec</a></li>
</ul>
<hr>
<div class="section" id="sec">
<div class="header">
<p>
 Up : <a href="#chap" accesskey="u" rel="up">chap</a> &nbsp; [<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section">1.1 sec</h3>

<a class="index-entry-anchor" id="index-entry"></a>
<table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#sec_cp_letter-E"><b>E</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-cp" border="0">
<tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="sec_cp_letter-E">E</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-entry">entry</a>:</td><td>&nbsp;</td><td valign="top"><a href="#sec">1.1 sec</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#sec_cp_letter-E"><b>E</b></a>
 &nbsp; 
</td></tr></table>
</div>
</div>
</div>



</body>
</html>
';

1;
