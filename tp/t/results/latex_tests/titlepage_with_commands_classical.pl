use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'titlepage_with_commands_classical'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'copying',
              'contents' => [
                {
                  'contents' => [
                    {
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => '
'
                        }
                      },
                      'type' => 'block_line_arg'
                    }
                  ],
                  'type' => 'argument'
                },
                {
                  'contents' => [
                    {
                      'text' => 'in Copying
'
                    }
                  ],
                  'type' => 'paragraph'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'copying'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => '
'
                        }
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'extra' => {
                    'text_arg' => 'copying'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 3
                  }
                }
              ],
              'source_info' => {
                'line_nr' => 1
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'titlepage',
              'contents' => [
                {
                  'contents' => [
                    {
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => '
'
                        }
                      },
                      'type' => 'block_line_arg'
                    }
                  ],
                  'type' => 'argument'
                },
                {
                  'cmdname' => 'title',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'Some manual '
                        },
                        {
                          'cmdname' => '*'
                        },
                        {
                          'text' => ' tested'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => '
'
                        }
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 6
                  }
                },
                {
                  'cmdname' => 'subtitle',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'Subtitle manual '
                        },
                        {
                          'cmdname' => '*'
                        },
                        {
                          'text' => ' tested'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => '
'
                        }
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'extra' => {},
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 7
                  }
                },
                {
                  'cmdname' => 'subtitle',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'Subtitle 2 manual '
                        },
                        {
                          'cmdname' => '*'
                        },
                        {
                          'text' => ' tested'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => '
'
                        }
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'extra' => {},
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 8
                  }
                },
                {
                  'cmdname' => 'author',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'First '
                        },
                        {
                          'cmdname' => '*'
                        },
                        {
                          'text' => ' author'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => '
'
                        }
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'extra' => {
                    'titlepage' => {}
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 9
                  }
                },
                {
                  'cmdname' => 'author',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'Second '
                        },
                        {
                          'cmdname' => '*'
                        },
                        {
                          'text' => ' author'
                        },
                        {
                          'cmdname' => 'footnote',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'Something
'
                                    },
                                    {
                                      'text' => 'about the address of author.
'
                                    }
                                  ],
                                  'type' => 'paragraph'
                                },
                                {
                                  'text' => '
',
                                  'type' => 'empty_line'
                                },
                                {
                                  'contents' => [
                                    {
                                      'text' => 'Something about the life. 
'
                                    }
                                  ],
                                  'type' => 'paragraph'
                                },
                                {
                                  'cmdname' => 'displaymath',
                                  'contents' => [
                                    {
                                      'contents' => [
                                        {
                                          'info' => {
                                            'spaces_after_argument' => {
                                              'text' => '
'
                                            }
                                          },
                                          'type' => 'block_line_arg'
                                        }
                                      ],
                                      'type' => 'argument'
                                    },
                                    {
                                      'text' => '\\frac'
                                    },
                                    {
                                      'contents' => [
                                        {
                                          'text' => '{a}'
                                        }
                                      ],
                                      'source_info' => {
                                        'line_nr' => 15
                                      },
                                      'type' => 'balanced_braces'
                                    },
                                    {
                                      'contents' => [
                                        {
                                          'text' => '{b}'
                                        }
                                      ],
                                      'source_info' => {
                                        'line_nr' => 15
                                      },
                                      'type' => 'balanced_braces'
                                    },
                                    {
                                      'text' => '
'
                                    },
                                    {
                                      'cmdname' => 'end',
                                      'contents' => [
                                        {
                                          'contents' => [
                                            {
                                              'text' => 'displaymath'
                                            }
                                          ],
                                          'info' => {
                                            'spaces_after_argument' => {
                                              'text' => '
'
                                            }
                                          },
                                          'type' => 'line_arg'
                                        }
                                      ],
                                      'extra' => {
                                        'text_arg' => 'displaymath'
                                      },
                                      'info' => {
                                        'spaces_before_argument' => {
                                          'text' => ' '
                                        }
                                      },
                                      'source_info' => {
                                        'line_nr' => 16
                                      }
                                    }
                                  ],
                                  'source_info' => {
                                    'line_nr' => 14
                                  }
                                }
                              ],
                              'type' => 'brace_command_context'
                            }
                          ],
                          'extra' => {},
                          'source_info' => {
                            'line_nr' => 10
                          }
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => '
'
                        }
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'extra' => {
                    'titlepage' => {}
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 10
                  }
                },
                {
                  'cmdname' => 'page',
                  'contents' => [
                    {
                      'text' => '
',
                      'type' => 'rawline_arg'
                    }
                  ]
                },
                {
                  'cmdname' => 'c',
                  'contents' => [
                    {
                      'text' => ' The following two commands start the copyright page.
',
                      'type' => 'rawline_arg'
                    }
                  ]
                },
                {
                  'cmdname' => 'page',
                  'contents' => [
                    {
                      'text' => '
',
                      'type' => 'rawline_arg'
                    }
                  ]
                },
                {
                  'cmdname' => 'vskip',
                  'contents' => [
                    {
                      'text' => ' 0pt plus 1filll
',
                      'type' => 'rawline_arg'
                    }
                  ]
                },
                {
                  'cmdname' => 'insertcopying',
                  'contents' => [
                    {
                      'text' => '
',
                      'type' => 'rawline_arg'
                    }
                  ],
                  'extra' => {},
                  'source_info' => {
                    'line_nr' => 22
                  }
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'titlepage'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => '
'
                        }
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'extra' => {
                    'text_arg' => 'titlepage'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 23
                  }
                }
              ],
              'source_info' => {
                'line_nr' => 5
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            }
          ],
          'type' => 'preamble_before_content'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Top'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'argument'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 25
      }
    },
    {
      'cmdname' => 'top',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'section top'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'argument'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 26
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'chapter'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'argument'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'chapter'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 28
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Chapter'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'argument'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'In chapter
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => '1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 29
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[4]{'extra'}{'titlepage'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[5]{'extra'}{'titlepage'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[2];

$result_texis{'titlepage_with_commands_classical'} = '@copying
in Copying
@end copying

@titlepage
@title Some manual @* tested
@subtitle Subtitle manual @* tested
@subtitle Subtitle 2 manual @* tested
@author First @* author
@author Second @* author@footnote{Something
about the address of author.

Something about the life. 
@displaymath
\\frac{a}{b}
@end displaymath
}
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


$result_texts{'titlepage_with_commands_classical'} = '

section top
***********

1 Chapter
*********

In chapter

';

$result_sectioning{'titlepage_with_commands_classical'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chapter'
                  }
                },
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '1',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
          ],
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'titlepage_with_commands_classical'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'titlepage_with_commands_classical'}{'extra'}{'section_childs'}[0];
$result_sectioning{'titlepage_with_commands_classical'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'titlepage_with_commands_classical'}{'extra'}{'section_childs'}[0];
$result_sectioning{'titlepage_with_commands_classical'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'titlepage_with_commands_classical'}{'extra'}{'section_childs'}[0];
$result_sectioning{'titlepage_with_commands_classical'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'titlepage_with_commands_classical'};

$result_nodes{'titlepage_with_commands_classical'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '1'
              }
            },
            'node_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chapter'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'titlepage_with_commands_classical'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'titlepage_with_commands_classical'}[0];
$result_nodes{'titlepage_with_commands_classical'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'titlepage_with_commands_classical'}[0];
$result_nodes{'titlepage_with_commands_classical'}[1] = $result_nodes{'titlepage_with_commands_classical'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'titlepage_with_commands_classical'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chapter'
    }
  }
];

$result_errors{'titlepage_with_commands_classical'} = [
  {
    'error_line' => 'warning: @footnote should not appear on @author line
',
    'line_nr' => 10,
    'text' => '@footnote should not appear on @author line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @displaymath should not appear on @author line
',
    'line_nr' => 14,
    'text' => '@displaymath should not appear on @author line',
    'type' => 'warning'
  }
];


$result_floats{'titlepage_with_commands_classical'} = {};



$result_converted{'latex_text'}->{'titlepage_with_commands_classical'} = '

\\begin{document}

\\frontmatter
\\pagestyle{empty}%
\\begin{titlepage}
\\begingroup
\\newskip\\titlepagetopglue \\titlepagetopglue = 1.5in
\\newskip\\titlepagebottomglue \\titlepagebottomglue = 2pc
\\setlength{\\parindent}{0pt}
% Leave some space at the very top of the page.
    \\vglue\\titlepagetopglue
{\\raggedright {\\huge \\bfseries Some manual \\leavevmode{}\\\\ tested}}
\\vskip 4pt \\hrule height 4pt width \\hsize \\vskip 4pt
\\rightline{Subtitle manual \\leavevmode{}\\\\ tested}
\\rightline{Subtitle 2 manual \\leavevmode{}\\\\ tested}
\\vskip 0pt plus 1filll
\\leftline{\\Large \\bfseries First \\leavevmode{}\\\\ author}%
\\leftline{\\Large \\bfseries Second \\leavevmode{}\\\\ author\\footnote{Something
about the address of author.

Something about the life. 
\\[
\\frac{a}{b}
\\]
}}%
\\vskip4pt \\hrule height 2pt width \\hsize
  \\vskip\\titlepagebottomglue
\\endgroup
\\newpage{}%
\\phantom{blabla}%
\\newpage{}%
\\phantom{blabla}%
\\vskip 0pt plus 1filll
in Copying
\\end{titlepage}
\\mainmatter
\\pagestyle{single}%
\\label{anchor:Top}%
\\chapter{{Chapter}}
\\label{anchor:chapter}%

In chapter

';

1;
