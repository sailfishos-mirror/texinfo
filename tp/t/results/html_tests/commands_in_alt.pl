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
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
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
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          }
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
          'args' => [
            {
              'contents' => [],
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
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 4,
                            'macro' => ''
                          }
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
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 4,
                    'macro' => ''
                  }
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
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[3];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[3];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'commands_in_alt'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
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
div.example {margin-left: 3.2em}
-->
</style>


</head>

<body lang="en">
<img class="image" src="f--ile.png" alt="alt &ndash; in b">

<div class="example">
<pre class="example-preformatted"><img class="image" src="f--ile.png" alt="alt &ndash; in b">
</pre></div>



</body>
</html>
';

$result_converted_errors{'html'}->{'commands_in_alt'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'commands_in_alt.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
