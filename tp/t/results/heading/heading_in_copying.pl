use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'heading_in_copying'} = {
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
                      'text' => 'in copying '
                    },
                    {
                      'cmdname' => '@',
                      'parent' => {}
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
                              'text' => 'heading'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'emph',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 3,
                        'macro' => ''
                      },
                      'parent' => {}
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
              'cmdname' => 'heading',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 3,
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
                      'text' => 'cindex copying'
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
              'cmdname' => 'cindex',
              'extra' => {
                'index_entry' => {
                  'command' => {},
                  'content' => [],
                  'content_normalized' => [],
                  'in_code' => 0,
                  'index_at_command' => 'cindex',
                  'index_ignore_chars' => {},
                  'index_name' => 'cp',
                  'index_type_command' => 'cindex',
                  'number' => 1,
                  'region' => {}
                },
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              },
              'parent' => {},
              'type' => 'index_entry_command'
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
                      'text' => 'second in copying '
                    },
                    {
                      'cmdname' => '@',
                      'parent' => {}
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
                              'text' => 'subheading'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'emph',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 6,
                        'macro' => ''
                      },
                      'parent' => {}
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
              'cmdname' => 'subheading',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 6,
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 11,
            'macro' => ''
          },
          'parent' => {}
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
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'command'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[3];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'extra'}{'index_entry'}{'command'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'extra'}{'index_entry'}{'content'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'extra'}{'index_entry'}{'region'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[3];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[0];
$result_trees{'heading_in_copying'}{'contents'}[0]{'parent'} = $result_trees{'heading_in_copying'};
$result_trees{'heading_in_copying'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[1]{'args'}[0];
$result_trees{'heading_in_copying'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[1];
$result_trees{'heading_in_copying'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[1];
$result_trees{'heading_in_copying'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[1]{'contents'}[1];
$result_trees{'heading_in_copying'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'heading_in_copying'}{'contents'}[1];
$result_trees{'heading_in_copying'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'heading_in_copying'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'heading_in_copying'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'heading_in_copying'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'heading_in_copying'}{'contents'}[1]{'parent'} = $result_trees{'heading_in_copying'};

$result_texis{'heading_in_copying'} = '@copying

@heading in copying @@ @emph{heading}
@cindex cindex copying

@subheading second in copying @@ @emph{subheading}
@end copying

@node Top

@insertcopying
';


$result_texts{'heading_in_copying'} = '

';

$result_nodes{'heading_in_copying'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_menus{'heading_in_copying'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_errors{'heading_in_copying'} = [];


$result_floats{'heading_in_copying'} = {};


$result_indices_sort_strings{'heading_in_copying'} = {
  'cp' => [
    'cindex copying'
  ]
};



$result_converted{'plaintext'}->{'heading_in_copying'} = 'in copying @ _heading_
======================

second in copying @ _subheading_
--------------------------------

';


$result_converted{'html'}->{'heading_in_copying'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- 
in copying @ heading
====================

second in copying @ subheading
- -->
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
kbd {font-style: oblique}
-->
</style>


</head>

<body lang="en">

<h1 class="node-heading" id="Top">Top</h1>


<h3 class="heading" id="in-copying-_0040-heading">in copying @ <em>heading</em></h3>
<a class="index-entry-anchor" id="index-copying-cindex-copying"></a>

<h4 class="subheading" id="second-in-copying-_0040-subheading">second in copying @ <em>subheading</em></h4>



</body>
</html>
';

$result_converted_errors{'html'}->{'heading_in_copying'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
