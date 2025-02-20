use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'in_menu_only_special_ascii_spaces_node'} = {
  "contents" => [
    {
      "contents" => [
        {
          "type" => "preamble_before_content"
        }
      ],
      "type" => "before_node_section"
    },
    {
      "cmdname" => "node",
      "contents" => [
        {
          "contents" => [
            {
              "contents" => [
                {
                  "text" => "Top"
                }
              ],
              "info" => {
                "spaces_after_argument" => {
                  "text" => "\n"
                }
              },
              "type" => "line_arg"
            }
          ],
          "type" => "arguments_line"
        }
      ],
      "extra" => {
        "is_target" => 1,
        "normalized" => "Top"
      },
      "info" => {
        "spaces_before_argument" => {
          "text" => " "
        }
      },
      "source_info" => {
        "file_name" => "in_menu_only_special_ascii_spaces_node.texi",
        "line_nr" => 1
      }
    },
    {
      "cmdname" => "top",
      "contents" => [
        {
          "contents" => [
            {
              "contents" => [
                {
                  "text" => "top"
                }
              ],
              "info" => {
                "spaces_after_argument" => {
                  "text" => "\n"
                }
              },
              "type" => "line_arg"
            }
          ],
          "type" => "arguments_line"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "cmdname" => "menu",
          "contents" => [
            {
              "contents" => [
                {
                  "info" => {
                    "spaces_after_argument" => {
                      "text" => "\n"
                    }
                  },
                  "type" => "block_line_arg"
                }
              ],
              "type" => "arguments_line"
            },
            {
              "contents" => [
                {
                  "text" => "* \r",
                  "type" => "menu_entry_leading_text"
                },
                {
                  "type" => "menu_entry_node"
                },
                {
                  "text" => "::",
                  "type" => "menu_entry_separator"
                },
                {
                  "contents" => [
                    {
                      "contents" => [
                        {
                          "text" => "\n"
                        }
                      ],
                      "type" => "preformatted"
                    }
                  ],
                  "type" => "menu_entry_description"
                }
              ],
              "source_info" => {
                "file_name" => "in_menu_only_special_ascii_spaces_node.texi",
                "line_nr" => 5
              },
              "type" => "menu_entry"
            },
            {
              "contents" => [
                {
                  "text" => "* \t\f",
                  "type" => "menu_entry_leading_text"
                },
                {
                  "type" => "menu_entry_node"
                },
                {
                  "text" => "::",
                  "type" => "menu_entry_separator"
                },
                {
                  "contents" => [
                    {
                      "contents" => [
                        {
                          "text" => "\n"
                        }
                      ],
                      "type" => "preformatted"
                    }
                  ],
                  "type" => "menu_entry_description"
                }
              ],
              "source_info" => {
                "file_name" => "in_menu_only_special_ascii_spaces_node.texi",
                "line_nr" => 6
              },
              "type" => "menu_entry"
            },
            {
              "cmdname" => "end",
              "contents" => [
                {
                  "contents" => [
                    {
                      "text" => "menu"
                    }
                  ],
                  "info" => {
                    "spaces_after_argument" => {
                      "text" => "\n"
                    }
                  },
                  "type" => "line_arg"
                }
              ],
              "extra" => {
                "text_arg" => "menu"
              },
              "info" => {
                "spaces_before_argument" => {
                  "text" => " "
                }
              },
              "source_info" => {
                "file_name" => "in_menu_only_special_ascii_spaces_node.texi",
                "line_nr" => 7
              }
            }
          ],
          "source_info" => {
            "file_name" => "in_menu_only_special_ascii_spaces_node.texi",
            "line_nr" => 4
          }
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        }
      ],
      "extra" => {},
      "info" => {
        "spaces_before_argument" => {
          "text" => " "
        }
      },
      "source_info" => {
        "file_name" => "in_menu_only_special_ascii_spaces_node.texi",
        "line_nr" => 2
      }
    },
    {
      "cmdname" => "node",
      "contents" => [
        {
          "contents" => [
            {
              "info" => {
                "spaces_after_argument" => {
                  "text" => " \r\n"
                }
              },
              "type" => "line_arg"
            }
          ],
          "type" => "arguments_line"
        }
      ],
      "extra" => {},
      "source_info" => {
        "file_name" => "in_menu_only_special_ascii_spaces_node.texi",
        "line_nr" => 9
      }
    },
    {
      "cmdname" => "chapter",
      "contents" => [
        {
          "contents" => [
            {
              "contents" => [
                {
                  "text" => "CARRIAGE RETURN|\r|"
                }
              ],
              "info" => {
                "spaces_after_argument" => {
                  "text" => "\n"
                }
              },
              "type" => "line_arg"
            }
          ],
          "type" => "arguments_line"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        }
      ],
      "extra" => {
        "section_number" => 1
      },
      "info" => {
        "spaces_before_argument" => {
          "text" => " "
        }
      },
      "source_info" => {
        "file_name" => "in_menu_only_special_ascii_spaces_node.texi",
        "line_nr" => 10
      }
    },
    {
      "cmdname" => "node",
      "contents" => [
        {
          "contents" => [
            {
              "info" => {
                "spaces_after_argument" => {
                  "text" => " \t\f\n"
                }
              },
              "type" => "line_arg"
            }
          ],
          "type" => "arguments_line"
        }
      ],
      "extra" => {},
      "source_info" => {
        "file_name" => "in_menu_only_special_ascii_spaces_node.texi",
        "line_nr" => 12
      }
    },
    {
      "cmdname" => "chapter",
      "contents" => [
        {
          "contents" => [
            {
              "contents" => [
                {
                  "text" => "CHARACTER TABULATION|\t| FORM FEED|\f|"
                }
              ],
              "info" => {
                "spaces_after_argument" => {
                  "text" => "\n"
                }
              },
              "type" => "line_arg"
            }
          ],
          "type" => "arguments_line"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        }
      ],
      "extra" => {
        "section_number" => 2
      },
      "info" => {
        "spaces_before_argument" => {
          "text" => " "
        }
      },
      "source_info" => {
        "file_name" => "in_menu_only_special_ascii_spaces_node.texi",
        "line_nr" => 13
      }
    }
  ],
  "type" => "document_root"
};

$result_texis{'in_menu_only_special_ascii_spaces_node'} = '@node Top
@top top

@menu
* '."\r".'::
* 	::
@end menu

@node '."\r".'
@chapter CARRIAGE RETURN|'."\r".'|

@node 	
@chapter CHARACTER TABULATION|	| FORM FEED||

';


$result_texts{'in_menu_only_special_ascii_spaces_node'} = 'top
***

* '."\r".'::
* 	::

1 CARRIAGE RETURN|'."\r".'|
*******************

2 CHARACTER TABULATION|	| FORM FEED||
************************************

';

$result_sectioning{'in_menu_only_special_ascii_spaces_node'} = {
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
                  'extra' => {}
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
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {}
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '2',
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
$result_sectioning{'in_menu_only_special_ascii_spaces_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'in_menu_only_special_ascii_spaces_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_ascii_spaces_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'in_menu_only_special_ascii_spaces_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_ascii_spaces_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'in_menu_only_special_ascii_spaces_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_ascii_spaces_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'in_menu_only_special_ascii_spaces_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_ascii_spaces_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'in_menu_only_special_ascii_spaces_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_ascii_spaces_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'in_menu_only_special_ascii_spaces_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_ascii_spaces_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'in_menu_only_special_ascii_spaces_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_ascii_spaces_node'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'in_menu_only_special_ascii_spaces_node'};

$result_nodes{'in_menu_only_special_ascii_spaces_node'} = [
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
            }
          }
        }
      },
      'normalized' => 'Top'
    }
  }
];

$result_menus{'in_menu_only_special_ascii_spaces_node'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  }
];

$result_errors{'in_menu_only_special_ascii_spaces_node'} = [
  {
    'error_line' => 'empty node name in menu entry
',
    'file_name' => 'in_menu_only_special_ascii_spaces_node.texi',
    'line_nr' => 5,
    'text' => 'empty node name in menu entry',
    'type' => 'error'
  },
  {
    'error_line' => 'empty node name in menu entry
',
    'file_name' => 'in_menu_only_special_ascii_spaces_node.texi',
    'line_nr' => 6,
    'text' => 'empty node name in menu entry',
    'type' => 'error'
  },
  {
    'error_line' => 'empty argument in @node
',
    'file_name' => 'in_menu_only_special_ascii_spaces_node.texi',
    'line_nr' => 9,
    'text' => 'empty argument in @node',
    'type' => 'error'
  },
  {
    'error_line' => 'empty argument in @node
',
    'file_name' => 'in_menu_only_special_ascii_spaces_node.texi',
    'line_nr' => 12,
    'text' => 'empty argument in @node',
    'type' => 'error'
  }
];


$result_floats{'in_menu_only_special_ascii_spaces_node'} = {};



$result_converted{'info'}->{'in_menu_only_special_ascii_spaces_node'} = 'This is , produced from in_menu_only_special_ascii_spaces_node.texi.


File: ,  Node: Top,  Next: ,  Up: (dir)

top
***

* Menu:

* '."\r".'::
* 	::

1 CARRIAGE RETURN| |
********************

2 CHARACTER TABULATION| | FORM FEED| |
**************************************


Tag Table:
Node: Top70

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'in_menu_only_special_ascii_spaces_node'} = '<!DOCTYPE html>
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
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: CARRIAGE RETURN|'."\r".'| &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>


<ul class="mini-toc">
<li>CARRIAGE RETURN|'."\r".'|</li>
<li>CHARACTER TABULATION|	| FORM FEED|&#12;|</li>
</ul>
<hr>
<div class="chapter-level-extent">
<h2 class="chapter" id="CARRIAGE-RETURN_007c-_007c"><span>1 CARRIAGE RETURN|'."\r".'|<a class="copiable-link" href="#CARRIAGE-RETURN_007c-_007c"> &para;</a></span></h2>

<hr>
</div>
<div class="chapter-level-extent">
<h2 class="chapter" id="CHARACTER-TABULATION_007c-_007c-FORM-FEED_007c-_007c"><span>2 CHARACTER TABULATION|	| FORM FEED|&#12;|<a class="copiable-link" href="#CHARACTER-TABULATION_007c-_007c-FORM-FEED_007c-_007c"> &para;</a></span></h2>

</div>
</div>



</body>
</html>
';

1;
