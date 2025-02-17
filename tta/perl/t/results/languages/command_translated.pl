use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'command_translated'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'documentlanguage',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'fr'
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
                'text_arg' => 'fr'
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
        'line_nr' => 3
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
                  'text' => 'top '
                },
                {
                  'cmdname' => 'error',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 4
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
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'error',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 6
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
        'line_nr' => 4
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
                  'text' => 'chapter '
                },
                {
                  'cmdname' => 'error',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 8
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
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'chapter-error_002d_002d_003e'
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
          'type' => 'arguments_line'
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
    }
  ],
  'type' => 'document_root'
};

$result_texis{'command_translated'} = '@documentlanguage fr

@node Top
@top top @error{}

@error{}

@node chapter @error{}
@chapter Chapter
';


$result_texts{'command_translated'} = '
top error-->
************

error-->

1 Chapter
*********
';

$result_sectioning{'command_translated'} = {
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
                    'normalized' => 'chapter-error_002d_002d_003e'
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
$result_sectioning{'command_translated'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'command_translated'}{'extra'}{'section_childs'}[0];
$result_sectioning{'command_translated'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'command_translated'}{'extra'}{'section_childs'}[0];
$result_sectioning{'command_translated'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'command_translated'}{'extra'}{'section_childs'}[0];
$result_sectioning{'command_translated'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'command_translated'};

$result_nodes{'command_translated'} = [
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
            'normalized' => 'chapter-error_002d_002d_003e'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'command_translated'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'command_translated'}[0];
$result_nodes{'command_translated'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'command_translated'}[0];
$result_nodes{'command_translated'}[1] = $result_nodes{'command_translated'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'command_translated'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chapter-error_002d_002d_003e'
    }
  }
];

$result_errors{'command_translated'} = [];


$result_floats{'command_translated'} = {};



$result_converted{'plaintext'}->{'command_translated'} = 'top erreur→
***********

erreur→

1 Chapter
*********

';


$result_converted{'info'}->{'command_translated'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapter erreur→,  Up: (dir)

top erreur→
***********

erreur→

* Menu:

* chapter erreur→::


File: ,  Node: chapter erreur→,  Prev: Top,  Up: Top

1 Chapter
*********


Tag Table:
Node: Top27
Node: chapter erreur→149

End Tag Table


Local Variables:
coding: utf-8
Info-documentlanguage: fr
End:
';


$result_converted{'html'}->{'command_translated'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top erreur&rarr;</title>

<meta name="description" content="top erreur&rarr;">
<meta name="keywords" content="top erreur&rarr;">
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

<body lang="fr">

<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Suivant: <a href="#chapter-error_002d_002d_003e" accesskey="n" rel="next">Chapter</a> &nbsp; </p>
</div>
<h1 class="top" id="top-error_002d_002d_003e"><span>top erreur&rarr;<a class="copiable-link" href="#top-error_002d_002d_003e"> &para;</a></span></h1>

<p>erreur&rarr;
</p>
<ul class="mini-toc">
<li><a href="#chapter-error_002d_002d_003e" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter-error_002d_002d_003e">
<div class="nav-panel">
<p>
Pr&eacute;c&eacute;dent: <a href="#Top" accesskey="p" rel="prev">top erreur&rarr;</a>, Monter: <a href="#Top" accesskey="u" rel="up">top erreur&rarr;</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>
</div>
</div>



</body>
</html>
';

1;
