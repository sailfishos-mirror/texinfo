use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'titlepage_in_top_node'} = {
  'contents' => [
    {
      'contents' => [],
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
              'text' => 'top sectionning'
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
              'text' => 'In top
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
          'cmdname' => 'titlepage',
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
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'the TTitle'
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
              'cmdname' => 'title',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 7,
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
                      'text' => 'titlepage'
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
                'command_argument' => 'titlepage',
                'spaces_before_argument' => ' ',
                'text_arg' => 'titlepage'
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
            'end_command' => {}
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 6,
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
      'level' => 0,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 2,
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
            'normalized' => 'chap'
          }
        ],
        'normalized' => 'chap',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 10,
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
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'in chap
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
      'level' => 1,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 11,
        'macro' => ''
      },
      'number' => 1,
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'titlepage_in_top_node'}{'contents'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'};
$result_trees{'titlepage_in_top_node'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[1]{'args'}[0];
$result_trees{'titlepage_in_top_node'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[1];
$result_trees{'titlepage_in_top_node'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'titlepage_in_top_node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_in_top_node'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'titlepage_in_top_node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_in_top_node'}{'contents'}[1]{'parent'} = $result_trees{'titlepage_in_top_node'};
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2]{'args'}[0];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[1];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'command'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[2];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[2];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'parent'} = $result_trees{'titlepage_in_top_node'};
$result_trees{'titlepage_in_top_node'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[3]{'args'}[0];
$result_trees{'titlepage_in_top_node'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[3];
$result_trees{'titlepage_in_top_node'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'titlepage_in_top_node'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_in_top_node'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'titlepage_in_top_node'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_in_top_node'}{'contents'}[3]{'parent'} = $result_trees{'titlepage_in_top_node'};
$result_trees{'titlepage_in_top_node'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[4]{'args'}[0];
$result_trees{'titlepage_in_top_node'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[4];
$result_trees{'titlepage_in_top_node'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[4];
$result_trees{'titlepage_in_top_node'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[4]{'contents'}[1];
$result_trees{'titlepage_in_top_node'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[4];
$result_trees{'titlepage_in_top_node'}{'contents'}[4]{'parent'} = $result_trees{'titlepage_in_top_node'};

$result_texis{'titlepage_in_top_node'} = '@node Top
@top top sectionning

In top

@titlepage
@title the TTitle
@end titlepage

@node chap
@chapter chap

in chap
';


$result_texts{'titlepage_in_top_node'} = 'top sectionning
***************

In top


1 chap
******

in chap
';

$result_sectioning{'titlepage_in_top_node'} = {
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
                'normalized' => 'chap',
                'spaces_before_argument' => ' '
              }
            },
            'spaces_before_argument' => ' '
          },
          'level' => 1,
          'number' => 1,
          'section_up' => {},
          'toplevel_prev' => {},
          'toplevel_up' => {}
        }
      ],
      'section_up' => {}
    }
  ]
};
$result_sectioning{'titlepage_in_top_node'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'titlepage_in_top_node'}{'section_childs'}[0];
$result_sectioning{'titlepage_in_top_node'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'titlepage_in_top_node'}{'section_childs'}[0];
$result_sectioning{'titlepage_in_top_node'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'titlepage_in_top_node'}{'section_childs'}[0];
$result_sectioning{'titlepage_in_top_node'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'titlepage_in_top_node'};

$result_nodes{'titlepage_in_top_node'} = {
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
      'normalized' => 'chap',
      'spaces_before_argument' => ' '
    },
    'node_prev' => {},
    'node_up' => {}
  }
};
$result_nodes{'titlepage_in_top_node'}{'node_next'}{'node_prev'} = $result_nodes{'titlepage_in_top_node'};
$result_nodes{'titlepage_in_top_node'}{'node_next'}{'node_up'} = $result_nodes{'titlepage_in_top_node'};

$result_menus{'titlepage_in_top_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'titlepage_in_top_node'} = [];


$result_floats{'titlepage_in_top_node'} = {};



$result_converted{'latex'}->{'titlepage_in_top_node'} = '\\chapter{chap}
\\label{anchor:chap}%

in chap
';

1;
