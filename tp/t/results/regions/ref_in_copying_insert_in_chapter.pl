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
                      'cmdname' => 'ref',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'GFDL'
                            }
                          ],
                          'extra' => {
                            'node_content' => {
                              'contents' => [
                                {}
                              ]
                            },
                            'normalized' => 'GFDL'
                          },
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 2
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
                        'spaces_after_argument' => {
                          'text' => '
'
                        }
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'end',
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
            'spaces_after_argument' => {
              'text' => '
'
            }
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
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
        'line_nr' => 5
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
            'spaces_after_argument' => {
              'text' => '
'
            }
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
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 6
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
            'spaces_after_argument' => {
              'text' => '
'
            }
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Intro'
      },
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
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Introduction'
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
              'type' => 'rawline_arg'
            }
          ],
          'cmdname' => 'insertcopying',
          'extra' => {},
          'source_info' => {
            'line_nr' => 11
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'menu',
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
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'GFDL'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'GFDL'
                  },
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
              'source_info' => {
                'line_nr' => 14
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
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 15
              }
            }
          ],
          'source_info' => {
            'line_nr' => 13
          }
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
        'line_nr' => 9
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'GFDL'
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
      'cmdname' => 'node',
      'extra' => {
        'is_target' => 1,
        'normalized' => 'GFDL'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 17
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'GFDL'
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
      'cmdname' => 'section',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => '1.1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 18
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'ref_in_copying_insert_in_chapter'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'contents'}[0];

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
                    'normalized' => 'Intro'
                  }
                },
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'GFDL'
                        }
                      },
                      'section_directions' => {
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '1.1'
                    }
                  }
                ],
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
$result_sectioning{'ref_in_copying_insert_in_chapter'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'ref_in_copying_insert_in_chapter'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'ref_in_copying_insert_in_chapter'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'ref_in_copying_insert_in_chapter'}{'extra'}{'section_childs'}[0];
$result_sectioning{'ref_in_copying_insert_in_chapter'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'ref_in_copying_insert_in_chapter'}{'extra'}{'section_childs'}[0];
$result_sectioning{'ref_in_copying_insert_in_chapter'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'ref_in_copying_insert_in_chapter'}{'extra'}{'section_childs'}[0];
$result_sectioning{'ref_in_copying_insert_in_chapter'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'ref_in_copying_insert_in_chapter'};

$result_nodes{'ref_in_copying_insert_in_chapter'} = [
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
            'normalized' => 'Intro'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'section',
        'extra' => {
          'section_number' => '1.1'
        }
      },
      'node_directions' => {
        'up' => {}
      },
      'normalized' => 'GFDL'
    }
  }
];
$result_nodes{'ref_in_copying_insert_in_chapter'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'ref_in_copying_insert_in_chapter'}[0];
$result_nodes{'ref_in_copying_insert_in_chapter'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'ref_in_copying_insert_in_chapter'}[0];
$result_nodes{'ref_in_copying_insert_in_chapter'}[1] = $result_nodes{'ref_in_copying_insert_in_chapter'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'ref_in_copying_insert_in_chapter'}[2]{'extra'}{'node_directions'}{'up'} = $result_nodes{'ref_in_copying_insert_in_chapter'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'ref_in_copying_insert_in_chapter'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Intro'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'up' => {}
      },
      'normalized' => 'GFDL'
    }
  }
];
$result_menus{'ref_in_copying_insert_in_chapter'}[2]{'extra'}{'menu_directions'}{'up'} = $result_menus{'ref_in_copying_insert_in_chapter'}[1];

$result_errors{'ref_in_copying_insert_in_chapter'} = [];


$result_floats{'ref_in_copying_insert_in_chapter'} = {};



$result_converted{'info'}->{'ref_in_copying_insert_in_chapter'} = 'This is , produced from .

*note GFDL::


File: ,  Node: Top,  Next: Intro,  Up: (dir)

top
***

* Menu:

* Intro::

 -- The Detailed Node Listing --

Introduction

* GFDL::


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
Node: Intro176
Node: GFDL286

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'ref_in_copying_insert_in_chapter'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
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
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">

<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#Intro" accesskey="n" rel="next">Introduction</a> &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#Intro" accesskey="1">Introduction</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="Intro">
<div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Introduction"><span>1 Introduction<a class="copiable-link" href="#Introduction"> &para;</a></span></h2>

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
<h3 class="section" id="GFDL-1"><span>1.1 GFDL<a class="copiable-link" href="#GFDL-1"> &para;</a></span></h3>

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
