use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'informative_commands_in_top_node'} = {
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
                      'text' => 'informative_commands_in_top_node.info'
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
                'text_arg' => 'informative_commands_in_top_node.info'
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '5'
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
          'cmdname' => 'paragraphindent',
          'extra' => {
            'misc_args' => [
              '5'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 6,
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
              'contents' => [
                {
                  'cmdname' => 'thischapter',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => 'thistitle',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '|',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => 'thisfile',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '|',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'thischaptername',
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'code',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 8,
                    'macro' => ''
                  }
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
          'cmdname' => 'evenfooting',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 8,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '2'
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
          'cmdname' => 'paragraphindent',
          'extra' => {
            'misc_args' => [
              '2'
            ],
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
              'text' => 'next node'
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
            'normalized' => 'next-node'
          }
        ],
        'normalized' => 'next-node',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 11,
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 12,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'informative_commands_in_top_node'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[0]{'contents'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[0]{'contents'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'};
$result_trees{'informative_commands_in_top_node'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[1]{'args'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[1];
$result_trees{'informative_commands_in_top_node'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'informative_commands_in_top_node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'informative_commands_in_top_node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[1]{'parent'} = $result_trees{'informative_commands_in_top_node'};
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'args'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[1];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[10];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[4]{'args'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[4];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[2];
$result_trees{'informative_commands_in_top_node'}{'contents'}[2]{'parent'} = $result_trees{'informative_commands_in_top_node'};
$result_trees{'informative_commands_in_top_node'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[3]{'args'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[3];
$result_trees{'informative_commands_in_top_node'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'informative_commands_in_top_node'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'informative_commands_in_top_node'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[3]{'parent'} = $result_trees{'informative_commands_in_top_node'};
$result_trees{'informative_commands_in_top_node'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[4]{'args'}[0];
$result_trees{'informative_commands_in_top_node'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[4];
$result_trees{'informative_commands_in_top_node'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[4];
$result_trees{'informative_commands_in_top_node'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[4]{'contents'}[1];
$result_trees{'informative_commands_in_top_node'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'informative_commands_in_top_node'}{'contents'}[4];
$result_trees{'informative_commands_in_top_node'}{'contents'}[4]{'parent'} = $result_trees{'informative_commands_in_top_node'};

$result_texis{'informative_commands_in_top_node'} = '@setfilename informative_commands_in_top_node.info

@node Top
@top top sectionning

@paragraphindent 5

@evenfooting @thischapter @thistitle @| @thisfile @| @code{@thischaptername}
@paragraphindent 2

@node next node
@chapter chap

In chapter
';


$result_texts{'informative_commands_in_top_node'} = '
top sectionning
***************



1 chap
******

In chapter
';

$result_sectioning{'informative_commands_in_top_node'} = {
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
                    'normalized' => 'next-node'
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
$result_sectioning{'informative_commands_in_top_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'informative_commands_in_top_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'informative_commands_in_top_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'informative_commands_in_top_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'informative_commands_in_top_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'informative_commands_in_top_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'informative_commands_in_top_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'informative_commands_in_top_node'};

$result_nodes{'informative_commands_in_top_node'} = {
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
        'normalized' => 'next-node'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'informative_commands_in_top_node'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'informative_commands_in_top_node'};
$result_nodes{'informative_commands_in_top_node'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'informative_commands_in_top_node'};

$result_menus{'informative_commands_in_top_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'informative_commands_in_top_node'} = [];


$result_floats{'informative_commands_in_top_node'} = {};



$result_converted{'latex'}->{'informative_commands_in_top_node'} = '
\\begin{document}
\\setlength{\\parindent}{5em}
\\newpagestyle{custom}{%
\\setfoot[\\chaptername{} \\thechapter{} \\chaptertitle{} \\GNUTexinfosettitle{}][][\\texttt{\\chaptertitle{}}]%
{}{}{}%
}%
\\pagestyle{custom}%
\\setlength{\\parindent}{2em}
\\chapter{chap}
\\label{anchor:next-node}%

In chapter
';

1;
