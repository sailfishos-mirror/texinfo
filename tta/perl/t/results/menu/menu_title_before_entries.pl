use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'menu_title_before_entries'} = {
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
                  'contents' => [
                    {
                      'text' => 'Horizontal space
'
                    }
                  ],
                  'type' => 'preformatted'
                }
              ],
              'type' => 'menu_comment'
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
                      'text' => 'chap subnode'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'chap-subnode'
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
                'line_nr' => 5
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
                'line_nr' => 6
              }
            }
          ],
          'source_info' => {
            'line_nr' => 3
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
        'line_nr' => 1
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
                  'text' => 'chap subnode'
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
        'normalized' => 'chap-subnode'
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
  'type' => 'document_root'
};
$result_trees{'menu_title_before_entries'}{'contents'}[1]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'menu_title_before_entries'}{'contents'}[1]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[0];

$result_texis{'menu_title_before_entries'} = '@node Top

@menu
Horizontal space
* chap subnode::
@end menu

@node chap subnode
';


$result_texts{'menu_title_before_entries'} = '
Horizontal space
* chap subnode::

';

$result_nodes{'menu_title_before_entries'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'node_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chap-subnode'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'menu_title_before_entries'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'menu_title_before_entries'}[0];
$result_nodes{'menu_title_before_entries'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'menu_title_before_entries'}[0];
$result_nodes{'menu_title_before_entries'}[1] = $result_nodes{'menu_title_before_entries'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'menu_title_before_entries'} = [
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
      'normalized' => 'chap-subnode'
    }
  }
];
$result_menus{'menu_title_before_entries'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'menu_title_before_entries'}[0];

$result_errors{'menu_title_before_entries'} = [];


$result_floats{'menu_title_before_entries'} = {};



$result_converted{'plaintext'}->{'menu_title_before_entries'} = '* Menu:

Horizontal space
* chap subnode::

';


$result_converted{'html'}->{'menu_title_before_entries'} = '<!DOCTYPE html>
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

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
pre.menu-comment-preformatted {font-family: serif}
span:hover a.copiable-link {visibility: visible}
td.menu-entry-description {vertical-align: top; padding-left: 1em}
td.menu-entry-destination {vertical-align: top}
th.menu-comment {text-align:left}
-->
</style>


</head>

<body lang="en">
<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
Next: <a href="#chap-subnode" accesskey="n" rel="next">chap subnode</a> &nbsp; </p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>

<table class="menu">
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">Horizontal space
</pre></th></tr><tr><td class="menu-entry-destination">&bull; <a href="#chap-subnode" accesskey="1">chap subnode</a>:</td><td class="menu-entry-description">
</td></tr>
</table>

<hr>
<a class="node-id" id="chap-subnode"></a><div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">Top</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; </p>
</div>
<h4 class="node"><span>chap subnode<a class="copiable-link" href="#chap-subnode"> &para;</a></span></h4>



</body>
</html>
';

$result_converted_errors{'html'}->{'menu_title_before_entries'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'menu_title_before_entries'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap subnode</nodenext></node>

<menu endspaces=" ">
<menucomment><pre xml:space="preserve">Horizontal space
</pre></menucomment><menuentry><menuleadingtext>* </menuleadingtext><menunode>chap subnode</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<node identifier="chap-subnode" spaces=" "><nodename>chap subnode</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
';

1;
