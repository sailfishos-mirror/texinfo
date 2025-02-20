use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'double_recursive_self_section_reference'} = {
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
                  'text' => 'n1'
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
        'normalized' => 'n1'
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
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'ref',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'n2'
                        }
                      ],
                      'extra' => {
                        'node_content' => {
                          'contents' => [
                            {}
                          ]
                        },
                        'normalized' => 'n2'
                      },
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 2
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
                  'text' => 'n2'
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
        'normalized' => 'n2'
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
                  'cmdname' => 'ref',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'n1'
                        }
                      ],
                      'extra' => {
                        'node_content' => {
                          'contents' => [
                            {}
                          ]
                        },
                        'normalized' => 'n1'
                      },
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 5
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
    }
  ],
  'type' => 'document_root'
};
$result_trees{'double_recursive_self_section_reference'}{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'double_recursive_self_section_reference'}{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'double_recursive_self_section_reference'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'double_recursive_self_section_reference'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];

$result_texis{'double_recursive_self_section_reference'} = '@node n1
@chapter @ref{n2}

@node n2
@chapter @ref{n1}
';


$result_texts{'double_recursive_self_section_reference'} = '1 n2
****

2 n1
****
';

$result_sectioning{'double_recursive_self_section_reference'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'chapter',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'n1'
            }
          },
          'section_directions' => {},
          'section_level' => 1,
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
              'normalized' => 'n2'
            }
          },
          'section_directions' => {
            'prev' => {}
          },
          'section_level' => 1,
          'section_number' => '2',
          'toplevel_directions' => {
            'prev' => {}
          }
        }
      }
    ],
    'section_level' => 0
  }
};
$result_sectioning{'double_recursive_self_section_reference'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'double_recursive_self_section_reference'};
$result_sectioning{'double_recursive_self_section_reference'}{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'double_recursive_self_section_reference'}{'extra'}{'section_childs'}[0];
$result_sectioning{'double_recursive_self_section_reference'}{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'double_recursive_self_section_reference'}{'extra'}{'section_childs'}[0];

$result_nodes{'double_recursive_self_section_reference'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'chapter',
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
              'prev' => {}
            },
            'normalized' => 'n2'
          }
        }
      },
      'normalized' => 'n1'
    }
  },
  {}
];
$result_nodes{'double_recursive_self_section_reference'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'double_recursive_self_section_reference'}[0];
$result_nodes{'double_recursive_self_section_reference'}[1] = $result_nodes{'double_recursive_self_section_reference'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'double_recursive_self_section_reference'} = [
  {
    'extra' => {
      'normalized' => 'n1'
    }
  },
  {
    'extra' => {
      'normalized' => 'n2'
    }
  }
];

$result_errors{'double_recursive_self_section_reference'} = [];


$result_floats{'double_recursive_self_section_reference'} = {};



$result_converted{'plaintext'}->{'double_recursive_self_section_reference'} = '1 n2
****

2 n1
****

';


$result_converted{'html'}->{'double_recursive_self_section_reference'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#n1" rel="start" title="n1">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">
<div class="chapter-level-extent" id="n1">
<div class="nav-panel">
<p>
Next: <a href="#n2" accesskey="n" rel="next"><a class="ref" href="#n1"><a class="ref" href="#n2">n2</a></a></a> &nbsp; </p>
</div>
<h2 class="chapter" id="n2-1"><span>1 <a class="ref" href="#n2"><a class="ref" href="#n1"><a class="ref" href="#n2">n2</a></a></a><a class="copiable-link" href="#n2-1"> &para;</a></span></h2>

<hr>
</div>
<div class="chapter-level-extent" id="n2">
<div class="nav-panel">
<p>
Previous: <a href="#n1" accesskey="p" rel="prev"><a class="ref" href="#n2">n2</a></a> &nbsp; </p>
</div>
<h2 class="chapter" id="n1-1"><span>2 <a class="ref" href="#n1"><a class="ref" href="#n2">n2</a></a><a class="copiable-link" href="#n1-1"> &para;</a></span></h2>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'double_recursive_self_section_reference'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
