use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'anchor_before_top'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_beginning'
        },
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'a before Top'
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'anchor',
          'contents' => [],
          'extra' => {
            'node_content' => [
              {}
            ],
            'normalized' => 'a-before-Top'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 2,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'spaces_after_close_brace'
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 4,
        'macro' => ''
      }
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 5,
        'macro' => ''
      }
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
            'normalized' => 'Chapter'
          }
        ],
        'normalized' => 'Chapter',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
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
                      'parent' => {},
                      'text' => 'a before Top'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'pxref',
              'contents' => [],
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'a-before-Top'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 8,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'anchor_before_top'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[0]{'contents'}[0];
$result_trees{'anchor_before_top'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[0];
$result_trees{'anchor_before_top'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[0];
$result_trees{'anchor_before_top'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'anchor_before_top'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[0]{'contents'}[2];
$result_trees{'anchor_before_top'}{'contents'}[0]{'contents'}[2]{'extra'}{'node_content'}[0] = $result_trees{'anchor_before_top'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_before_top'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[0];
$result_trees{'anchor_before_top'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[0];
$result_trees{'anchor_before_top'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[0];
$result_trees{'anchor_before_top'}{'contents'}[0]{'parent'} = $result_trees{'anchor_before_top'};
$result_trees{'anchor_before_top'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[1]{'args'}[0];
$result_trees{'anchor_before_top'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[1];
$result_trees{'anchor_before_top'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'anchor_before_top'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_before_top'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'anchor_before_top'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_before_top'}{'contents'}[1]{'parent'} = $result_trees{'anchor_before_top'};
$result_trees{'anchor_before_top'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[2]{'args'}[0];
$result_trees{'anchor_before_top'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[2];
$result_trees{'anchor_before_top'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[2];
$result_trees{'anchor_before_top'}{'contents'}[2]{'parent'} = $result_trees{'anchor_before_top'};
$result_trees{'anchor_before_top'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[3]{'args'}[0];
$result_trees{'anchor_before_top'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[3];
$result_trees{'anchor_before_top'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'anchor_before_top'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_before_top'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'anchor_before_top'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_before_top'}{'contents'}[3]{'parent'} = $result_trees{'anchor_before_top'};
$result_trees{'anchor_before_top'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[4]{'args'}[0];
$result_trees{'anchor_before_top'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[4];
$result_trees{'anchor_before_top'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[4];
$result_trees{'anchor_before_top'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'anchor_before_top'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'anchor_before_top'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'label'} = $result_trees{'anchor_before_top'}{'contents'}[0]{'contents'}[2];
$result_trees{'anchor_before_top'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'anchor_before_top'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_before_top'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[4]{'contents'}[1];
$result_trees{'anchor_before_top'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[4]{'contents'}[1];
$result_trees{'anchor_before_top'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'anchor_before_top'}{'contents'}[4];
$result_trees{'anchor_before_top'}{'contents'}[4]{'parent'} = $result_trees{'anchor_before_top'};

$result_texis{'anchor_before_top'} = '
@anchor{a before Top}

@node Top
@top top

@node Chapter
@chapter Chap

@pxref{a before Top}
';


$result_texts{'anchor_before_top'} = '
top
***

1 Chap
******

a before Top
';

$result_sectioning{'anchor_before_top'} = {
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
                    'normalized' => 'Chapter'
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
$result_sectioning{'anchor_before_top'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'anchor_before_top'}{'structure'}{'section_childs'}[0];
$result_sectioning{'anchor_before_top'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'anchor_before_top'}{'structure'}{'section_childs'}[0];
$result_sectioning{'anchor_before_top'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'anchor_before_top'}{'structure'}{'section_childs'}[0];
$result_sectioning{'anchor_before_top'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'anchor_before_top'};

$result_nodes{'anchor_before_top'} = {
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
        'normalized' => 'Chapter'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'anchor_before_top'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'anchor_before_top'};
$result_nodes{'anchor_before_top'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'anchor_before_top'};

$result_menus{'anchor_before_top'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'anchor_before_top'} = [];


$result_floats{'anchor_before_top'} = {};



$result_converted{'latex_text'}->{'anchor_before_top'} = '\\begin{document}
\\label{anchor:a-before-Top}%

\\label{anchor:Top}%
\\chapter{{Chap}}
\\label{anchor:Chapter}%

see \\hyperref[anchor:a-before-Top]{[a before Top], page~\\pageref*{anchor:a-before-Top}}
';

1;
