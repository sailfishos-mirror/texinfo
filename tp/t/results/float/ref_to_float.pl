use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'ref_to_float'} = {
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
                  'text' => 'Text'
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Label1'
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
                  'text' => 'Float
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
                'line_nr' => 3,
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
            'normalized' => 'Label1',
            'spaces_before_argument' => ' ',
            'type' => {
              'content' => [
                {}
              ],
              'normalized' => 'Text'
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
                  'text' => 'Label2'
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
                  'text' => 'In foat 2.
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
                'line_nr' => 7,
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
            'normalized' => 'Label2',
            'spaces_before_argument' => ' ',
            'type' => {
              'normalized' => ''
            }
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Label1'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'contents' => [],
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'Label1'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Label2'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'contents' => [],
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'Label2'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1]{'args'}[1];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1]{'extra'}{'type'}{'content'}[0] = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3]{'args'}[1];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3]{'args'}[1]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3]{'args'}[1]{'contents'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[5]{'contents'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'extra'}{'label'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[1];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[5];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[5];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[7]{'contents'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'extra'}{'label'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[3];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[7];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[7];
$result_trees{'ref_to_float'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'ref_to_float'}{'contents'}[0];
$result_trees{'ref_to_float'}{'contents'}[0]{'parent'} = $result_trees{'ref_to_float'};

$result_texis{'ref_to_float'} = '@float Text, Label1
Float
@end float

@float , Label2
In foat 2.
@end float

@ref{Label1}

@ref{Label2}
';


$result_texts{'ref_to_float'} = 'Text, Label1
Float

Label2
In foat 2.

Label1

Label2
';

$result_errors{'ref_to_float'} = [];


$result_floats{'ref_to_float'} = {
  '' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'normalized' => 'Label2',
        'type' => {
          'normalized' => ''
        }
      },
      'structure' => {
        'float_number' => 1
      }
    }
  ],
  'Text' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'normalized' => 'Label1',
        'type' => {
          'content' => [
            {
              'text' => 'Text'
            }
          ],
          'normalized' => 'Text'
        }
      },
      'structure' => {
        'float_number' => 1
      }
    }
  ]
};



$result_converted{'plaintext'}->{'ref_to_float'} = 'Float

Text 1

In foat 2.

1

*note Text 1: Label1.

   *note 1: Label2.
';


$result_converted{'html'}->{'ref_to_float'} = '<!DOCTYPE html>
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
-->
</style>


</head>

<body lang="en">
<div class="float" id="Label1">
<p>Float
</p><div class="float-caption"><p><strong class="strong">Text 1
</strong></p></div></div>
<div class="float" id="Label2">
<p>In foat 2.
</p><div class="float-caption"><p><strong class="strong">1
</strong></p></div></div>
<p><a class="ref" href="#Label1">Text 1</a>
</p>
<p><a class="ref" href="#Label2">1</a>
</p>


</body>
</html>
';

$result_converted_errors{'html'}->{'ref_to_float'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
