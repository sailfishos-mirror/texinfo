use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'nodes_after_top_before_chapter_not_split_no_use_node_directions'} = {
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
          'args' => [
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
          'cmdname' => 'menu',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'second node'
                    }
                  ],
                  'extra' => {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'second-node'
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
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              },
              'type' => 'menu_entry'
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
                      'text' => 'third node'
                    }
                  ],
                  'extra' => {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'third-node'
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
                'file_name' => '',
                'line_nr' => 5,
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
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => '',
            'line_nr' => 3,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
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
              'text' => 'second node'
            }
          ],
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => 'third node'
            }
          ],
          'extra' => {
            'node_content' => [
              {}
            ],
            'normalized' => 'third-node'
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => 'Top'
            }
          ],
          'extra' => {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          },
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => 'Top'
            }
          ],
          'extra' => {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          },
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
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'second node
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
        'is_target' => 1,
        'normalized' => 'second-node'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
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
              'text' => 'third node'
            }
          ],
          'type' => 'line_arg'
        },
        {
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => 'second node'
            }
          ],
          'extra' => {
            'node_content' => [
              {}
            ],
            'normalized' => 'second-node'
          },
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => 'Top'
            }
          ],
          'extra' => {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          },
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
        'normalized' => 'third-node'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 12,
        'macro' => ''
      }
    },
    {
      'args' => [
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
      'cmdname' => 'chapter',
      'extra' => {
        'section_number' => 1
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 13,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}{'contents'}[2]{'args'}[1]{'extra'}{'node_content'}[0] = $result_trees{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}{'contents'}[2]{'args'}[1]{'contents'}[0];
$result_trees{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}{'contents'}[2]{'args'}[2]{'extra'}{'node_content'}[0] = $result_trees{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}{'contents'}[2]{'args'}[2]{'contents'}[0];
$result_trees{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}{'contents'}[2]{'args'}[3]{'extra'}{'node_content'}[0] = $result_trees{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}{'contents'}[2]{'args'}[3]{'contents'}[0];
$result_trees{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}{'contents'}[3]{'args'}[2]{'extra'}{'node_content'}[0] = $result_trees{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}{'contents'}[3]{'args'}[2]{'contents'}[0];
$result_trees{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}{'contents'}[3]{'args'}[3]{'extra'}{'node_content'}[0] = $result_trees{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}{'contents'}[3]{'args'}[3]{'contents'}[0];

$result_texis{'nodes_after_top_before_chapter_not_split_no_use_node_directions'} = '@node Top
Top node
@menu
* second node::
* third node::
@end menu

@node second node, third node,Top,Top

second node

@node third node,,second node,Top
@chapter chapter
';


$result_texts{'nodes_after_top_before_chapter_not_split_no_use_node_directions'} = 'Top node
* second node::
* third node::


second node

1 chapter
*********
';

$result_sectioning{'nodes_after_top_before_chapter_not_split_no_use_node_directions'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'chapter',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'third-node'
            }
          },
          'section_directions' => {
            'up' => {}
          },
          'section_level' => 1,
          'section_number' => 1
        }
      }
    ],
    'section_level' => 0
  }
};
$result_sectioning{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'nodes_after_top_before_chapter_not_split_no_use_node_directions'};

$result_nodes{'nodes_after_top_before_chapter_not_split_no_use_node_directions'} = {
  'cmdname' => 'node',
  'extra' => {
    'node_directions' => {
      'next' => {
        'cmdname' => 'node',
        'extra' => {
          'node_directions' => {
            'next' => {
              'cmdname' => 'node',
              'extra' => {
                'associated_section' => {
                  'cmdname' => 'chapter',
                  'extra' => {
                    'section_number' => 1
                  }
                },
                'node_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'normalized' => 'third-node'
              }
            },
            'prev' => {},
            'up' => {}
          },
          'normalized' => 'second-node'
        }
      }
    },
    'normalized' => 'Top'
  }
};
$result_nodes{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'nodes_after_top_before_chapter_not_split_no_use_node_directions'};
$result_nodes{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'nodes_after_top_before_chapter_not_split_no_use_node_directions'};
$result_nodes{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'nodes_after_top_before_chapter_not_split_no_use_node_directions'};

$result_menus{'nodes_after_top_before_chapter_not_split_no_use_node_directions'} = [
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
        'next' => {
          'extra' => {
            'menu_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'third-node'
          }
        },
        'up' => {}
      },
      'normalized' => 'second-node'
    }
  },
  {}
];
$result_menus{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}[1];
$result_menus{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}[0];
$result_menus{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}[0];
$result_menus{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}[2] = $result_menus{'nodes_after_top_before_chapter_not_split_no_use_node_directions'}[1]{'extra'}{'menu_directions'}{'next'};

$result_errors{'nodes_after_top_before_chapter_not_split_no_use_node_directions'} = [];


$result_floats{'nodes_after_top_before_chapter_not_split_no_use_node_directions'} = {};



$result_converted{'plaintext'}->{'nodes_after_top_before_chapter_not_split_no_use_node_directions'} = 'Top node

second node

1 chapter
*********

';


$result_converted{'html'}->{'nodes_after_top_before_chapter_not_split_no_use_node_directions'} = '<!DOCTYPE html>
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
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">
<a class="node-id" id="Top"></a><div class="nav-panel">
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>
<p>Top node
</p>
<hr>
<a class="node-id" id="second-node"></a><div class="nav-panel">
</div>
<h4 class="node"><span>second node<a class="copiable-link" href="#second-node"> &para;</a></span></h4>

<p>second node
</p>
<hr>
<div class="chapter-level-extent" id="third-node">
<div class="nav-panel">
</div>
<h2 class="chapter" id="chapter"><span>1 chapter<a class="copiable-link" href="#chapter"> &para;</a></span></h2>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'nodes_after_top_before_chapter_not_split_no_use_node_directions'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
