use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'titlepage_no_author'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'titlepage_no_author.info'
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
            'text_arg' => 'titlepage_no_author.info'
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
                'line_nr' => 4,
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
        'line_nr' => 10,
        'macro' => ''
      },
      'number' => 1,
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[0];
$result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[1];
$result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[1];
$result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[1];
$result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[1];
$result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[0];
$result_trees{'titlepage_no_author'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[0];
$result_trees{'titlepage_no_author'}{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_author'};
$result_trees{'titlepage_no_author'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[1]{'args'}[0];
$result_trees{'titlepage_no_author'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[1];
$result_trees{'titlepage_no_author'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'titlepage_no_author'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_no_author'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'titlepage_no_author'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_no_author'}{'contents'}[1]{'parent'} = $result_trees{'titlepage_no_author'};
$result_trees{'titlepage_no_author'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[2]{'args'}[0];
$result_trees{'titlepage_no_author'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[2];
$result_trees{'titlepage_no_author'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[2];
$result_trees{'titlepage_no_author'}{'contents'}[2]{'parent'} = $result_trees{'titlepage_no_author'};
$result_trees{'titlepage_no_author'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[3]{'args'}[0];
$result_trees{'titlepage_no_author'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[3];
$result_trees{'titlepage_no_author'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'titlepage_no_author'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_no_author'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'titlepage_no_author'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_no_author'}{'contents'}[3]{'parent'} = $result_trees{'titlepage_no_author'};
$result_trees{'titlepage_no_author'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[4]{'args'}[0];
$result_trees{'titlepage_no_author'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[4];
$result_trees{'titlepage_no_author'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[4];
$result_trees{'titlepage_no_author'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[4]{'contents'}[1];
$result_trees{'titlepage_no_author'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'titlepage_no_author'}{'contents'}[4];
$result_trees{'titlepage_no_author'}{'contents'}[4]{'parent'} = $result_trees{'titlepage_no_author'};

$result_texis{'titlepage_no_author'} = '@setfilename titlepage_no_author.info
@titlepage
@title Some manual tested
@end titlepage

@node Top
@top section top

@node chapter
@chapter Chapter

In chapter
';


$result_texts{'titlepage_no_author'} = '
section top
***********

1 Chapter
*********

In chapter
';

$result_sectioning{'titlepage_no_author'} = {
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
$result_sectioning{'titlepage_no_author'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'titlepage_no_author'}{'section_childs'}[0];
$result_sectioning{'titlepage_no_author'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'titlepage_no_author'}{'section_childs'}[0];
$result_sectioning{'titlepage_no_author'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'titlepage_no_author'}{'section_childs'}[0];
$result_sectioning{'titlepage_no_author'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'titlepage_no_author'};

$result_nodes{'titlepage_no_author'} = {
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
$result_nodes{'titlepage_no_author'}{'node_next'}{'node_prev'} = $result_nodes{'titlepage_no_author'};
$result_nodes{'titlepage_no_author'}{'node_next'}{'node_up'} = $result_nodes{'titlepage_no_author'};

$result_menus{'titlepage_no_author'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'titlepage_no_author'} = [];


$result_floats{'titlepage_no_author'} = {};



$result_converted{'latex'}->{'titlepage_no_author'} = '\\begin{titlepage}
\\begingroup
\\newskip\\titlepagetopglue \\titlepagetopglue = 1.5in
\\newskip\\titlepagebottomglue \\titlepagebottomglue = 2pc
\\setlength{\\parindent}{0pt}
% Leave some space at the very top of the page.
    \\vglue\\titlepagetopglue
{\\raggedright {\\huge \\bfseries Some manual tested}}
\\vskip 4pt \\hrule height 4pt width \\hsize \\vskip 4pt
\\vskip4pt \\hrule height 2pt width \\hsize
  \\vskip\\titlepagebottomglue
\\endgroup
\\end{titlepage}
\\GNUTexinfosetsingleheader{}%
\\mainmatter

\\chapter{Chapter}
\\label{anchor:chapter}%

In chapter
';

1;
