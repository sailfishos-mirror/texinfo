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
        'line_nr' => 1,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'top section'
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
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 2,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Main'
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
                      'text' => 'Additional'
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
                  'normalized' => 'Additional'
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
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
                'line_nr' => 8,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => '',
            'line_nr' => 6,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'info' => {
        'spaces_before_argument' => ' '
      },
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
              'text' => 'Additional'
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
            'normalized' => 'Additional'
          }
        ],
        'normalized' => 'Additional'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 10,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Annex'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'appendix',
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 11,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'chapter_between_nodes_with_appendix_nomenu'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'chapter_between_nodes_with_appendix_nomenu'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'chapter_between_nodes_with_appendix_nomenu'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'chapter_between_nodes_with_appendix_nomenu'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'chapter_between_nodes_with_appendix_nomenu'}{'contents'}[3]{'contents'}[2]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'chapter_between_nodes_with_appendix_nomenu'}{'contents'}[3]{'contents'}[2]{'contents'}[0]{'args'}[3];
$result_trees{'chapter_between_nodes_with_appendix_nomenu'}{'contents'}[3]{'contents'}[2]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'chapter_between_nodes_with_appendix_nomenu'}{'contents'}[3]{'contents'}[2]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'chapter_between_nodes_with_appendix_nomenu'}{'contents'}[4]{'extra'}{'node_content'}[0] = $result_trees{'chapter_between_nodes_with_appendix_nomenu'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'chapter_between_nodes_with_appendix_nomenu'}{'contents'}[4]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'chapter_between_nodes_with_appendix_nomenu'}{'contents'}[4]{'args'}[0]{'contents'}[0];

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
              'info' => {},
              'structure' => {
                'section_level' => 1,
                'section_number' => 1,
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            },
            {
              'cmdname' => 'appendix',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'Additional'
                  },
                  'info' => {},
                  'structure' => {}
                }
              },
              'info' => {},
              'structure' => {
                'section_level' => 1,
                'section_number' => 'A',
                'section_prev' => {},
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
$result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'structure'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'structure'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'structure'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'structure'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_prev'} = $result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_up'} = $result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'structure'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes_with_appendix_nomenu'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'chapter_between_nodes_with_appendix_nomenu'};

$result_nodes{'chapter_between_nodes_with_appendix_nomenu'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'info' => {},
      'structure' => {}
    },
    'menus' => [
      {
        'cmdname' => 'menu'
      }
    ],
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'appendix',
          'extra' => {},
          'info' => {},
          'structure' => {
            'section_number' => 'A'
          }
        },
        'normalized' => 'Additional'
      },
      'info' => {},
      'structure' => {
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'chapter_between_nodes_with_appendix_nomenu'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'chapter_between_nodes_with_appendix_nomenu'};

$result_menus{'chapter_between_nodes_with_appendix_nomenu'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'Additional'
      },
      'info' => {},
      'structure' => {
        'menu_up' => {},
        'menu_up_hash' => {
          'Top' => 1
        }
      }
    }
  }
};
$result_menus{'chapter_between_nodes_with_appendix_nomenu'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'chapter_between_nodes_with_appendix_nomenu'};

$result_errors{'chapter_between_nodes_with_appendix_nomenu'} = [];


$result_floats{'chapter_between_nodes_with_appendix_nomenu'} = {};



$result_converted{'info'}->{'chapter_between_nodes_with_appendix_nomenu'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

top section
***********

* Menu:

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
Node: Additional161

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'chapter_between_nodes_with_appendix_nomenu'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top section</title>

<meta name="description" content="top section">
<meta name="keywords" content="top section">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">


</head>

<body lang="en">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h1 class="top" id="top-section">top section</h1>
<ul class="mini-toc">
<li><a href="#Main" accesskey="1">Main</a></li>
<li><a href="#Additional" accesskey="2">Annex</a></li>
</ul>
<div class="chapter-level-extent" id="Main">
<h2 class="chapter">1 Main</h2>
<p>Top node
</p>

<hr>
</div>
<div class="appendix-level-extent" id="Additional">
<div class="nav-panel">
<p>
Up: <a href="#Top" accesskey="u" rel="up">top section</a> &nbsp; </p>
</div>
<h2 class="appendix" id="Annex">Appendix A Annex</h2>
</div>
</div>



</body>
</html>
';

1;
