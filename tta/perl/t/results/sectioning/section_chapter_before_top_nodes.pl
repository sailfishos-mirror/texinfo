use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'section_chapter_before_top_nodes'} = {
  'contents' => [
    {
      'contents' => [
        {
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
                  'text' => 'section node'
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
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'section-node'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 1
      }
    },
    {
      'cmdname' => 'section',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'section'
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
          'type' => 'arguments_line'
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
        'line_nr' => 2
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
                  'text' => 'chapter node'
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
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'chapter-node'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 4
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
          'type' => 'arguments_line'
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
              'type' => 'arguments_line'
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
                      'text' => 'section node'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'section-node'
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
                'line_nr' => 8
              },
              'type' => 'menu_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
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
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 9
              }
            }
          ],
          'source_info' => {
            'line_nr' => 7
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => '2'
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
          'type' => 'arguments_line'
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
        'line_nr' => 11
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
          'type' => 'arguments_line'
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
              'type' => 'arguments_line'
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
                      'text' => 'chapter node'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'chapter-node'
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
                'line_nr' => 15
              },
              'type' => 'menu_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
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
              'extra' => {
                'text_arg' => 'menu'
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
        'line_nr' => 12
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'section_chapter_before_top_nodes'}{'contents'}[4]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'section_chapter_before_top_nodes'}{'contents'}[4]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'section_chapter_before_top_nodes'}{'contents'}[6]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'section_chapter_before_top_nodes'}{'contents'}[6]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];

$result_texis{'section_chapter_before_top_nodes'} = '@node section node
@section section 

@node chapter node
@chapter chapter

@menu
* section node::
@end menu

@node Top
@top top

@menu
* chapter node::
@end menu

';


$result_texts{'section_chapter_before_top_nodes'} = '1 section
=========

2 chapter
=========

* section node::

top
===

* chapter node::

';

$result_sectioning{'section_chapter_before_top_nodes'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'section',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'section-node'
            }
          },
          'section_directions' => {},
          'section_level' => 2,
          'section_number' => '1',
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      },
      {
        'cmdname' => 'chapter',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'chapter-node'
            }
          },
          'section_directions' => {
            'prev' => {}
          },
          'section_level' => 2,
          'section_number' => '2',
          'toplevel_directions' => {
            'prev' => {}
          }
        }
      },
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_directions' => {
            'prev' => {}
          },
          'section_level' => 2,
          'toplevel_directions' => {
            'prev' => {}
          }
        }
      }
    ],
    'section_level' => 1
  }
};
$result_sectioning{'section_chapter_before_top_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'section_chapter_before_top_nodes'};
$result_sectioning{'section_chapter_before_top_nodes'}{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'section_chapter_before_top_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'section_chapter_before_top_nodes'}{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'section_chapter_before_top_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'section_chapter_before_top_nodes'}{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'section_chapter_before_top_nodes'}{'extra'}{'section_childs'}[1];
$result_sectioning{'section_chapter_before_top_nodes'}{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'section_chapter_before_top_nodes'}{'extra'}{'section_childs'}[1];

$result_nodes{'section_chapter_before_top_nodes'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'section',
        'extra' => {
          'section_number' => '1'
        }
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '2'
              }
            },
            'node_directions' => {
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {
                    'cmdname' => 'top',
                    'extra' => {}
                  },
                  'node_directions' => {
                    'next' => {}
                  },
                  'normalized' => 'Top'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chapter-node'
          }
        },
        'up' => {}
      },
      'normalized' => 'section-node'
    }
  },
  {},
  {}
];
$result_nodes{'section_chapter_before_top_nodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'} = $result_nodes{'section_chapter_before_top_nodes'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'section_chapter_before_top_nodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'section_chapter_before_top_nodes'}[0];
$result_nodes{'section_chapter_before_top_nodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'section_chapter_before_top_nodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'section_chapter_before_top_nodes'}[0]{'extra'}{'node_directions'}{'up'} = $result_nodes{'section_chapter_before_top_nodes'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'section_chapter_before_top_nodes'}[1] = $result_nodes{'section_chapter_before_top_nodes'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'section_chapter_before_top_nodes'}[2] = $result_nodes{'section_chapter_before_top_nodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'section_chapter_before_top_nodes'} = [
  {
    'extra' => {
      'menu_directions' => {
        'up' => {
          'extra' => {
            'menu_directions' => {
              'up' => {
                'extra' => {
                  'menus' => [
                    {}
                  ],
                  'normalized' => 'Top'
                }
              }
            },
            'menus' => [
              {}
            ],
            'normalized' => 'chapter-node'
          }
        }
      },
      'normalized' => 'section-node'
    }
  },
  {},
  {}
];
$result_menus{'section_chapter_before_top_nodes'}[1] = $result_menus{'section_chapter_before_top_nodes'}[0]{'extra'}{'menu_directions'}{'up'};
$result_menus{'section_chapter_before_top_nodes'}[2] = $result_menus{'section_chapter_before_top_nodes'}[0]{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'up'};

$result_errors{'section_chapter_before_top_nodes'} = [
  {
    'error_line' => 'warning: lowering the section level of @chapter appearing after a lower element
',
    'line_nr' => 5,
    'text' => 'lowering the section level of @chapter appearing after a lower element',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: lowering the section level of @top appearing after a lower element
',
    'line_nr' => 12,
    'text' => 'lowering the section level of @top appearing after a lower element',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `chapter node\' is up for `section node\' in menu but not in sectioning
',
    'line_nr' => 1,
    'text' => 'node `chapter node\' is up for `section node\' in menu but not in sectioning',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `Top\' is up for `chapter node\' in menu but not in sectioning
',
    'line_nr' => 4,
    'text' => 'node `Top\' is up for `chapter node\' in menu but not in sectioning',
    'type' => 'warning'
  }
];


$result_floats{'section_chapter_before_top_nodes'} = {};



$result_converted{'info'}->{'section_chapter_before_top_nodes'} = 'This is , produced from section_chapter_before_top_nodes.texi.


File: ,  Node: section node,  Next: chapter node,  Up: chapter node

1 section
=========


File: ,  Node: chapter node,  Next: Top,  Prev: section node,  Up: Top

2 chapter
=========

* Menu:

* section node::


File: ,  Node: Top,  Next: chapter node,  Up: (dir)

top
===

* Menu:

* chapter node::


Tag Table:
Node: section node64
Node: chapter node156
Node: Top278

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'section_chapter_before_top_nodes'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
<div class="section-level-extent" id="section-node">
<div class="nav-panel">
<p>
Next: <a href="#chapter-node" accesskey="n" rel="next">chapter</a>, Up: <a href="#chapter-node" accesskey="u" rel="up">chapter</a> &nbsp; </p>
</div>
<h3 class="section" id="section"><span>1 section<a class="copiable-link" href="#section"> &para;</a></span></h3>

<hr>
</div>
<div class="section-level-extent" id="chapter-node">
<div class="nav-panel">
<p>
Next: <a href="#Top" accesskey="n" rel="next">top</a>, Previous: <a href="#section-node" accesskey="p" rel="prev">section</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h3 class="section chapter-level-set-section" id="chapter"><span>2 chapter<a class="copiable-link" href="#chapter"> &para;</a></span></h3>


<hr>
</div>
<div class="unnumberedsec-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#chapter-node" accesskey="n" rel="next">chapter</a> &nbsp; </p>
</div>
<h3 class="unnumberedsec top-level-set-unnumberedsec" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h3>


</div>



</body>
</html>
';


$result_converted{'docbook'}->{'section_chapter_before_top_nodes'} = '<sect1 label="1" id="section-node">
<title>section</title>

</sect1>
<sect1 label="2" id="chapter-node">
<title>chapter</title>


</sect1>
';


$result_converted{'latex_text'}->{'section_chapter_before_top_nodes'} = '\\begin{document}
\\section{{section}}
\\label{anchor:section-node}%

\\chapter{{chapter}}
\\label{anchor:chapter-node}%


\\label{anchor:Top}%
';

1;
