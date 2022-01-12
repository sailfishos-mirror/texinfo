use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'html_in_copying'} = {
  'contents' => [
    {
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
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
                  'parent' => {},
                  'text' => 'Copying
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
              'cmdname' => 'html',
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
                      'text' => 'in <b>html</b> in copying `` 
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'rawpreformatted'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'html'
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
                    'command_argument' => 'html',
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'html'
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
                'line_nr' => 5,
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
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 8,
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
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 10,
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
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 11,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[0];
$result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1];
$result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1];
$result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1];
$result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1];
$result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'contents'}[0]{'extra'}{'command'} = $result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'contents'}[1];
$result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'contents'}[2];
$result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'contents'}[2];
$result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1];
$result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[4];
$result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1];
$result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[4];
$result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[0];
$result_trees{'html_in_copying'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[0];
$result_trees{'html_in_copying'}{'contents'}[0]{'parent'} = $result_trees{'html_in_copying'};
$result_trees{'html_in_copying'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[1]{'args'}[0];
$result_trees{'html_in_copying'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[1];
$result_trees{'html_in_copying'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'html_in_copying'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'html_in_copying'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'html_in_copying'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'html_in_copying'}{'contents'}[1]{'parent'} = $result_trees{'html_in_copying'};
$result_trees{'html_in_copying'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[2]{'args'}[0];
$result_trees{'html_in_copying'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[2];
$result_trees{'html_in_copying'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'html_in_copying'}{'contents'}[2];
$result_trees{'html_in_copying'}{'contents'}[2]{'parent'} = $result_trees{'html_in_copying'};

$result_texis{'html_in_copying'} = '
@copying
Copying

@html
in <b>html</b> in copying `` 
@end html
@end copying

@node Top
@top top

';


$result_texts{'html_in_copying'} = '

top
***

';

$result_sectioning{'html_in_copying'} = {
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
$result_sectioning{'html_in_copying'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'html_in_copying'};

$result_nodes{'html_in_copying'} = {
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

$result_menus{'html_in_copying'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_errors{'html_in_copying'} = [];


$result_floats{'html_in_copying'} = {};



$result_converted{'html'}->{'html_in_copying'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- Copying

in <b>html</b> in copying ``  -->
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
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


<div class="top-level-extent" id="Top">
<h1 class="top" id="top">top</h1>

</div>



</body>
</html>
';

1;
