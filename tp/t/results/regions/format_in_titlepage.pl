use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'format_in_titlepage'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'titlepage',
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
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'format',
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
                      'parent' => {},
                      'text' => 'Published
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
                          'text' => 'format'
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
                    'command_argument' => 'format',
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'format'
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
                      'text' => 'titlepage'
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
                'command_argument' => 'titlepage',
                'spaces_before_argument' => ' ',
                'text_arg' => 'titlepage'
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
        }
      ],
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
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
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
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 9,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'command'} = $result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0];
$result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0];
$result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0];
$result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'command'} = $result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0];
$result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0];
$result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0];
$result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'format_in_titlepage'}{'contents'}[0];
$result_trees{'format_in_titlepage'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'format_in_titlepage'}{'contents'}[0];
$result_trees{'format_in_titlepage'}{'contents'}[0]{'parent'} = $result_trees{'format_in_titlepage'};
$result_trees{'format_in_titlepage'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'format_in_titlepage'}{'contents'}[1]{'args'}[0];
$result_trees{'format_in_titlepage'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'format_in_titlepage'}{'contents'}[1];
$result_trees{'format_in_titlepage'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'format_in_titlepage'}{'contents'}[1];
$result_trees{'format_in_titlepage'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'format_in_titlepage'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'format_in_titlepage'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'format_in_titlepage'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'format_in_titlepage'}{'contents'}[1]{'parent'} = $result_trees{'format_in_titlepage'};

$result_texis{'format_in_titlepage'} = '@titlepage

@format
Published
@end format

@end titlepage

@node Top

';


$result_texts{'format_in_titlepage'} = '

';

$result_nodes{'format_in_titlepage'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_menus{'format_in_titlepage'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_errors{'format_in_titlepage'} = [];


$result_floats{'format_in_titlepage'} = {};



$result_converted{'info'}->{'format_in_titlepage'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)



Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'format_in_titlepage'} = '<!DOCTYPE html>
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

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
-->
</style>


</head>

<body lang="en">

<h1 class="node-heading" id="Top">Top</h1>




</body>
</html>
';

$result_converted_errors{'html'}->{'format_in_titlepage'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
