use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'commands_in_abbr'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'A'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'abbr'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'b',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 1,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' -- b'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'abbr',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
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
                          'text' => 'A'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'abbr'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'b',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 4,
                            'macro' => ''
                          }
                        },
                        {
                          'parent' => {},
                          'text' => ' -- b'
                        }
                      ],
                      'extra' => {
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'abbr',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 4,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => '.
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
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 3,
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
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[0];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[0];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'command'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'commands_in_abbr'}{'contents'}[0];
$result_trees{'commands_in_abbr'}{'contents'}[0]{'parent'} = $result_trees{'commands_in_abbr'};

$result_texis{'commands_in_abbr'} = '@abbr{A, @b{abbr} -- b}.

@example
@abbr{A, @b{abbr} -- b}.
@end example
';


$result_texts{'commands_in_abbr'} = 'A (abbr - b).

A (abbr -- b).
';

$result_errors{'commands_in_abbr'} = [];


$result_floats{'commands_in_abbr'} = {};



$result_converted{'html'}->{'commands_in_abbr'} = '<!DOCTYPE html>
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
<p><abbr class="abbr" title="abbr &ndash; b">A</abbr> (<b class="b">abbr</b> &ndash; b).
</p>
<div class="example">
<pre class="example-preformatted"><abbr class="abbr" title="abbr &ndash; b">A</abbr> (<b class="b">abbr</b> -- b).
</pre></div>



</body>
</html>
';

$result_converted_errors{'html'}->{'commands_in_abbr'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'commands_in_abbr.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
