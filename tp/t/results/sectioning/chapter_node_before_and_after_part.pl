use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'chapter_node_before_and_after_part'} = {
  'contents' => [
    {
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
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
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 2,
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
      'cmdname' => 'chapter',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'menu',
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
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'after'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'after'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              },
              'parent' => {},
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'menu'
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
                'command_argument' => 'menu',
                'spaces_before_argument' => ' ',
                'text_arg' => 'menu'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 7,
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
            'line_nr' => 5,
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
              'text' => 'part'
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
      'cmdname' => 'part',
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
              'text' => 'after'
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
            'normalized' => 'after'
          }
        ],
        'normalized' => 'after',
        'spaces_before_argument' => ' '
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
              'text' => 'chapter 2'
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
          'args' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'contents',
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 14,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'associated_part' => {},
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 12,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[0];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'};
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[1]{'args'}[0];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[1];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[1]{'parent'} = $result_trees{'chapter_node_before_and_after_part'};
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'args'}[0];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[2];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[2];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[2];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[2];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[2]{'parent'} = $result_trees{'chapter_node_before_and_after_part'};
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[3]{'args'}[0];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[3];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[3];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[3]{'parent'} = $result_trees{'chapter_node_before_and_after_part'};
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[4]{'args'}[0];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[4];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[4]{'extra'}{'node_content'}[0] = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[4]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[4]{'parent'} = $result_trees{'chapter_node_before_and_after_part'};
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[5]{'args'}[0];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[5];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[5];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[5]{'contents'}[1];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[5];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[5]{'extra'}{'associated_part'} = $result_trees{'chapter_node_before_and_after_part'}{'contents'}[3];
$result_trees{'chapter_node_before_and_after_part'}{'contents'}[5]{'parent'} = $result_trees{'chapter_node_before_and_after_part'};

$result_texis{'chapter_node_before_and_after_part'} = '
@node Top
@chapter chapter

@menu
* after::
@end menu

@part part

@node after
@chapter chapter 2

@contents
';


$result_texts{'chapter_node_before_and_after_part'} = '
1 chapter
*********

* after::

part
****

2 chapter 2
***********

';

$result_sectioning{'chapter_node_before_and_after_part'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'chapter',
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
          'section_level' => 1,
          'section_number' => 1,
          'section_up' => {}
        }
      },
      {
        'cmdname' => 'part',
        'extra' => {
          'part_associated_section' => {
            'cmdname' => 'chapter',
            'extra' => {
              'associated_node' => {
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'after'
                },
                'structure' => {}
              },
              'associated_part' => {}
            },
            'structure' => {
              'section_level' => 1,
              'section_number' => 2,
              'section_up' => {},
              'toplevel_prev' => {}
            }
          }
        },
        'structure' => {
          'section_childs' => [
            {}
          ],
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'chapter_node_before_and_after_part'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'chapter_node_before_and_after_part'};
$result_sectioning{'chapter_node_before_and_after_part'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'chapter_node_before_and_after_part'}{'structure'}{'section_childs'}[1];
$result_sectioning{'chapter_node_before_and_after_part'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'structure'}{'section_up'} = $result_sectioning{'chapter_node_before_and_after_part'}{'structure'}{'section_childs'}[1];
$result_sectioning{'chapter_node_before_and_after_part'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'structure'}{'toplevel_prev'} = $result_sectioning{'chapter_node_before_and_after_part'}{'structure'}{'section_childs'}[0];
$result_sectioning{'chapter_node_before_and_after_part'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[0] = $result_sectioning{'chapter_node_before_and_after_part'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'chapter_node_before_and_after_part'}{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'chapter_node_before_and_after_part'};

$result_nodes{'chapter_node_before_and_after_part'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'chapter',
      'extra' => {},
      'structure' => {
        'section_number' => 1
      }
    },
    'menus' => [
      {
        'cmdname' => 'menu',
        'extra' => {}
      }
    ],
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {
            'associated_part' => {
              'cmdname' => 'part',
              'extra' => {},
              'structure' => {}
            }
          },
          'structure' => {
            'section_number' => 2
          }
        },
        'normalized' => 'after'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'chapter_node_before_and_after_part'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'chapter_node_before_and_after_part'};
$result_nodes{'chapter_node_before_and_after_part'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'chapter_node_before_and_after_part'};
$result_nodes{'chapter_node_before_and_after_part'}{'structure'}{'node_next'} = $result_nodes{'chapter_node_before_and_after_part'}{'structure'}{'menu_child'};

$result_menus{'chapter_node_before_and_after_part'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'after'
      },
      'structure' => {
        'menu_up' => {},
        'menu_up_hash' => {
          'Top' => 1
        }
      }
    }
  }
};
$result_menus{'chapter_node_before_and_after_part'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'chapter_node_before_and_after_part'};

$result_errors{'chapter_node_before_and_after_part'} = [
  {
    'error_line' => ':11: warning: node `Top\' is up for `after\' in menu but not in sectioning
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => '',
    'text' => 'node `Top\' is up for `after\' in menu but not in sectioning',
    'type' => 'warning'
  }
];


$result_floats{'chapter_node_before_and_after_part'} = {};



$result_converted{'plaintext'}->{'chapter_node_before_and_after_part'} = '1 chapter
*********

2 chapter 2
***********

1 chapter
part
2 chapter 2
';


$result_converted{'info'}->{'chapter_node_before_and_after_part'} = 'This is , produced from .


File: ,  Node: Top,  Next: after,  Up: (dir)

1 chapter
*********

* Menu:

* after::


File: ,  Node: after,  Prev: Top,  Up: Top

2 chapter 2
***********



Tag Table:
Node: Top27
Node: after116

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'chapter_node_before_and_after_part'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<link href="#SEC_Contents" rel="contents" title="Table of Contents">
<style type="text/css">
<!--
kbd {font-style: oblique}
ul.no-bullet {list-style: none}
-->
</style>


</head>

<body lang="en">

<div class="chapter" id="Top">
<div class="header">
<p>
Next: <a href="#after" accesskey="n" rel="next">chapter 2</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h2 class="chapter" id="chapter">1 chapter</h2>


<hr>
</div>
<div class="part" id="part">
<div class="header">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">chapter</a>, Up: <a href="#Top" accesskey="u" rel="up">chapter</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h1 class="part">part</h1>
<hr>

<ul class="section-toc">
<li><a href="#after" accesskey="1">chapter 2</a></li>
</ul>
<div class="chapter" id="after">
<h2 class="chapter" id="chapter-2">2 chapter 2</h2>

<div class="contents-element" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">
<ul class="no-bullet">
  <li><a id="toc-chapter" href="#Top">1 chapter</a></li>
<li><a id="toc-part" href="#part">part</a>
<ul class="no-bullet">
  <li><a id="toc-chapter-2" href="#after">2 chapter 2</a></li>
</ul></li>

</ul>
</div>
</div>
</div>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'chapter_node_before_and_after_part'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'chapter_node_before_and_after_part'} = '
<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">after</nodenext></node>
<chapter spaces=" "><sectiontitle>chapter</sectiontitle>

<menu endspaces=" ">
<menuentry leadingtext="* "><menunode separator="::">after</menunode><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</chapter>
<part spaces=" "><sectiontitle>part</sectiontitle>

<node name="after" spaces=" "><nodename>after</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chapter 2</sectiontitle>

<contents></contents>
</chapter>
</part>
';

1;
