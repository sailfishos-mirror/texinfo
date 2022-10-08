use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'example_at_commands_arguments'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'some  thing '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'e'
                        }
                      ],
                      'parent' => {},
                      'type' => 'following_arg'
                    }
                  ],
                  'cmdname' => '^',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'TeX',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'exclamdown',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '---'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'code',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'enddots',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' !_- _---_ < " & '
                },
                {
                  'cmdname' => ' ',
                  'parent' => {}
                },
                {
                  'args' => [
                    {
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'comma',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'cmdname' => '@',
                  'parent' => {}
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '0'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'example',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'example with '
                },
                {
                  'cmdname' => '@',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '-commands and other special characters
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'example'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
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
            'line_nr' => 1,
            'macro' => ''
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'args'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[9];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[12];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[2];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_at_commands_arguments'}{'contents'}[0];
$result_trees{'example_at_commands_arguments'}{'contents'}[0]{'parent'} = $result_trees{'example_at_commands_arguments'};

$result_texis{'example_at_commands_arguments'} = '@example some  thing @^e @TeX{} @exclamdown{} @code{---} @enddots{} !_- _---_ < " & @ @comma{},@@,0
example with @@-commands and other special characters
@end example
';


$result_texts{'example_at_commands_arguments'} = 'example with @-commands and other special characters
';

$result_errors{'example_at_commands_arguments'} = [];


$result_floats{'example_at_commands_arguments'} = {};



$result_converted{'plaintext'}->{'example_at_commands_arguments'} = '     example with @-commands and other special characters
';


$result_converted{'html'}->{'example_at_commands_arguments'} = '<!DOCTYPE html>
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
div.example {margin-left: 3.2em}
-->
</style>


</head>

<body lang="en">
<div class="example user-some-thing-ê-TeX-¡-----...-!_--_---_-&lt;-&quot;-&amp;--, user-@ user-0">
<pre class="example-preformatted">example with @-commands and other special characters
</pre></div>



</body>
</html>
';

$result_converted_errors{'html'}->{'example_at_commands_arguments'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'example_at_commands_arguments.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'docbook'}->{'example_at_commands_arguments'} = '<screen>example with @-commands and other special characters
</screen>';


$result_converted{'xml'}->{'example_at_commands_arguments'} = '<example spaces=" " endspaces=" "><examplelanguage>some  thing <accent type="circ" bracketed="off">e</accent> &tex; &iexcl; <code>---</code> &enddots; !_- _&textmdash;_ &lt; &quot; &amp; <spacecmd type="spc"/>&comma;</examplelanguage><examplearg>&arobase;</examplearg><examplearg>0</examplearg>
<pre xml:space="preserve">example with &arobase;-commands and other special characters
</pre></example>
';


$result_converted{'latex_text'}->{'example_at_commands_arguments'} = '\\begin{Texinfoindented}
\\begin{Texinfopreformatted}%
\\ttfamily example with @-commands and other special characters
\\end{Texinfopreformatted}
\\end{Texinfoindented}
';

1;
