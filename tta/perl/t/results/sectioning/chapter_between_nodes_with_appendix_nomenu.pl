use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'chapter_between_nodes_with_appendix_nomenu'} = {
  'contents' => [
    {
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
        'line_nr' => 1
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
                  'text' => 'top section'
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
      'extra' => {},
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
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Main'
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
          'contents' => [
            {
              'text' => 'Top node
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
                      'text' => 'Additional'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'Additional'
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
                'line_nr' => 7
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
                'line_nr' => 8
              }
            }
          ],
          'source_info' => {
            'line_nr' => 6
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
        'line_nr' => 3
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
                  'text' => 'Additional'
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
        'normalized' => 'Additional'
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
      'cmdname' => 'appendix',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Annex'
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
        'section_number' => 'A'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 11
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'chapter_between_nodes_with_appendix_nomenu'}{'contents'}[3]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'chapter_between_nodes_with_appendix_nomenu'}{'contents'}[3]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'contents'}[0];

$result_texis{'chapter_between_nodes_with_appendix_nomenu'} = '@node Top
@top top section
@chapter Main
Top node

@menu
* Additional::
@end menu

@node Additional
@appendix Annex
';


$result_texts{'chapter_between_nodes_with_appendix_nomenu'} = 'top section
***********
1 Main
******
Top node

* Additional::

Appendix A Annex
****************
';

$result_sectioning{'chapter_between_nodes_with_appendix_nomenu'} = {
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
            },
            {
              'cmdname' => 'appendix',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'Additional'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => 'A',
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
$result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'chapter_between_nodes_with_appendix_nomenu'};

$result_nodes{'chapter_between_nodes_with_appendix_nomenu'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'normalized' => 'Top'
    }
  },
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'appendix',
        'extra' => {
          'section_number' => 'A'
        }
      },
      'node_directions' => {
        'up' => {}
      },
      'normalized' => 'Additional'
    }
  }
];
$result_nodes{'chapter_between_nodes_with_appendix_nomenu'}[1]{'extra'}{'node_directions'}{'up'} = $result_nodes{'chapter_between_nodes_with_appendix_nomenu'}[0];

$result_menus{'chapter_between_nodes_with_appendix_nomenu'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'up' => {}
      },
      'normalized' => 'Additional'
    }
  }
];
$result_menus{'chapter_between_nodes_with_appendix_nomenu'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'chapter_between_nodes_with_appendix_nomenu'}[0];

$result_errors{'chapter_between_nodes_with_appendix_nomenu'} = [];


$result_floats{'chapter_between_nodes_with_appendix_nomenu'} = {};



$result_converted{'info'}->{'chapter_between_nodes_with_appendix_nomenu'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

top section
***********

* Menu:

Appendices

* Additional::

1 Main
******

Top node

* Menu:

* Additional::


File: ,  Node: Additional,  Up: Top

Appendix A Annex
****************


Tag Table:
Node: Top27
Node: Additional173

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'chapter_between_nodes_with_appendix_nomenu'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top section</title>

<meta name="description" content="top section">
<meta name="keywords" content="top section">
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
<h1 class="top" id="top-section"><span>top section<a class="copiable-link" href="#top-section"> &para;</a></span></h1>
<ul class="mini-toc">
<li><a href="#Main" accesskey="1">Main</a></li>
<li><a href="#Additional" accesskey="2">Annex</a></li>
</ul>
<div class="chapter-level-extent" id="Main">
<h2 class="chapter"><span>1 Main<a class="copiable-link" href="#Main"> &para;</a></span></h2>
<p>Top node
</p>

<hr>
</div>
<div class="appendix-level-extent" id="Additional">
<div class="nav-panel">
<p>
Up: <a href="#Top" accesskey="u" rel="up">top section</a> &nbsp; </p>
</div>
<h2 class="appendix" id="Annex"><span>Appendix A Annex<a class="copiable-link" href="#Annex"> &para;</a></span></h2>
</div>
</div>



</body>
</html>
';

1;
