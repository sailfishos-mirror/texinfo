use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'example_empty_arguments'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'extra' => {
                    'command' => {}
                  },
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_spaces_before_argument'
                }
              ],
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
                  'text' => 'example with empty args
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
                'line_nr' => 3,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
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
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [],
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [],
              'extra' => {
                'spaces_before_argument' => '  '
              },
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'extra' => {
                    'command' => {}
                  },
                  'parent' => {},
                  'text' => ' 
',
                  'type' => 'empty_spaces_before_argument'
                }
              ],
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
                  'text' => 'example with empty args with spaces
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
                'line_nr' => 7,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 5,
            'macro' => ''
          },
          'parent' => {}
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
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'nonempty'
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'extra' => {
                    'command' => {}
                  },
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_spaces_before_argument'
                }
              ],
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
                  'text' => 'example with empty and non empty args mix
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
                'line_nr' => 11,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
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
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[4]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[5]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[6]{'contents'}[0]{'extra'}{'command'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[6];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[6]{'contents'}[0]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[6];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'args'}[6]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'args'}[3]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'args'}[4]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'args'}[5]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'args'}[6]{'contents'}[0]{'extra'}{'command'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'args'}[6];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'args'}[6]{'contents'}[0]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'args'}[6];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'args'}[6]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'args'}[1]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'args'}[2]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'args'}[3];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'args'}[3]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'args'}[4]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'args'}[5]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'args'}[6]{'contents'}[0]{'extra'}{'command'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'args'}[6];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'args'}[6]{'contents'}[0]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'args'}[6];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'args'}[6]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'example_empty_arguments'}{'contents'}[0];
$result_trees{'example_empty_arguments'}{'contents'}[0]{'parent'} = $result_trees{'example_empty_arguments'};

$result_texis{'example_empty_arguments'} = '@example ,,,,,,
example with empty args
@end example

@example , ,,  ,,, 
example with empty args with spaces
@end example

@example ,,,nonempty,,,
example with empty and non empty args mix
@end example
';


$result_texts{'example_empty_arguments'} = 'example with empty args

example with empty args with spaces

example with empty and non empty args mix
';

$result_errors{'example_empty_arguments'} = [];


$result_floats{'example_empty_arguments'} = {};



$result_converted{'html'}->{'example_empty_arguments'} = '<!DOCTYPE html>
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
<div class="example">
<pre class="example-preformatted">example with empty args
</pre></div>

<div class="example">
<pre class="example-preformatted">example with empty args with spaces
</pre></div>

<div class="example nonempty">
<pre class="example-preformatted">example with empty and non empty args mix
</pre></div>



</body>
</html>
';

$result_converted_errors{'html'}->{'example_empty_arguments'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
