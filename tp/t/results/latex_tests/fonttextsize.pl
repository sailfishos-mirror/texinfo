use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'fonttextsize'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'fonttextsize.info'
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
            'text_arg' => 'fonttextsize.info'
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
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '10'
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
          'cmdname' => 'fonttextsize',
          'extra' => {
            'misc_args' => [
              '10'
            ],
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
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'parent' => {},
      'type' => 'text_root'
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
        'line_nr' => 5,
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
              'text' => 'section top'
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
      'level' => 0,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 6,
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
        'line_nr' => 8,
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
              'text' => 'Chapter'
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
      'level' => 1,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 9,
        'macro' => ''
      },
      'number' => 1,
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'section'
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
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 2,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 11,
        'macro' => ''
      },
      'number' => '1.1',
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Subsection 10pts'
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
      'cmdname' => 'subsection',
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'In 10pts
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
                  'text' => '11'
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
          'cmdname' => 'fonttextsize',
          'extra' => {
            'misc_args' => [
              '11'
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
      'level' => 3,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 13,
        'macro' => ''
      },
      'number' => '1.1.1',
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Subsection 11pts'
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
      'cmdname' => 'subsection',
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
              'text' => 'In 11pts
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
                  'text' => '8'
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
          'cmdname' => 'fonttextsize',
          'extra' => {
            'misc_args' => [],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 21,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 3,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 17,
        'macro' => ''
      },
      'number' => '1.1.2',
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Subsection 8pts'
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
      'cmdname' => 'subsection',
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
              'text' => 'In 8pts
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
                  'text' => '15'
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
          'cmdname' => 'fonttextsize',
          'extra' => {
            'misc_args' => [],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 26,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 3,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 22,
        'macro' => ''
      },
      'number' => '1.1.3',
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Subsection 15pts'
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
      'cmdname' => 'subsection',
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
              'text' => 'In 15pts
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
      'level' => 3,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 27,
        'macro' => ''
      },
      'number' => '1.1.4',
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'fonttextsize'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'fonttextsize'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[0]{'contents'}[0];
$result_trees{'fonttextsize'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[0];
$result_trees{'fonttextsize'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[0];
$result_trees{'fonttextsize'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'fonttextsize'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[0]{'contents'}[2];
$result_trees{'fonttextsize'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[0];
$result_trees{'fonttextsize'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[0];
$result_trees{'fonttextsize'}{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'};
$result_trees{'fonttextsize'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[1]{'args'}[0];
$result_trees{'fonttextsize'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[1];
$result_trees{'fonttextsize'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'fonttextsize'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'fonttextsize'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'fonttextsize'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'fonttextsize'}{'contents'}[1]{'parent'} = $result_trees{'fonttextsize'};
$result_trees{'fonttextsize'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[2]{'args'}[0];
$result_trees{'fonttextsize'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[2];
$result_trees{'fonttextsize'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[2];
$result_trees{'fonttextsize'}{'contents'}[2]{'parent'} = $result_trees{'fonttextsize'};
$result_trees{'fonttextsize'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[3]{'args'}[0];
$result_trees{'fonttextsize'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[3];
$result_trees{'fonttextsize'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'fonttextsize'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'fonttextsize'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'fonttextsize'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'fonttextsize'}{'contents'}[3]{'parent'} = $result_trees{'fonttextsize'};
$result_trees{'fonttextsize'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[4]{'args'}[0];
$result_trees{'fonttextsize'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[4];
$result_trees{'fonttextsize'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[4];
$result_trees{'fonttextsize'}{'contents'}[4]{'parent'} = $result_trees{'fonttextsize'};
$result_trees{'fonttextsize'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[5]{'args'}[0];
$result_trees{'fonttextsize'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[5];
$result_trees{'fonttextsize'}{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[5];
$result_trees{'fonttextsize'}{'contents'}[5]{'parent'} = $result_trees{'fonttextsize'};
$result_trees{'fonttextsize'}{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[6]{'args'}[0];
$result_trees{'fonttextsize'}{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[6];
$result_trees{'fonttextsize'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[6]{'contents'}[0];
$result_trees{'fonttextsize'}{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[6];
$result_trees{'fonttextsize'}{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[6];
$result_trees{'fonttextsize'}{'contents'}[6]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[6]{'contents'}[2]{'args'}[0];
$result_trees{'fonttextsize'}{'contents'}[6]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[6]{'contents'}[2];
$result_trees{'fonttextsize'}{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[6];
$result_trees{'fonttextsize'}{'contents'}[6]{'parent'} = $result_trees{'fonttextsize'};
$result_trees{'fonttextsize'}{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[7]{'args'}[0];
$result_trees{'fonttextsize'}{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[7];
$result_trees{'fonttextsize'}{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[7];
$result_trees{'fonttextsize'}{'contents'}[7]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[7]{'contents'}[1];
$result_trees{'fonttextsize'}{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[7];
$result_trees{'fonttextsize'}{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[7];
$result_trees{'fonttextsize'}{'contents'}[7]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[7]{'contents'}[3]{'args'}[0];
$result_trees{'fonttextsize'}{'contents'}[7]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[7]{'contents'}[3];
$result_trees{'fonttextsize'}{'contents'}[7]{'contents'}[3]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[7];
$result_trees{'fonttextsize'}{'contents'}[7]{'parent'} = $result_trees{'fonttextsize'};
$result_trees{'fonttextsize'}{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[8]{'args'}[0];
$result_trees{'fonttextsize'}{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[8];
$result_trees{'fonttextsize'}{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[8];
$result_trees{'fonttextsize'}{'contents'}[8]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[8]{'contents'}[1];
$result_trees{'fonttextsize'}{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[8];
$result_trees{'fonttextsize'}{'contents'}[8]{'contents'}[2]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[8];
$result_trees{'fonttextsize'}{'contents'}[8]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[8]{'contents'}[3]{'args'}[0];
$result_trees{'fonttextsize'}{'contents'}[8]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[8]{'contents'}[3];
$result_trees{'fonttextsize'}{'contents'}[8]{'contents'}[3]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[8];
$result_trees{'fonttextsize'}{'contents'}[8]{'parent'} = $result_trees{'fonttextsize'};
$result_trees{'fonttextsize'}{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[9]{'args'}[0];
$result_trees{'fonttextsize'}{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[9];
$result_trees{'fonttextsize'}{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[9];
$result_trees{'fonttextsize'}{'contents'}[9]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[9]{'contents'}[1];
$result_trees{'fonttextsize'}{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'fonttextsize'}{'contents'}[9];
$result_trees{'fonttextsize'}{'contents'}[9]{'parent'} = $result_trees{'fonttextsize'};

$result_texis{'fonttextsize'} = '@setfilename fonttextsize.info

@fonttextsize 10

@node Top
@top section top

@node chapter
@chapter Chapter

@section section

@subsection Subsection 10pts
In 10pts

@fonttextsize 11
@subsection Subsection 11pts

In 11pts

@fonttextsize 8
@subsection Subsection 8pts

In 8pts

@fonttextsize 15
@subsection Subsection 15pts

In 15pts
';


$result_texts{'fonttextsize'} = '

section top
***********

1 Chapter
*********

1.1 section
===========

1.1.1 Subsection 10pts
----------------------
In 10pts

1.1.2 Subsection 11pts
----------------------

In 11pts

1.1.3 Subsection 8pts
---------------------

In 8pts

1.1.4 Subsection 15pts
----------------------

In 15pts
';

$result_sectioning{'fonttextsize'} = {
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
      'level' => 0,
      'section_childs' => [
        {
          'cmdname' => 'chapter',
          'extra' => {
            'associated_node' => {
              'cmdname' => 'node',
              'extra' => {
                'normalized' => 'chapter',
                'spaces_before_argument' => ' '
              }
            },
            'spaces_before_argument' => ' '
          },
          'level' => 1,
          'number' => 1,
          'section_childs' => [
            {
              'cmdname' => 'section',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'level' => 2,
              'number' => '1.1',
              'section_childs' => [
                {
                  'cmdname' => 'subsection',
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'level' => 3,
                  'number' => '1.1.1',
                  'section_up' => {}
                },
                {
                  'cmdname' => 'subsection',
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'level' => 3,
                  'number' => '1.1.2',
                  'section_prev' => {},
                  'section_up' => {}
                },
                {
                  'cmdname' => 'subsection',
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'level' => 3,
                  'number' => '1.1.3',
                  'section_prev' => {},
                  'section_up' => {}
                },
                {
                  'cmdname' => 'subsection',
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'level' => 3,
                  'number' => '1.1.4',
                  'section_prev' => {},
                  'section_up' => {}
                }
              ],
              'section_up' => {}
            }
          ],
          'section_up' => {},
          'toplevel_prev' => {},
          'toplevel_up' => {}
        }
      ],
      'section_up' => {}
    }
  ]
};
$result_sectioning{'fonttextsize'}{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'fonttextsize'}{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[0];
$result_sectioning{'fonttextsize'}{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[1]{'section_prev'} = $result_sectioning{'fonttextsize'}{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[0];
$result_sectioning{'fonttextsize'}{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[1]{'section_up'} = $result_sectioning{'fonttextsize'}{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[0];
$result_sectioning{'fonttextsize'}{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[2]{'section_prev'} = $result_sectioning{'fonttextsize'}{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[1];
$result_sectioning{'fonttextsize'}{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[2]{'section_up'} = $result_sectioning{'fonttextsize'}{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[0];
$result_sectioning{'fonttextsize'}{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[3]{'section_prev'} = $result_sectioning{'fonttextsize'}{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[2];
$result_sectioning{'fonttextsize'}{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[3]{'section_up'} = $result_sectioning{'fonttextsize'}{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[0];
$result_sectioning{'fonttextsize'}{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'fonttextsize'}{'section_childs'}[0]{'section_childs'}[0];
$result_sectioning{'fonttextsize'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'fonttextsize'}{'section_childs'}[0];
$result_sectioning{'fonttextsize'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'fonttextsize'}{'section_childs'}[0];
$result_sectioning{'fonttextsize'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'fonttextsize'}{'section_childs'}[0];
$result_sectioning{'fonttextsize'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'fonttextsize'};

$result_nodes{'fonttextsize'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 0
    },
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'node_next' => {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'chapter',
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'level' => 1,
        'number' => 1
      },
      'normalized' => 'chapter',
      'spaces_before_argument' => ' '
    },
    'node_prev' => {},
    'node_up' => {}
  }
};
$result_nodes{'fonttextsize'}{'node_next'}{'node_prev'} = $result_nodes{'fonttextsize'};
$result_nodes{'fonttextsize'}{'node_next'}{'node_up'} = $result_nodes{'fonttextsize'};

$result_menus{'fonttextsize'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'fonttextsize'} = [
  {
    'error_line' => ':16: warning: multiple @fonttextsize
',
    'file_name' => '',
    'line_nr' => 16,
    'macro' => '',
    'text' => 'multiple @fonttextsize',
    'type' => 'warning'
  },
  {
    'error_line' => ':21: warning: multiple @fonttextsize
',
    'file_name' => '',
    'line_nr' => 21,
    'macro' => '',
    'text' => 'multiple @fonttextsize',
    'type' => 'warning'
  },
  {
    'error_line' => ':21: Only @fonttextsize 10 or 11 is supported, not `8\'
',
    'file_name' => '',
    'line_nr' => 21,
    'macro' => '',
    'text' => 'Only @fonttextsize 10 or 11 is supported, not `8\'',
    'type' => 'error'
  },
  {
    'error_line' => ':26: warning: multiple @fonttextsize
',
    'file_name' => '',
    'line_nr' => 26,
    'macro' => '',
    'text' => 'multiple @fonttextsize',
    'type' => 'warning'
  },
  {
    'error_line' => ':26: Only @fonttextsize 10 or 11 is supported, not `15\'
',
    'file_name' => '',
    'line_nr' => 26,
    'macro' => '',
    'text' => 'Only @fonttextsize 10 or 11 is supported, not `15\'',
    'type' => 'error'
  }
];


$result_floats{'fonttextsize'} = {};



$result_converted{'latex'}->{'fonttextsize'} = '
\\changefontsize{10}

\\chapter{Chapter}
\\label{anchor:chapter}%

\\section{section}

\\subsection{Subsection 10pts}
In 10pts

\\changefontsize{11}
\\subsection{Subsection 11pts}

In 11pts

\\subsection{Subsection 8pts}

In 8pts

\\subsection{Subsection 15pts}

In 15pts
';

1;
