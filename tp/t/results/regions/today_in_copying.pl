use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'today_in_copying'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'copying',
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
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'today',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 2,
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'copying'
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
                'command_argument' => 'copying',
                'spaces_before_argument' => ' ',
                'text_arg' => 'copying'
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
            'end_command' => {}
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
      'contents' => [],
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
        'line_nr' => 5,
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
          'args' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'insertcopying',
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
        'line_nr' => 6,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'command'} = $result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[0];
$result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[0];
$result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[0];
$result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[0];
$result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'today_in_copying'}{'contents'}[0];
$result_trees{'today_in_copying'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'today_in_copying'}{'contents'}[0];
$result_trees{'today_in_copying'}{'contents'}[0]{'parent'} = $result_trees{'today_in_copying'};
$result_trees{'today_in_copying'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'today_in_copying'}{'contents'}[1]{'args'}[0];
$result_trees{'today_in_copying'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'today_in_copying'}{'contents'}[1];
$result_trees{'today_in_copying'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'today_in_copying'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'today_in_copying'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'today_in_copying'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'today_in_copying'}{'contents'}[1]{'parent'} = $result_trees{'today_in_copying'};
$result_trees{'today_in_copying'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'today_in_copying'}{'contents'}[2]{'args'}[0];
$result_trees{'today_in_copying'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'today_in_copying'}{'contents'}[2];
$result_trees{'today_in_copying'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'today_in_copying'}{'contents'}[2];
$result_trees{'today_in_copying'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'today_in_copying'}{'contents'}[2]{'contents'}[1];
$result_trees{'today_in_copying'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'today_in_copying'}{'contents'}[2];
$result_trees{'today_in_copying'}{'contents'}[2]{'parent'} = $result_trees{'today_in_copying'};

$result_texis{'today_in_copying'} = '@copying
@today{}.
@end copying

@node Top
@top top

@insertcopying
';


$result_texts{'today_in_copying'} = '
top
***

';

$result_sectioning{'today_in_copying'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
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
$result_sectioning{'today_in_copying'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'today_in_copying'};

$result_nodes{'today_in_copying'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  }
};

$result_menus{'today_in_copying'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_errors{'today_in_copying'} = [];


$result_floats{'today_in_copying'} = {};



$result_converted{'info'}->{'today_in_copying'} = 'This is , produced from .

a sunny day.


File: ,  Node: Top,  Up: (dir)

top
***

a sunny day.


Tag Table:
Node: Top41

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'today_in_copying'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- a sunny day. -->
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">


</head>

<body lang="en">

<div class="top-level-extent" id="Top">
<h1 class="top" id="top">top</h1>

<p>a sunny day.
</p></div>



</body>
</html>
';

1;
