use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'titlepage_no_title'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'titlepage_no_title.info'
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
            'text_arg' => 'titlepage_no_title.info'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          },
          'parent' => {}
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
                      'text' => 'Some manual tested'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'titlefont',
              'contents' => [],
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
'
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
                      'text' => 'Some Author'
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
              'cmdname' => 'author',
              'extra' => {
                'spaces_before_argument' => ' ',
                'titlepage' => {}
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
                'line_nr' => 6,
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
            'line_nr' => 2,
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
        'line_nr' => 11,
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
        'line_nr' => 12,
        'macro' => ''
      },
      'number' => 1,
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[0];
$result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1];
$result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1];
$result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1];
$result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1];
$result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1];
$result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'contents'}[4];
$result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'extra'}{'titlepage'} = $result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1];
$result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1];
$result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0];
$result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'contents'}[5];
$result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1];
$result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'contents'}[5];
$result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[0];
$result_trees{'titlepage_no_title'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[0];
$result_trees{'titlepage_no_title'}{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_title'};
$result_trees{'titlepage_no_title'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[1]{'args'}[0];
$result_trees{'titlepage_no_title'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[1];
$result_trees{'titlepage_no_title'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'titlepage_no_title'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_no_title'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'titlepage_no_title'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_no_title'}{'contents'}[1]{'parent'} = $result_trees{'titlepage_no_title'};
$result_trees{'titlepage_no_title'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[2]{'args'}[0];
$result_trees{'titlepage_no_title'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[2];
$result_trees{'titlepage_no_title'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[2];
$result_trees{'titlepage_no_title'}{'contents'}[2]{'parent'} = $result_trees{'titlepage_no_title'};
$result_trees{'titlepage_no_title'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[3]{'args'}[0];
$result_trees{'titlepage_no_title'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[3];
$result_trees{'titlepage_no_title'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'titlepage_no_title'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_no_title'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'titlepage_no_title'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_no_title'}{'contents'}[3]{'parent'} = $result_trees{'titlepage_no_title'};
$result_trees{'titlepage_no_title'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[4]{'args'}[0];
$result_trees{'titlepage_no_title'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[4];
$result_trees{'titlepage_no_title'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[4];
$result_trees{'titlepage_no_title'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[4]{'contents'}[1];
$result_trees{'titlepage_no_title'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'titlepage_no_title'}{'contents'}[4];
$result_trees{'titlepage_no_title'}{'contents'}[4]{'parent'} = $result_trees{'titlepage_no_title'};

$result_texis{'titlepage_no_title'} = '@setfilename titlepage_no_title.info
@titlepage
@titlefont{Some manual tested}

@author Some Author
@end titlepage

@node Top
@top section top

@node chapter
@chapter Chapter

In chapter
';


$result_texts{'titlepage_no_title'} = '
section top
***********

1 Chapter
*********

In chapter
';

$result_sectioning{'titlepage_no_title'} = {
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
$result_sectioning{'titlepage_no_title'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'titlepage_no_title'}{'section_childs'}[0];
$result_sectioning{'titlepage_no_title'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'titlepage_no_title'}{'section_childs'}[0];
$result_sectioning{'titlepage_no_title'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'titlepage_no_title'}{'section_childs'}[0];
$result_sectioning{'titlepage_no_title'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'titlepage_no_title'};

$result_nodes{'titlepage_no_title'} = {
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
$result_nodes{'titlepage_no_title'}{'node_next'}{'node_prev'} = $result_nodes{'titlepage_no_title'};
$result_nodes{'titlepage_no_title'}{'node_next'}{'node_up'} = $result_nodes{'titlepage_no_title'};

$result_menus{'titlepage_no_title'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'titlepage_no_title'} = [];


$result_floats{'titlepage_no_title'} = {};



$result_converted{'latex'}->{'titlepage_no_title'} = '\\begin{titlepage}
\\begingroup
\\newskip\\titlepagetopglue \\titlepagetopglue = 1.5in
\\newskip\\titlepagebottomglue \\titlepagebottomglue = 2pc
\\setlength{\\parindent}{0pt}
% Leave some space at the very top of the page.
    \\vglue\\titlepagetopglue
{\\huge \\bfseries Some manual tested}

\\vskip 0pt plus 1filll
\\leftline{\\Large \\bfseries Some Author}%
\\endgroup
\\end{titlepage}
\\GNUTexinfosetsingleheader{}%
\\mainmatter

\\chapter{Chapter}
\\label{anchor:chapter}%

In chapter
';

1;
