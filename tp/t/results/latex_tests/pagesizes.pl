use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'pagesizes'} = {
  'contents' => [
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
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 9,
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
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 13,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0];
$result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0];
$result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0];
$result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0];
$result_trees{'pagesizes'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'pagesizes'}{'contents'}[0];
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
                    'normalized' => 'chapter'
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
            },
            {
              'cmdname' => 'chapter',
              'extra' => {},
              'structure' => {
                'section_level' => 1,
                'section_number' => 2,
                'section_prev' => {},
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
$result_sectioning{'pagesizes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'pagesizes'}{'structure'}{'section_childs'}[0];
$result_sectioning{'pagesizes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'pagesizes'}{'structure'}{'section_childs'}[0];
$result_sectioning{'pagesizes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'pagesizes'}{'structure'}{'section_childs'}[0];
$result_sectioning{'pagesizes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'pagesizes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'pagesizes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'pagesizes'}{'structure'}{'section_childs'}[0];
$result_sectioning{'pagesizes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_prev'} = $result_sectioning{'pagesizes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'pagesizes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_up'} = $result_sectioning{'pagesizes'}{'structure'}{'section_childs'}[0];
$result_sectioning{'pagesizes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'pagesizes'};

$result_nodes{'pagesizes'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  },
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'normalized' => 'chapter'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'pagesizes'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'pagesizes'};
$result_nodes{'pagesizes'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'pagesizes'};

$result_menus{'pagesizes'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
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

\\begin{document}
\\chapter{Chapter}
\\label{anchor:chapter}%

\\newgeometry{textheight=11.5in}

\\chapter{other pagesizes}

\\newgeometry{textwidth=130mm}

';

1;
