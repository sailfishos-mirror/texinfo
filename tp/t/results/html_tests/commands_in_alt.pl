use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'commands_in_alt'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'f--ile'
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            },
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            },
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'alt -- '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in b'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'b',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  },
                  'parent' => {}
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'image',
          'contents' => [],
          'extra' => {
            'input_perl_encoding' => 'utf-8'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 1,
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
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'example',
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
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'f--ile'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'alt -- '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in b'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'b',
                          'contents' => [],
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 4,
                            'macro' => ''
                          },
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'image',
                  'contents' => [],
                  'extra' => {
                    'input_perl_encoding' => 'utf-8'
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
                }
              ],
              'parent' => {},
              'type' => 'preformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'example'
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
                'command_argument' => 'example',
                'spaces_before_argument' => ' ',
                'text_arg' => 'example'
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
            'end_command' => {}
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 3,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[0]{'args'}[3];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[0]{'args'}[3];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'extra'}{'command'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'parent'} = $result_trees{'commands_in_alt'};

$result_texis{'commands_in_alt'} = '@image{f--ile,,,alt -- @b{in b}}

@example
@image{f--ile,,,alt -- @b{in b}}
@end example
';


$result_texts{'commands_in_alt'} = 'f--ile

f--ile
';

$result_errors{'commands_in_alt'} = [];


$result_floats{'commands_in_alt'} = {};



$result_converted{'html'}->{'commands_in_alt'} = '<!DOCTYPE html>
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
<img src="f--ile.png" alt="alt &ndash; in b">

<div class="example">
<pre class="example"><img src="f--ile.png" alt="alt &ndash; in b">
</pre></div>



</body>
</html>
';

$result_converted_errors{'html'}->{'commands_in_alt'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
