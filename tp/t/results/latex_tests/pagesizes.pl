use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'pagesizes'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'pagesizes.info'
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
            'text_arg' => 'pagesizes.info'
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
                  'text' => '200mm,150mm'
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
          'cmdname' => 'pagesizes',
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
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '11.5in'
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
          'cmdname' => 'pagesizes',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 11,
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
              'text' => 'other pagesizes'
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => ', 130mm'
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
          'cmdname' => 'pagesizes',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 15,
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
                  'text' => ','
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
          'cmdname' => 'pagesizes',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 17,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 1,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 13,
        'macro' => ''
      },
      'number' => 2,
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0];
$result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[0];
$result_trees{'pagesizes'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'pagesizes'}{'contents'}[0];
$result_trees{'pagesizes'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'pagesizes'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[0]{'contents'}[2];
$result_trees{'pagesizes'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'pagesizes'}{'contents'}[0];
$result_trees{'pagesizes'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'pagesizes'}{'contents'}[0];
$result_trees{'pagesizes'}{'contents'}[0]{'parent'} = $result_trees{'pagesizes'};
$result_trees{'pagesizes'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[1]{'args'}[0];
$result_trees{'pagesizes'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[1];
$result_trees{'pagesizes'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'pagesizes'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'pagesizes'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'pagesizes'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'pagesizes'}{'contents'}[1]{'parent'} = $result_trees{'pagesizes'};
$result_trees{'pagesizes'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[2]{'args'}[0];
$result_trees{'pagesizes'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[2];
$result_trees{'pagesizes'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[2];
$result_trees{'pagesizes'}{'contents'}[2]{'parent'} = $result_trees{'pagesizes'};
$result_trees{'pagesizes'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[3]{'args'}[0];
$result_trees{'pagesizes'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[3];
$result_trees{'pagesizes'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'pagesizes'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'pagesizes'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'pagesizes'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'pagesizes'}{'contents'}[3]{'parent'} = $result_trees{'pagesizes'};
$result_trees{'pagesizes'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[4]{'args'}[0];
$result_trees{'pagesizes'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[4];
$result_trees{'pagesizes'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[4];
$result_trees{'pagesizes'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'pagesizes'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[4]{'contents'}[1];
$result_trees{'pagesizes'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'pagesizes'}{'contents'}[4];
$result_trees{'pagesizes'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'pagesizes'}{'contents'}[4];
$result_trees{'pagesizes'}{'contents'}[4]{'parent'} = $result_trees{'pagesizes'};
$result_trees{'pagesizes'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[5]{'args'}[0];
$result_trees{'pagesizes'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[5];
$result_trees{'pagesizes'}{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[5];
$result_trees{'pagesizes'}{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'pagesizes'}{'contents'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[5]{'contents'}[1];
$result_trees{'pagesizes'}{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'pagesizes'}{'contents'}[5];
$result_trees{'pagesizes'}{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'pagesizes'}{'contents'}[5];
$result_trees{'pagesizes'}{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[5]{'contents'}[3]{'args'}[0];
$result_trees{'pagesizes'}{'contents'}[5]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[5]{'contents'}[3];
$result_trees{'pagesizes'}{'contents'}[5]{'contents'}[3]{'parent'} = $result_trees{'pagesizes'}{'contents'}[5];
$result_trees{'pagesizes'}{'contents'}[5]{'parent'} = $result_trees{'pagesizes'};

$result_texis{'pagesizes'} = '@setfilename pagesizes.info

@pagesizes 200mm,150mm

@node Top
@top section top

@node chapter
@chapter Chapter

@pagesizes 11.5in

@chapter other pagesizes

@pagesizes , 130mm

@pagesizes , 
';


$result_texts{'pagesizes'} = '

section top
***********

1 Chapter
*********


2 other pagesizes
*****************


';

$result_sectioning{'pagesizes'} = {
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
          'section_up' => {},
          'toplevel_prev' => {},
          'toplevel_up' => {}
        },
        {
          'cmdname' => 'chapter',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'level' => 1,
          'number' => 2,
          'section_prev' => {},
          'section_up' => {},
          'toplevel_prev' => {},
          'toplevel_up' => {}
        }
      ],
      'section_up' => {}
    }
  ]
};
$result_sectioning{'pagesizes'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'pagesizes'}{'section_childs'}[0];
$result_sectioning{'pagesizes'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'pagesizes'}{'section_childs'}[0];
$result_sectioning{'pagesizes'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'pagesizes'}{'section_childs'}[0];
$result_sectioning{'pagesizes'}{'section_childs'}[0]{'section_childs'}[1]{'section_prev'} = $result_sectioning{'pagesizes'}{'section_childs'}[0]{'section_childs'}[0];
$result_sectioning{'pagesizes'}{'section_childs'}[0]{'section_childs'}[1]{'section_up'} = $result_sectioning{'pagesizes'}{'section_childs'}[0];
$result_sectioning{'pagesizes'}{'section_childs'}[0]{'section_childs'}[1]{'toplevel_prev'} = $result_sectioning{'pagesizes'}{'section_childs'}[0]{'section_childs'}[0];
$result_sectioning{'pagesizes'}{'section_childs'}[0]{'section_childs'}[1]{'toplevel_up'} = $result_sectioning{'pagesizes'}{'section_childs'}[0];
$result_sectioning{'pagesizes'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'pagesizes'};

$result_nodes{'pagesizes'} = {
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
$result_nodes{'pagesizes'}{'node_next'}{'node_prev'} = $result_nodes{'pagesizes'};
$result_nodes{'pagesizes'}{'node_next'}{'node_up'} = $result_nodes{'pagesizes'};

$result_menus{'pagesizes'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'pagesizes'} = [
  {
    'error_line' => ':11: warning: multiple @pagesizes
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => '',
    'text' => 'multiple @pagesizes',
    'type' => 'warning'
  },
  {
    'error_line' => ':15: warning: multiple @pagesizes
',
    'file_name' => '',
    'line_nr' => 15,
    'macro' => '',
    'text' => 'multiple @pagesizes',
    'type' => 'warning'
  },
  {
    'error_line' => ':17: warning: multiple @pagesizes
',
    'file_name' => '',
    'line_nr' => 17,
    'macro' => '',
    'text' => 'multiple @pagesizes',
    'type' => 'warning'
  }
];


$result_floats{'pagesizes'} = {};



$result_converted{'latex'}->{'pagesizes'} = '
\\newgeometry{textheight=200mm,textwidth=150mm}

\\chapter{Chapter}
\\label{anchor:chapter}%

\\newgeometry{textheight=11.5in}

\\chapter{other pagesizes}

\\newgeometry{textwidth=130mm}

';

1;
