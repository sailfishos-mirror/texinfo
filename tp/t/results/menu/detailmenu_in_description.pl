use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'detailmenu_in_description'} = {
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
                  'text' => 'Copying Conditions'
                }
              ],
              'parent' => {},
              'type' => 'menu_entry_node'
            },
            {
              'parent' => {},
              'text' => '::          ',
              'type' => 'menu_entry_separator'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Your rights.
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
              'normalized' => 'Copying-Conditions'
            }
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 3,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'menu_entry'
        },
        {
          'cmdname' => 'detailmenu',
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
                      'text' => 'detailmenu'
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
                  'normalized' => 'detailmenu'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 5,
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
                      'text' => 'detailmenu'
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
                'command_argument' => 'detailmenu',
                'spaces_before_argument' => ' ',
                'text_arg' => 'detailmenu'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 6,
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
            'line_nr' => 4,
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
        'line_nr' => 2,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'text_root'
};
$result_trees{'detailmenu_in_description'}{'contents'}[0]{'parent'} = $result_trees{'detailmenu_in_description'};
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'detailmenu_in_description'}{'contents'}[1];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[1];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[1];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[1];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[1];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'extra'}{'command'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[1];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[1];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[1];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[1];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[3];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[1];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[3];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[2];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'contents'}[2];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[3];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'detailmenu_in_description'}{'contents'}[1];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'detailmenu_in_description'}{'contents'}[1]{'contents'}[3];
$result_trees{'detailmenu_in_description'}{'contents'}[1]{'parent'} = $result_trees{'detailmenu_in_description'};

$result_texis{'detailmenu_in_description'} = '
@menu
* Copying Conditions::          Your rights.
@detailmenu
* detailmenu::
@end detailmenu
@end menu
';


$result_texts{'detailmenu_in_description'} = '
* Copying Conditions::          Your rights.
* detailmenu::
';

$result_errors{'detailmenu_in_description'} = [];


$result_floats{'detailmenu_in_description'} = {};



$result_converted{'plaintext'}->{'detailmenu_in_description'} = '* Menu:

* Copying Conditions::          Your rights.
* detailmenu::
';


$result_converted{'html'}->{'detailmenu_in_description'} = '<!DOCTYPE html>
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

<style type="text/css">
<!--
a.copiable-anchor {visibility: hidden; text-decoration: none; line-height: 0em}
a.summary-letter {text-decoration: none}
blockquote.indentedblock {margin-right: 0em}
div.center-align {text-align:center}
div.display {margin-left: 3.2em}
div.example {margin-left: 3.2em}
h1.center-align {text-align:center}
h2.center-align {text-align:center}
h3.center-align {text-align:center}
h3.right-align {text-align:right}
h4.center-align {text-align:center}
kbd {font-style: oblique}
p.center-align {text-align:center}
p.left-align {text-align:left}
p.right-align {text-align:right}
pre.display {font-family: inherit}
pre.format {font-family: inherit}
pre.menu-comment {font-family: serif}
pre.menu-preformatted {font-family: serif}
span.nolinebreak {white-space: nowrap}
span.roman {font-family: initial; font-weight: normal}
span.sansserif {font-family: sans-serif; font-weight: normal}
span:hover a.copiable-anchor {visibility: visible}
ul.no-bullet {list-style: none}
-->
</style>


</head>

<body lang="en">

<table class="menu" border="0" cellspacing="0">
<tr><td align="left" valign="top">&bull; Copying Conditions:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">Your rights.
</td></tr>
<tr><td align="left" valign="top">&bull; detailmenu:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
</table>



</body>
</html>
';

$result_converted_errors{'html'}->{'detailmenu_in_description'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'detailmenu_in_description'} = '
<menu endspaces=" ">
<menuentry leadingtext="* "><menunode separator="::          ">Copying Conditions</menunode><menudescription><pre xml:space="preserve">Your rights.
</pre></menudescription></menuentry><detailmenu endspaces=" ">
<menuentry leadingtext="* "><menunode separator="::">detailmenu</menunode><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></detailmenu>
</menu>
';

1;
