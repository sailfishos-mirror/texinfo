use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'menu_pointing_to_anchor'} = {
  'contents' => [
    {
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
      'parent' => {},
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
              'parent' => {},
              'text' => 'top'
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
      'cmdname' => 'top',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Text
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'An anchor'
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'anchor',
          'extra' => {
            'node_content' => [
              {}
            ],
            'normalized' => 'An-anchor'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 6,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'spaces_after_close_brace'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
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
                      'text' => 'An anchor'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '::                ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'menu entry pointing to the anchor.
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
                  'normalized' => 'An-anchor'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              },
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'menu'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 8,
            'macro' => ''
          }
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 2,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'menu_pointing_to_anchor'}{'contents'}[0]{'parent'} = $result_trees{'menu_pointing_to_anchor'};
$result_trees{'menu_pointing_to_anchor'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[1]{'args'}[0];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[1];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'menu_pointing_to_anchor'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'menu_pointing_to_anchor'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[1]{'parent'} = $result_trees{'menu_pointing_to_anchor'};
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'args'}[0];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[1];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[3];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[0];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'args'}[1];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[0];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[0];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'args'}[3];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[0];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'args'}[3];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[1];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'menu_pointing_to_anchor'}{'contents'}[2];
$result_trees{'menu_pointing_to_anchor'}{'contents'}[2]{'parent'} = $result_trees{'menu_pointing_to_anchor'};

$result_texis{'menu_pointing_to_anchor'} = '@node Top
@top top

Text

@anchor{An anchor}

@menu
* An anchor::                menu entry pointing to the anchor.
@end menu
';


$result_texts{'menu_pointing_to_anchor'} = 'top
***

Text


* An anchor::                menu entry pointing to the anchor.
';

$result_sectioning{'menu_pointing_to_anchor'} = {
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
            'structure' => {}
          }
        },
        'structure' => {
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'menu_pointing_to_anchor'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'menu_pointing_to_anchor'};

$result_nodes{'menu_pointing_to_anchor'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'menus' => [
      {
        'cmdname' => 'menu'
      }
    ],
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'anchor',
      'extra' => {
        'normalized' => 'An-anchor'
      },
      'structure' => {
        'node_prev' => {}
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'menu_pointing_to_anchor'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'menu_pointing_to_anchor'};
$result_nodes{'menu_pointing_to_anchor'}{'structure'}{'node_next'} = $result_nodes{'menu_pointing_to_anchor'}{'structure'}{'menu_child'};

$result_menus{'menu_pointing_to_anchor'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'anchor',
      'extra' => {
        'normalized' => 'An-anchor'
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
$result_menus{'menu_pointing_to_anchor'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'menu_pointing_to_anchor'};

$result_errors{'menu_pointing_to_anchor'} = [];


$result_floats{'menu_pointing_to_anchor'} = {};



$result_converted{'plaintext'}->{'menu_pointing_to_anchor'} = 'top
***

Text

* Menu:

* An anchor::                menu entry pointing to the anchor.
';


$result_converted{'html'}->{'menu_pointing_to_anchor'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
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
td.menu-entry-description {vertical-align: top}
td.menu-entry-destination {vertical-align: top}
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="Top">
<h1 class="top" id="top">top</h1>

<p>Text
</p>
<a class="anchor" id="An-anchor"></a>
<table class="menu" border="0" cellspacing="0">
<tr><td class="menu-entry-destination">&bull; <a href="#An-anchor" accesskey="1">An anchor</a>:</td><td>&nbsp;&nbsp;</td><td class="menu-entry-description">menu entry pointing to the anchor.
</td></tr>
</table>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'menu_pointing_to_anchor'} = '<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">An anchor</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<para>Text
</para>
<anchor name="An-anchor">An anchor</anchor>

<menu endspaces=" ">
<menuentry leadingtext="* "><menunode separator="::                ">An anchor</menunode><menudescription><pre xml:space="preserve">menu entry pointing to the anchor.
</pre></menudescription></menuentry></menu>
</top>
';

1;
