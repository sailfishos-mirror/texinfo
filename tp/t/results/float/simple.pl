use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'simple'} = {
  'contents' => [
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Type'
            }
          ],
          'parent' => {},
          'type' => 'block_line_arg'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Label'
            }
          ],
          'extra' => {
            'spaces_after_argument' => '
',
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'type' => 'block_line_arg'
        }
      ],
      'cmdname' => 'float',
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
              'text' => 'In float.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Caption.'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'parent' => {},
              'type' => 'brace_command_context'
            }
          ],
          'cmdname' => 'caption',
          'contents' => [],
          'extra' => {
            'float' => {}
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 4,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => '
'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'float'
                }
              ],
              'parent' => {},
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'end',
          'extra' => {
            'command_argument' => 'float',
            'spaces_before_argument' => ' ',
            'text_arg' => 'float'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 5,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'caption' => {},
        'end_command' => {},
        'node_content' => [
          {}
        ],
        'normalized' => 'Label',
        'spaces_before_argument' => ' ',
        'type' => {
          'content' => [
            {}
          ],
          'normalized' => 'Type'
        }
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      },
      'number' => 1,
      'parent' => {}
    }
  ],
  'type' => 'text_root'
};
$result_trees{'simple'}{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'simple'}{'contents'}[0]{'args'}[0];
$result_trees{'simple'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'simple'}{'contents'}[0];
$result_trees{'simple'}{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'simple'}{'contents'}[0]{'args'}[1];
$result_trees{'simple'}{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'simple'}{'contents'}[0];
$result_trees{'simple'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'simple'}{'contents'}[0];
$result_trees{'simple'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'simple'}{'contents'}[0]{'contents'}[1];
$result_trees{'simple'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'simple'}{'contents'}[0];
$result_trees{'simple'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'simple'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'simple'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'simple'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'simple'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'simple'}{'contents'}[0]{'contents'}[2];
$result_trees{'simple'}{'contents'}[0]{'contents'}[2]{'extra'}{'float'} = $result_trees{'simple'}{'contents'}[0];
$result_trees{'simple'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'simple'}{'contents'}[0];
$result_trees{'simple'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'simple'}{'contents'}[0];
$result_trees{'simple'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'simple'}{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'simple'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'simple'}{'contents'}[0]{'contents'}[4];
$result_trees{'simple'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'simple'}{'contents'}[0];
$result_trees{'simple'}{'contents'}[0]{'extra'}{'caption'} = $result_trees{'simple'}{'contents'}[0]{'contents'}[2];
$result_trees{'simple'}{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'simple'}{'contents'}[0]{'contents'}[4];
$result_trees{'simple'}{'contents'}[0]{'extra'}{'node_content'}[0] = $result_trees{'simple'}{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'simple'}{'contents'}[0]{'extra'}{'type'}{'content'}[0] = $result_trees{'simple'}{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'simple'}{'contents'}[0]{'parent'} = $result_trees{'simple'};

$result_texis{'simple'} = '@float Type, Label

In float.
@caption{Caption.}
@end float';


$result_texts{'simple'} = 'Type, Label

In float.

';

$result_errors{'simple'} = [];


$result_floats{'simple'} = {
  'Type' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'end_command' => {
          'cmdname' => 'end',
          'extra' => {
            'command_argument' => 'float',
            'spaces_before_argument' => ' ',
            'text_arg' => 'float'
          }
        },
        'normalized' => 'Label',
        'spaces_before_argument' => ' ',
        'type' => {
          'content' => [
            {
              'text' => 'Type'
            }
          ],
          'normalized' => 'Type'
        }
      },
      'number' => 1
    }
  ]
};
$result_floats{'simple'}{'Type'}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'simple'}{'Type'}[0];



$result_converted{'plaintext'}->{'simple'} = 'In float.


Type 1: Caption.
';


$result_converted{'html'}->{'simple'} = '<!DOCTYPE html>
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
<div class="float"><span id="Label"></span>

<p>In float.
</p>
<div class="float-caption"><p><strong>Type 1: </strong>Caption.</p></div></div>


</body>
</html>
';

$result_converted_errors{'html'}->{'simple'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
