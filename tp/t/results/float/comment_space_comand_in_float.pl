use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'comment_space_comand_in_float'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'type' => 'preamble_before_content'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Top'
            }
          ],
          'info' => {
            'spaces_after_argument' => {
              'text' => '
'
            }
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'Text '
                },
                {
                  'cmdname' => ' '
                }
              ],
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'text' => 'label '
                },
                {
                  'cmdname' => ' '
                }
              ],
              'info' => {
                'comment_at_end' => {
                  'args' => [
                    {
                      'text' => ' float
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' float
'
                    ]
                  }
                },
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'float',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Float
'
                }
              ],
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'float'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'float'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'node_content' => [
              {},
              {}
            ],
            'normalized' => 'label-',
            'type' => {
              'content' => [
                {},
                {}
              ],
              'normalized' => 'Text  '
            }
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 3,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'Text '
                },
                {
                  'cmdname' => ' '
                }
              ],
              'info' => {
                'comment_at_end' => {
                  'args' => [
                    {
                      'text' => ' listoffloats
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' listoffloats
'
                    ]
                  }
                }
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'listoffloats',
          'extra' => {
            'type' => {
              'content' => [
                {},
                {}
              ],
              'normalized' => 'Text  '
            }
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 7,
            'macro' => ''
          }
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
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'comment_space_comand_in_float'}{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'comment_space_comand_in_float'}{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'comment_space_comand_in_float'}{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}[1] = $result_trees{'comment_space_comand_in_float'}{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[1];
$result_trees{'comment_space_comand_in_float'}{'contents'}[1]{'contents'}[1]{'extra'}{'type'}{'content'}[0] = $result_trees{'comment_space_comand_in_float'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'comment_space_comand_in_float'}{'contents'}[1]{'contents'}[1]{'extra'}{'type'}{'content'}[1] = $result_trees{'comment_space_comand_in_float'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'comment_space_comand_in_float'}{'contents'}[1]{'contents'}[3]{'extra'}{'type'}{'content'}[0] = $result_trees{'comment_space_comand_in_float'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'comment_space_comand_in_float'}{'contents'}[1]{'contents'}[3]{'extra'}{'type'}{'content'}[1] = $result_trees{'comment_space_comand_in_float'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[1];
$result_trees{'comment_space_comand_in_float'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'comment_space_comand_in_float'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'comment_space_comand_in_float'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'comment_space_comand_in_float'}{'contents'}[1]{'args'}[0]{'contents'}[0];

$result_texis{'comment_space_comand_in_float'} = '@node Top

@float Text @ , label @ @c float
Float
@end float

@listoffloats Text @ @c listoffloats
';


$result_texts{'comment_space_comand_in_float'} = '
Text  , label  
Float

';

$result_nodes{'comment_space_comand_in_float'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'info' => {}
};

$result_menus{'comment_space_comand_in_float'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'info' => {}
};

$result_errors{'comment_space_comand_in_float'} = [];


$result_floats{'comment_space_comand_in_float'} = {
  'Text  ' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'normalized' => 'label-',
        'type' => {
          'content' => [
            {
              'text' => 'Text '
            },
            {
              'cmdname' => ' '
            }
          ],
          'normalized' => 'Text  '
        }
      },
      'info' => {},
      'structure' => {
        'float_number' => 1
      }
    }
  ]
};



$result_converted{'plaintext'}->{'comment_space_comand_in_float'} = 'Float

Text   1
* Menu:

* Text   1: label  .                     

';


$result_converted{'info'}->{'comment_space_comand_in_float'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

Float

Text   1
* Menu:

* Text   1: label  .                     



Tag Table:
Node: Top27
Ref: label  61

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'comment_space_comand_in_float'} = '<!DOCTYPE html>
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
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">
<h1 class="node" id="Top"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>

<div class="float" id="label-">
<p>Float
</p><div class="type-number-float"><p><strong class="strong">Text &nbsp; 1</strong></p></div></div>
<dl class="listoffloats">
<dt><a href="#label-">Text &nbsp; 1</a></dt><dd></dd>
</dl>



</body>
</html>
';

$result_converted_errors{'html'}->{'comment_space_comand_in_float'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'comment_space_comand_in_float'} = '<node name="Top" spaces=" "><nodename>Top</nodename></node>

<float name="label-" type="Text  " number="1" spaces=" " endspaces=" "><floattype>Text <spacecmd type="spc"/></floattype><floatname spaces=" ">label <spacecmd type="spc"/></floatname><!-- c float -->
<para>Float
</para></float>

<listoffloats type="Text  " spaces=" ">Text <spacecmd type="spc"/></listoffloats><!-- c listoffloats -->
';

1;
