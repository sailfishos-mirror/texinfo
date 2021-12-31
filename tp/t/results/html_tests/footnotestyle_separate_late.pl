use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'footnotestyle_separate_late'} = [
  {
    'contents' => [
      {
        'contents' => [
          {
            'args' => [
              {
                'contents' => [
                  {
                    'parent' => {},
                    'text' => 'footnotestyle_separate_late.info'
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
            'cmdname' => 'setfilename',
            'extra' => {
              'spaces_before_argument' => ' ',
              'text_arg' => 'footnotestyle_separate_late.info'
            },
            'line_nr' => {
              'file_name' => '',
              'line_nr' => 1,
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
          'line_nr' => 3,
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
          }
        ],
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 4,
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
                'text' => 'chap f'
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
              'normalized' => 'chap-f'
            }
          ],
          'normalized' => 'chap-f',
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 6,
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
                'text' => 'Chapter f'
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
                'args' => [
                  {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'parent' => {},
                            'text' => 'in fchap 1'
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
          }
        ],
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 7,
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
  },
  {
    'contents' => [
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'chap s'
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
              'normalized' => 'chap-s'
            }
          ],
          'normalized' => 'chap-s',
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 11,
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
                'text' => 'Chapter s'
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
                'args' => [
                  {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'parent' => {},
                            'text' => 'in fchap 2'
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
                  'line_nr' => 14,
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
              'line_nr' => 16,
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
          'line_nr' => 12,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 1,
          'number' => 2
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
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[1]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[2];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[2];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[2]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'extra'}{'node'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[0]{'extra'}{'section'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[2];
$result_trees{'footnotestyle_separate_late'}[0]{'extra'}{'unit_command'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'footnotestyle_separate_late'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[1]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[1]{'contents'}[0]{'extra'}{'node_content'}[0] = $result_trees{'footnotestyle_separate_late'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[1]{'contents'}[0]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'footnotestyle_separate_late'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[1]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[1];
$result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1]{'parent'} = $result_trees{'footnotestyle_separate_late'}[1];
$result_trees{'footnotestyle_separate_late'}[1]{'extra'}{'node'} = $result_trees{'footnotestyle_separate_late'}[1]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[1]{'extra'}{'section'} = $result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[1]{'extra'}{'unit_command'} = $result_trees{'footnotestyle_separate_late'}[1]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[1]{'structure'}{'unit_prev'} = $result_trees{'footnotestyle_separate_late'}[0];
$result_trees{'footnotestyle_separate_late'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'footnotestyle_separate_late'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[2]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[2]{'contents'}[0]{'extra'}{'node_content'}[0] = $result_trees{'footnotestyle_separate_late'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[2]{'contents'}[0]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'footnotestyle_separate_late'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[2]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[2];
$result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'contents'}[3];
$result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1]{'parent'} = $result_trees{'footnotestyle_separate_late'}[2];
$result_trees{'footnotestyle_separate_late'}[2]{'extra'}{'node'} = $result_trees{'footnotestyle_separate_late'}[2]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[2]{'extra'}{'section'} = $result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[2]{'extra'}{'unit_command'} = $result_trees{'footnotestyle_separate_late'}[2]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[2]{'structure'}{'unit_prev'} = $result_trees{'footnotestyle_separate_late'}[1];

$result_texis{'footnotestyle_separate_late'} = '@setfilename footnotestyle_separate_late.info

@node Top
@top top

@node chap f
@chapter Chapter f

@footnote{in fchap 1}

@node chap s
@chapter Chapter s

@footnote{in fchap 2}

@footnotestyle separate
';


$result_texts{'footnotestyle_separate_late'} = '
top
***

1 Chapter f
***********



2 Chapter s
***********



';

$result_sectioning{'footnotestyle_separate_late'} = {
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
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chap-f',
                    'spaces_before_argument' => ' '
                  },
                  'structure' => {}
                },
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
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chap-s',
                    'spaces_before_argument' => ' '
                  },
                  'structure' => {}
                },
                'spaces_before_argument' => ' '
              },
              'structure' => {
                'level' => 1,
                'number' => 2,
                'section_prev' => {},
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_up' => {}
        }
      }
    ]
  }
};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_prev'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_up'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'footnotestyle_separate_late'};

$result_nodes{'footnotestyle_separate_late'} = {
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
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'structure' => {
            'level' => 1,
            'number' => 1
          }
        },
        'normalized' => 'chap-f',
        'spaces_before_argument' => ' '
      },
      'structure' => {
        'node_next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'structure' => {
                'level' => 1,
                'number' => 2
              }
            },
            'normalized' => 'chap-s',
            'spaces_before_argument' => ' '
          },
          'structure' => {
            'node_prev' => {},
            'node_up' => {}
          }
        },
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'footnotestyle_separate_late'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'footnotestyle_separate_late'}{'structure'}{'node_next'};
$result_nodes{'footnotestyle_separate_late'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'footnotestyle_separate_late'};
$result_nodes{'footnotestyle_separate_late'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'footnotestyle_separate_late'};
$result_nodes{'footnotestyle_separate_late'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'footnotestyle_separate_late'};

$result_menus{'footnotestyle_separate_late'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'structure' => {}
};

$result_errors{'footnotestyle_separate_late'} = [];


$result_floats{'footnotestyle_separate_late'} = {};


$result_elements{'footnotestyle_separate_late'} = [
  {
    'extra' => {
      'node' => {
        'cmdname' => 'node',
        'extra' => {
          'normalized' => 'Top',
          'spaces_before_argument' => ' '
        },
        'structure' => {}
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
            'node' => {
              'cmdname' => 'node',
              'extra' => {
                'normalized' => 'chap-f',
                'spaces_before_argument' => ' '
              },
              'structure' => {}
            },
            'section' => {
              'cmdname' => 'chapter',
              'extra' => {
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
              'FastForward' => {
                'extra' => {
                  'node' => {
                    'cmdname' => 'node',
                    'extra' => {
                      'normalized' => 'chap-s',
                      'spaces_before_argument' => ' '
                    },
                    'structure' => {}
                  },
                  'section' => {
                    'cmdname' => 'chapter',
                    'extra' => {
                      'spaces_before_argument' => ' '
                    },
                    'structure' => {
                      'level' => 1,
                      'number' => 2
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
                    'Prev' => {},
                    'This' => {},
                    'Up' => {}
                  }
                },
                'type' => 'unit'
              },
              'Forward' => {},
              'Next' => {},
              'NodeBack' => {},
              'NodeForward' => {},
              'NodeNext' => {},
              'NodePrev' => {},
              'NodeUp' => {},
              'This' => {},
              'Up' => {}
            }
          },
          'type' => 'unit'
        },
        'Forward' => {},
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
$result_elements{'footnotestyle_separate_late'}[0]{'extra'}{'unit_command'} = $result_elements{'footnotestyle_separate_late'}[0]{'extra'}{'node'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodePrev'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Prev'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Next'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeForward'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeNext'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodePrev'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'Forward'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'NodeForward'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'NodeNext'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'This'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[1] = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[2] = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};



$result_directions_text{'footnotestyle_separate_late'} = 'element: @node Top
  FastForward: @node chap f
  Forward: @node chap f
  NodeForward: @node chap f
  NodeNext: @node chap f
  This: @node Top
element: @node chap f
  Back: @node Top
  FastBack: @node Top
  FastForward: @node chap s
  Forward: @node chap s
  Next: @node chap s
  NodeBack: @node Top
  NodeForward: @node chap s
  NodeNext: @node chap s
  NodePrev: @node Top
  NodeUp: @node Top
  This: @node chap f
  Up: @node Top
element: @node chap s
  Back: @node chap f
  FastBack: @node chap f
  NodeBack: @node chap f
  NodePrev: @node chap f
  NodeUp: @node Top
  Prev: @node chap f
  This: @node chap s
  Up: @node Top
';

1;
