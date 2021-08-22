use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'titlepage_classical'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'titlepage_classical.info'
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
            'text_arg' => 'titlepage_classical.info'
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
          'cmdname' => 'copying',
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in Copying
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'copying'
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
                'command_argument' => 'copying',
                'spaces_before_argument' => ' ',
                'text_arg' => 'copying'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 5,
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
                      'text' => 'Subtitle manual tested'
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
              'cmdname' => 'subtitle',
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
                      'text' => 'Subtitle 2 manual tested'
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
              'cmdname' => 'subtitle',
              'extra' => {
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
                      'text' => 'First author'
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
                      'text' => 'Second author'
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
                'line_nr' => 12,
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
                  'parent' => {},
                  'text' => '
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'page',
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' The following two commands start the copyright page.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' The following two commands start the copyright page.
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'page',
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' 0pt plus 1filll
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'vskip',
              'extra' => {
                'misc_args' => [
                  ' 0pt plus 1filll
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'insertcopying',
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 18,
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
                'line_nr' => 19,
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
            'line_nr' => 7,
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
        'line_nr' => 21,
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
        'line_nr' => 22,
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
        'line_nr' => 24,
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
        'line_nr' => 25,
        'macro' => ''
      },
      'number' => 1,
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'command'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[2];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[2];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[2];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[2];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'extra'}{'command'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[2];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[3];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[4];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[4]{'extra'}{'titlepage'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[5];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[5]{'extra'}{'titlepage'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[7];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[8];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[8]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[9];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[9]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[10];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[11];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[11]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[12]{'args'}[0];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[12];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[12]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'contents'}[12];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0];
$result_trees{'titlepage_classical'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[0];
$result_trees{'titlepage_classical'}{'contents'}[0]{'parent'} = $result_trees{'titlepage_classical'};
$result_trees{'titlepage_classical'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[1]{'args'}[0];
$result_trees{'titlepage_classical'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[1];
$result_trees{'titlepage_classical'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'titlepage_classical'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_classical'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'titlepage_classical'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_classical'}{'contents'}[1]{'parent'} = $result_trees{'titlepage_classical'};
$result_trees{'titlepage_classical'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[2]{'args'}[0];
$result_trees{'titlepage_classical'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[2];
$result_trees{'titlepage_classical'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[2];
$result_trees{'titlepage_classical'}{'contents'}[2]{'parent'} = $result_trees{'titlepage_classical'};
$result_trees{'titlepage_classical'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[3]{'args'}[0];
$result_trees{'titlepage_classical'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[3];
$result_trees{'titlepage_classical'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'titlepage_classical'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_classical'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'titlepage_classical'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_classical'}{'contents'}[3]{'parent'} = $result_trees{'titlepage_classical'};
$result_trees{'titlepage_classical'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[4]{'args'}[0];
$result_trees{'titlepage_classical'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[4];
$result_trees{'titlepage_classical'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[4];
$result_trees{'titlepage_classical'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[4]{'contents'}[1];
$result_trees{'titlepage_classical'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[4];
$result_trees{'titlepage_classical'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'titlepage_classical'}{'contents'}[4];
$result_trees{'titlepage_classical'}{'contents'}[4]{'parent'} = $result_trees{'titlepage_classical'};

$result_texis{'titlepage_classical'} = '@setfilename titlepage_classical.info

@copying
in Copying
@end copying

@titlepage
@title Some manual tested
@subtitle Subtitle manual tested
@subtitle Subtitle 2 manual tested
@author First author
@author Second author

@page
@c The following two commands start the copyright page.
@page
@vskip 0pt plus 1filll
@insertcopying
@end titlepage

@node Top
@top section top

@node chapter
@chapter Chapter

In chapter

';


$result_texts{'titlepage_classical'} = '


section top
***********

1 Chapter
*********

In chapter

';

$result_sectioning{'titlepage_classical'} = {
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
$result_sectioning{'titlepage_classical'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'titlepage_classical'}{'section_childs'}[0];
$result_sectioning{'titlepage_classical'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'titlepage_classical'}{'section_childs'}[0];
$result_sectioning{'titlepage_classical'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'titlepage_classical'}{'section_childs'}[0];
$result_sectioning{'titlepage_classical'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'titlepage_classical'};

$result_nodes{'titlepage_classical'} = {
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
$result_nodes{'titlepage_classical'}{'node_next'}{'node_prev'} = $result_nodes{'titlepage_classical'};
$result_nodes{'titlepage_classical'}{'node_next'}{'node_up'} = $result_nodes{'titlepage_classical'};

$result_menus{'titlepage_classical'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'titlepage_classical'} = [];


$result_floats{'titlepage_classical'} = {};



$result_converted{'latex'}->{'titlepage_classical'} = '

\\begin{titlepage}
\\begingroup
\\newskip\\titlepagetopglue \\titlepagetopglue = 1.5in
\\newskip\\titlepagebottomglue \\titlepagebottomglue = 2pc
\\setlength{\\parindent}{0pt}
% Leave some space at the very top of the page.
    \\vglue\\titlepagetopglue
{\\raggedright {\\huge \\bfseries Some manual tested}}
\\vskip 4pt \\hrule height 4pt width \\hsize \\vskip 4pt
\\rightline{Subtitle manual tested}
\\rightline{Subtitle 2 manual tested}
\\vskip 0pt plus 1filll
\\leftline{\\Large \\bfseries First author}%
\\leftline{\\Large \\bfseries Second author}%

\\vskip4pt \\hrule height 2pt width \\hsize
  \\vskip\\titlepagebottomglue
\\newpage{}%
\\phantom{blabla}%
\\newpage{}%
\\phantom{blabla}%
\\vskip 0pt plus 1filll
in Copying
\\endgroup
\\end{titlepage}
\\GNUTexinfosetsingleheader{}%
\\GNUTexinfomainmatter

\\chapter{Chapter}
\\label{anchor:chapter}%

In chapter

';

1;
