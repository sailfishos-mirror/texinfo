use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'top_node_up_implicit'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '\\input texinfo  @c public domain
',
                  'type' => 'text_before_beginning'
                }
              ],
              'parent' => {},
              'type' => 'preamble_before_beginning'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_setfilename'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'top_node_up_implicit'
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
                'text_arg' => 'top_node_up_implicit'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'top_node_up_implicit.texi',
                'line_nr' => 2,
                'macro' => ''
              }
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
                  'parent' => {},
                  'text' => ' should replace implicit Up.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' should replace implicit Up.
'
                ]
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
          'type' => 'preamble_before_content'
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
      'parent' => {},
      'source_info' => {
        'file_name' => 'top_node_up_implicit.texi',
        'line_nr' => 6,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'The top'
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'Just a top node.
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
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
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
                      'text' => 'Chap'
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
                  'normalized' => 'Chap'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'top_node_up_implicit.texi',
                'line_nr' => 12,
                'macro' => ''
              },
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
              'parent' => {},
              'source_info' => {
                'file_name' => 'top_node_up_implicit.texi',
                'line_nr' => 13,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'top_node_up_implicit.texi',
            'line_nr' => 11,
            'macro' => ''
          }
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
      'parent' => {},
      'source_info' => {
        'file_name' => 'top_node_up_implicit.texi',
        'line_nr' => 7,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Chap'
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
            'normalized' => 'Chap'
          }
        ],
        'normalized' => 'Chap',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'top_node_up_implicit.texi',
        'line_nr' => 15,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'A chapter'
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
              'parent' => {},
              'text' => 'Without the chapter, no up node from top is generated.
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
      'parent' => {},
      'source_info' => {
        'file_name' => 'top_node_up_implicit.texi',
        'line_nr' => 16,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'misc_arg'
        }
      ],
      'cmdname' => 'bye',
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'top_node_up_implicit'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'top_node_up_implicit'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[0]{'contents'}[0];
$result_trees{'top_node_up_implicit'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[0];
$result_trees{'top_node_up_implicit'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'top_node_up_implicit'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'top_node_up_implicit'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[0]{'contents'}[1];
$result_trees{'top_node_up_implicit'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[0]{'contents'}[1];
$result_trees{'top_node_up_implicit'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'top_node_up_implicit'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[0]{'contents'}[1];
$result_trees{'top_node_up_implicit'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[0]{'contents'}[1];
$result_trees{'top_node_up_implicit'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[0];
$result_trees{'top_node_up_implicit'}{'contents'}[0]{'parent'} = $result_trees{'top_node_up_implicit'};
$result_trees{'top_node_up_implicit'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[1]{'args'}[0];
$result_trees{'top_node_up_implicit'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[1];
$result_trees{'top_node_up_implicit'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'top_node_up_implicit'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'top_node_up_implicit'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'top_node_up_implicit'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'top_node_up_implicit'}{'contents'}[1]{'parent'} = $result_trees{'top_node_up_implicit'};
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[2]{'args'}[0];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[2];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[2];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[1];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[2];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[2];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[2];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[2];
$result_trees{'top_node_up_implicit'}{'contents'}[2]{'parent'} = $result_trees{'top_node_up_implicit'};
$result_trees{'top_node_up_implicit'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[3]{'args'}[0];
$result_trees{'top_node_up_implicit'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[3];
$result_trees{'top_node_up_implicit'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'top_node_up_implicit'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'top_node_up_implicit'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'top_node_up_implicit'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'top_node_up_implicit'}{'contents'}[3]{'parent'} = $result_trees{'top_node_up_implicit'};
$result_trees{'top_node_up_implicit'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[4]{'args'}[0];
$result_trees{'top_node_up_implicit'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[4];
$result_trees{'top_node_up_implicit'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[4];
$result_trees{'top_node_up_implicit'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[4]{'contents'}[1];
$result_trees{'top_node_up_implicit'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[4];
$result_trees{'top_node_up_implicit'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[4];
$result_trees{'top_node_up_implicit'}{'contents'}[4]{'parent'} = $result_trees{'top_node_up_implicit'};
$result_trees{'top_node_up_implicit'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'top_node_up_implicit'}{'contents'}[5];
$result_trees{'top_node_up_implicit'}{'contents'}[5]{'parent'} = $result_trees{'top_node_up_implicit'};

$result_texis{'top_node_up_implicit'} = '\\input texinfo  @c public domain
@setfilename top_node_up_implicit

@c should replace implicit Up.

@node Top
@top The top

Just a top node.

@menu
* Chap::
@end menu

@node Chap
@chapter A chapter

Without the chapter, no up node from top is generated.

@bye
';


$result_texts{'top_node_up_implicit'} = '

The top
*******

Just a top node.

* Chap::

1 A chapter
***********

Without the chapter, no up node from top is generated.

';

$result_sectioning{'top_node_up_implicit'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            },
            'structure' => {}
          }
        },
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'Chap'
                  },
                  'structure' => {}
                }
              },
              'structure' => {
                'section_level' => 1,
                'section_number' => 1,
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'top_node_up_implicit'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'top_node_up_implicit'}{'structure'}{'section_childs'}[0];
$result_sectioning{'top_node_up_implicit'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'top_node_up_implicit'}{'structure'}{'section_childs'}[0];
$result_sectioning{'top_node_up_implicit'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'top_node_up_implicit'}{'structure'}{'section_childs'}[0];
$result_sectioning{'top_node_up_implicit'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'top_node_up_implicit'};

$result_nodes{'top_node_up_implicit'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'menus' => [
      {
        'cmdname' => 'menu',
        'extra' => {}
      }
    ],
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'normalized' => 'Chap'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'top_node_up_implicit'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'top_node_up_implicit'};
$result_nodes{'top_node_up_implicit'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'top_node_up_implicit'};
$result_nodes{'top_node_up_implicit'}{'structure'}{'node_next'} = $result_nodes{'top_node_up_implicit'}{'structure'}{'menu_child'};

$result_menus{'top_node_up_implicit'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'Chap'
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
$result_menus{'top_node_up_implicit'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'top_node_up_implicit'};

$result_errors{'top_node_up_implicit'} = [];


$result_floats{'top_node_up_implicit'} = {};


1;
