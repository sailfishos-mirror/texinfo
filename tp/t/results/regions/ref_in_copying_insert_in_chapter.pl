use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'ref_in_copying_insert_in_chapter'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'cmdname' => 'copying',
              'contents' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'text' => 'GFDL'
                            }
                          ],
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'ref',
                      'extra' => {
                        'label' => {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'GFDL'
                                }
                              ],
                              'info' => {
                                'spaces_after_argument' => '
'
                              },
                              'type' => 'line_arg'
                            }
                          ],
                          'cmdname' => 'node',
                          'extra' => {
                            'node_content' => [
                              {}
                            ],
                            'nodes_manuals' => [
                              {
                                'node_content' => [
                                  {}
                                ],
                                'normalized' => 'GFDL'
                              }
                            ],
                            'normalized' => 'GFDL'
                          },
                          'info' => {
                            'spaces_before_argument' => ' '
                          },
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 17,
                            'macro' => ''
                          }
                        },
                        'node_argument' => {
                          'node_content' => [
                            {}
                          ],
                          'normalized' => 'GFDL'
                        }
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 2,
                        'macro' => ''
                      }
                    },
                    {
                      'text' => '
'
                    }
                  ],
                  'type' => 'paragraph'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'copying'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => '
'
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'end',
                  'extra' => {
                    'text_arg' => 'copying'
                  },
                  'info' => {
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 3,
                    'macro' => ''
                  }
                }
              ],
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
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
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Top'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
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
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
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
              'text' => 'top'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'top',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 6,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Intro'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Intro'
          }
        ],
        'normalized' => 'Intro'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
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
              'text' => 'Introduction'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'chapter',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'insertcopying',
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
            {
              'args' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'GFDL'
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'GFDL'
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 14,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'menu'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 15,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => '',
            'line_nr' => 13,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 9,
        'macro' => ''
      }
    },
    {},
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'GFDL'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'section',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 18,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'label'}{'extra'}{'node_content'}[0] = $result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[3];
$result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[5] = $result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'label'};

$result_texis{'ref_in_copying_insert_in_chapter'} = '@copying
@ref{GFDL}
@end copying

@node Top
@top top

@node Intro
@chapter Introduction

@insertcopying

@menu
* GFDL::
@end menu

@node GFDL
@section GFDL

';


$result_texts{'ref_in_copying_insert_in_chapter'} = '
top
***

1 Introduction
**************


* GFDL::

1.1 GFDL
========

';

$result_sectioning{'ref_in_copying_insert_in_chapter'} = {
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
            'info' => {},
            'structure' => {}
          }
        },
        'info' => {},
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'Intro'
                  },
                  'info' => {},
                  'structure' => {}
                }
              },
              'info' => {},
              'structure' => {
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'GFDL'
                        },
                        'info' => {},
                        'structure' => {}
                      }
                    },
                    'info' => {},
                    'structure' => {
                      'section_level' => 2,
                      'section_number' => '1.1',
                      'section_up' => {}
                    }
                  }
                ],
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
$result_sectioning{'ref_in_copying_insert_in_chapter'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'ref_in_copying_insert_in_chapter'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'ref_in_copying_insert_in_chapter'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'ref_in_copying_insert_in_chapter'}{'structure'}{'section_childs'}[0];
$result_sectioning{'ref_in_copying_insert_in_chapter'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'ref_in_copying_insert_in_chapter'}{'structure'}{'section_childs'}[0];
$result_sectioning{'ref_in_copying_insert_in_chapter'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'ref_in_copying_insert_in_chapter'}{'structure'}{'section_childs'}[0];
$result_sectioning{'ref_in_copying_insert_in_chapter'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'ref_in_copying_insert_in_chapter'};

$result_nodes{'ref_in_copying_insert_in_chapter'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'info' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'info' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'menus' => [
          {
            'cmdname' => 'menu'
          }
        ],
        'normalized' => 'Intro'
      },
      'info' => {},
      'structure' => {
        'menu_child' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'section',
              'extra' => {},
              'info' => {},
              'structure' => {
                'section_number' => '1.1'
              }
            },
            'normalized' => 'GFDL'
          },
          'info' => {},
          'structure' => {
            'node_up' => {}
          }
        },
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'ref_in_copying_insert_in_chapter'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'ref_in_copying_insert_in_chapter'}{'structure'}{'node_next'};
$result_nodes{'ref_in_copying_insert_in_chapter'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'ref_in_copying_insert_in_chapter'};
$result_nodes{'ref_in_copying_insert_in_chapter'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'ref_in_copying_insert_in_chapter'};

$result_menus{'ref_in_copying_insert_in_chapter'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {}
};

$result_errors{'ref_in_copying_insert_in_chapter'} = [];


$result_floats{'ref_in_copying_insert_in_chapter'} = {};



$result_converted{'info'}->{'ref_in_copying_insert_in_chapter'} = 'This is , produced from .

*note GFDL::


File: ,  Node: Top,  Next: Intro,  Up: (dir)

top
***

* Menu:

* Intro::


File: ,  Node: Intro,  Prev: Top,  Up: Top

1 Introduction
**************

*note GFDL::

* Menu:

* GFDL::


File: ,  Node: GFDL,  Up: Intro

1.1 GFDL
========



Tag Table:
Node: Top41
Node: Intro118
Node: GFDL228

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'ref_in_copying_insert_in_chapter'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- GFDL -->
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">


</head>

<body lang="en">

<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#Intro" accesskey="n" rel="next">Introduction</a> &nbsp; </p>
</div>
<h1 class="top" id="top">top</h1>

<ul class="mini-toc">
<li><a href="#Intro" accesskey="1">Introduction</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="Intro">
<div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Introduction">1 Introduction</h2>

<p><a class="ref" href="#GFDL">GFDL</a>
</p>

<ul class="mini-toc">
<li><a href="#GFDL" accesskey="1">GFDL</a></li>
</ul>
<hr>
<div class="section-level-extent" id="GFDL">
<div class="nav-panel">
<p>
Up: <a href="#Intro" accesskey="u" rel="up">Introduction</a> &nbsp; </p>
</div>
<h3 class="section" id="GFDL-1">1.1 GFDL</h3>

</div>
</div>
</div>



</body>
</html>
';


$result_converted{'latex_text'}->{'ref_in_copying_insert_in_chapter'} = '
\\begin{document}
\\label{anchor:Top}%
\\chapter{{Introduction}}
\\label{anchor:Intro}%

\\hyperref[anchor:GFDL]{Section~\\ref*{anchor:GFDL} [GFDL], page~\\pageref*{anchor:GFDL}}


\\section{{GFDL}}
\\label{anchor:GFDL}%

';

1;
