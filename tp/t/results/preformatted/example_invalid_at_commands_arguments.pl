use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'example_invalid_at_commands_arguments'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'a'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'b'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'c'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'd'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'ref',
                  'extra' => {
                    'node_argument' => {
                      'node_content' => [
                        {}
                      ]
                    }
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' fa'
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'an anchor'
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
                    'normalized' => 'an-anchor'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'spaces_after_close_brace'
                },
                {
                  'parent' => {},
                  'text' => 'on example line'
                }
              ],
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in center'
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
                  'cmdname' => 'center',
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
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'example',
          'contents' => [
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
                'line_nr' => 2,
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
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[2];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[3];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'extra'}{'node_content'}[0] = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[2]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[2]{'contents'}[0];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[2];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0];
$result_trees{'example_invalid_at_commands_arguments'}{'contents'}[0]{'parent'} = $result_trees{'example_invalid_at_commands_arguments'};

$result_texis{'example_invalid_at_commands_arguments'} = '@example @ref{a,b,c,d} fa, @anchor{an anchor} on example line, @center in center
@end example
';


$result_texts{'example_invalid_at_commands_arguments'} = '';

$result_errors{'example_invalid_at_commands_arguments'} = [
  {
    'error_line' => 'warning: @ref should not appear in @example
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@ref should not appear in @example',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @anchor should not appear in @example
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@anchor should not appear in @example',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @center should not appear in @example
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@center should not appear in @example',
    'type' => 'warning'
  }
];


$result_floats{'example_invalid_at_commands_arguments'} = {};



$result_converted{'plaintext'}->{'example_invalid_at_commands_arguments'} = '';


$result_converted{'html'}->{'example_invalid_at_commands_arguments'} = '<!DOCTYPE html>
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



</head>

<body lang="en">



</body>
</html>
';

$result_converted_errors{'html'}->{'example_invalid_at_commands_arguments'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'example_invalid_at_commands_arguments.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'docbook'}->{'example_invalid_at_commands_arguments'} = '';


$result_converted{'xml'}->{'example_invalid_at_commands_arguments'} = '<example spaces=" " endspaces=" "><examplelanguage><ref label="a" manual="d"><xrefnodename>a</xrefnodename><xrefinfoname>b</xrefinfoname><xrefprinteddesc>c</xrefprinteddesc><xrefinfofile>d</xrefinfofile></ref> fa</examplelanguage><examplearg spaces=" "><anchor name="an-anchor">an anchor</anchor> on example line</examplearg><examplearg spaces=" "><center spaces=" ">in center</center>
</examplearg></example>
';


$result_converted{'latex_text'}->{'example_invalid_at_commands_arguments'} = '\\begin{Texinfoindented}
\\end{Texinfoindented}
';

1;
