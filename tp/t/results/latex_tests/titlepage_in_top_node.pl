use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'titlepage_in_top_node'} = {
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
                      'text' => 'titlepage_in_top_node.info'
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
                'text_arg' => 'titlepage_in_top_node.info'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
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
        'file_name' => '',
        'line_nr' => 3,
        'macro' => ''
      }
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
          'cmdname' => 'titlepage',
          'contents' => [
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
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
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
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 8,
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 12,
        'macro' => ''
      }
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 13,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'titlepage_in_top_node'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'titlepage_in_top_node'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_in_top_node'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_in_top_node'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_in_top_node'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[0];
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
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3];
$result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'titlepage_in_top_node'}{'contents'}[2]{'contents'}[3]{'contents'}[1];
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

$result_texis{'titlepage_in_top_node'} = '@setfilename titlepage_in_top_node.info

@node Top
@top top sectionning

In top

@titlepage
@title the TTitle
@end titlepage

@node chap
@chapter chap

in chap
';


$result_texts{'titlepage_in_top_node'} = '
top sectionning
***************

In top


1 chap
******

in chap
';

$result_sectioning{'titlepage_in_top_node'} = {
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
                    'normalized' => 'chap'
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
$result_sectioning{'titlepage_in_top_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'titlepage_in_top_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'titlepage_in_top_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'titlepage_in_top_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'titlepage_in_top_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'titlepage_in_top_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'titlepage_in_top_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'titlepage_in_top_node'};

$result_nodes{'titlepage_in_top_node'} = {
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
        'normalized' => 'chap'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'titlepage_in_top_node'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'titlepage_in_top_node'};
$result_nodes{'titlepage_in_top_node'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'titlepage_in_top_node'};

$result_menus{'titlepage_in_top_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'titlepage_in_top_node'} = [];


$result_floats{'titlepage_in_top_node'} = {};



$result_converted{'latex_text'}->{'titlepage_in_top_node'} = '
\\begin{document}

\\GNUTexinfofrontmatter
\\begin{titlepage}
\\begingroup
\\newskip\\titlepagetopglue \\titlepagetopglue = 1.5in
\\newskip\\titlepagebottomglue \\titlepagebottomglue = 2pc
\\setlength{\\parindent}{0pt}
% Leave some space at the very top of the page.
    \\vglue\\titlepagetopglue
{\\raggedright {\\huge \\bfseries the TTitle}}
\\vskip 4pt \\hrule height 4pt width \\hsize \\vskip 4pt
\\vskip4pt \\hrule height 2pt width \\hsize
  \\vskip\\titlepagebottomglue
\\endgroup
\\end{titlepage}
\\GNUTexinfosetsingleheader{}%
\\GNUTexinfomainmatter
\\label{anchor:Top}%
\\chapter{{chap}}
\\label{anchor:chap}%

in chap
';

1;
