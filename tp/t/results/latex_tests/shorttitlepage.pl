use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'shorttitlepage'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'shorttitlepage.info'
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
            'text_arg' => 'shorttitlepage.info'
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
                  'text' => 'the title with shorttitlepage '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' it can be long'
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
          'cmdname' => 'shorttitlepage',
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'In chapter
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
        'line_nr' => 9,
        'macro' => ''
      },
      'number' => 1,
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[0];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[2];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0];
$result_trees{'shorttitlepage'}{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'};
$result_trees{'shorttitlepage'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[1]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[1];
$result_trees{'shorttitlepage'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'shorttitlepage'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'shorttitlepage'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'shorttitlepage'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'shorttitlepage'}{'contents'}[1]{'parent'} = $result_trees{'shorttitlepage'};
$result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[2];
$result_trees{'shorttitlepage'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[2];
$result_trees{'shorttitlepage'}{'contents'}[2]{'parent'} = $result_trees{'shorttitlepage'};
$result_trees{'shorttitlepage'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[3]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[3];
$result_trees{'shorttitlepage'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'shorttitlepage'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'shorttitlepage'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'shorttitlepage'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'shorttitlepage'}{'contents'}[3]{'parent'} = $result_trees{'shorttitlepage'};
$result_trees{'shorttitlepage'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[4]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[4];
$result_trees{'shorttitlepage'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[4];
$result_trees{'shorttitlepage'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[4]{'contents'}[1];
$result_trees{'shorttitlepage'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[4];
$result_trees{'shorttitlepage'}{'contents'}[4]{'parent'} = $result_trees{'shorttitlepage'};

$result_texis{'shorttitlepage'} = '@setfilename shorttitlepage.info

@shorttitlepage the title with shorttitlepage @* it can be long

@node Top
@top section top

@node chapter
@chapter Chapter

In chapter
';


$result_texts{'shorttitlepage'} = '

section top
***********

1 Chapter
*********

In chapter
';

$result_sectioning{'shorttitlepage'} = {
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
        }
      ],
      'section_up' => {}
    }
  ]
};
$result_sectioning{'shorttitlepage'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'shorttitlepage'}{'section_childs'}[0];
$result_sectioning{'shorttitlepage'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'shorttitlepage'}{'section_childs'}[0];
$result_sectioning{'shorttitlepage'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'shorttitlepage'}{'section_childs'}[0];
$result_sectioning{'shorttitlepage'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'shorttitlepage'};

$result_nodes{'shorttitlepage'} = {
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
$result_nodes{'shorttitlepage'}{'node_next'}{'node_prev'} = $result_nodes{'shorttitlepage'};
$result_nodes{'shorttitlepage'}{'node_next'}{'node_up'} = $result_nodes{'shorttitlepage'};

$result_menus{'shorttitlepage'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'shorttitlepage'} = [];


$result_floats{'shorttitlepage'} = {};



$result_converted{'latex'}->{'shorttitlepage'} = '
\\begin{titlepage}
{\\raggedright {\\huge \\bfseries the title with shorttitlepage \\leavevmode{}\\\\ it can be long}}
\\newpage{}
\\phantom{blabla}\\newpage{}
\\end{titlepage}
\\GNUTexinfosetsingleheader{}%
\\GNUTexinfomainmatter

\\chapter{Chapter}
\\label{anchor:chapter}%

In chapter
';

1;
