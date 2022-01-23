use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_caption'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
        },
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
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'b'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
',
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'float',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'In float A, B
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'caption',
              'contents' => [],
              'extra' => {
                'float' => {}
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
              'type' => 'empty_spaces_after_close_brace'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'float'
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
                'command_argument' => 'float',
                'spaces_before_argument' => ' ',
                'text_arg' => 'float'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'caption' => {},
            'end_command' => {},
            'node_content' => [
              {}
            ],
            'normalized' => 'b',
            'spaces_before_argument' => ' ',
            'type' => {
              'content' => [
                {}
              ],
              'normalized' => 'a'
            }
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'c'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
',
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'float',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'In float , C
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'shortcaption',
              'contents' => [],
              'extra' => {
                'float' => {}
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_spaces_after_close_brace'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'float'
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
                'command_argument' => 'float',
                'spaces_before_argument' => ' ',
                'text_arg' => 'float'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'node_content' => [
              {}
            ],
            'normalized' => 'c',
            'shortcaption' => {},
            'spaces_before_argument' => ' ',
            'type' => {
              'normalized' => ''
            }
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 6,
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
          'cmdname' => 'float',
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
                  'text' => 'In float
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'shortcaption',
              'contents' => [],
              'extra' => {
                'float' => {}
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 13,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_spaces_after_close_brace'
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'caption',
              'contents' => [],
              'extra' => {
                'float' => {}
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 14,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_spaces_after_close_brace'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'float'
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
                'command_argument' => 'float',
                'spaces_before_argument' => ' ',
                'text_arg' => 'float'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 15,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'caption' => {},
            'end_command' => {},
            'shortcaption' => {},
            'type' => {
              'normalized' => ''
            }
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 11,
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
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'args'}[1];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'extra'}{'float'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'extra'}{'caption'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'extra'}{'type'}{'content'}[0] = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'args'}[1];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'args'}[1]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'extra'}{'float'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'contents'}[3]{'args'}[0];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'contents'}[3];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'contents'}[3];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'args'}[1]{'contents'}[0];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'extra'}{'shortcaption'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'extra'}{'command'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[1];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[2];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'extra'}{'float'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[4];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'extra'}{'float'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[6];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'extra'}{'caption'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[4];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'extra'}{'end_command'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[6];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'extra'}{'shortcaption'} = $result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'contents'}[2];
$result_trees{'empty_caption'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'empty_caption'}{'contents'}[0];
$result_trees{'empty_caption'}{'contents'}[0]{'parent'} = $result_trees{'empty_caption'};

$result_texis{'empty_caption'} = '@float a, b
In float A, B
@caption{}
@end float

@float , c
In float , C
@shortcaption{}
@end float

@float
In float
@shortcaption{}
@caption{}
@end float
';


$result_texts{'empty_caption'} = 'a, b
In float A, B

c
In float , C

In float
';

$result_errors{'empty_caption'} = [];


$result_floats{'empty_caption'} = {
  '' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'normalized' => 'c',
        'shortcaption' => {
          'cmdname' => 'shortcaption',
          'extra' => {
            'float' => {}
          }
        },
        'type' => {
          'normalized' => ''
        }
      },
      'structure' => {
        'float_number' => 1
      }
    },
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'shortcaption' => {
          'cmdname' => 'shortcaption',
          'extra' => {
            'float' => {}
          }
        },
        'type' => {
          'normalized' => ''
        }
      },
      'structure' => {}
    }
  ],
  'a' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'normalized' => 'b',
        'type' => {
          'content' => [
            {
              'text' => 'a'
            }
          ],
          'normalized' => 'a'
        }
      },
      'structure' => {
        'float_number' => 1
      }
    }
  ]
};
$result_floats{'empty_caption'}{''}[0]{'extra'}{'shortcaption'}{'extra'}{'float'} = $result_floats{'empty_caption'}{''}[0];
$result_floats{'empty_caption'}{''}[1]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'empty_caption'}{''}[1];
$result_floats{'empty_caption'}{''}[1]{'extra'}{'shortcaption'}{'extra'}{'float'} = $result_floats{'empty_caption'}{''}[1];
$result_floats{'empty_caption'}{'a'}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'empty_caption'}{'a'}[0];



$result_converted{'plaintext'}->{'empty_caption'} = 'In float A, B

a 1: 
In float , C

1: 
In float

';


$result_converted{'html'}->{'empty_caption'} = '<!DOCTYPE html>
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
<div class="float" id="b">
<p>In float A, B
</p><div class="type-number-float"><p><strong class="strong">a 1: </strong></p></div></div>
<div class="float" id="c">
<p>In float , C
</p><div class="type-number-float"><p><strong class="strong">1: </strong></p></div></div>
<div class="float">
<p>In float
</p></div>


</body>
</html>
';

$result_converted_errors{'html'}->{'empty_caption'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
