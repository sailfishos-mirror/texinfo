use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'cindex_in_caption'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'fl'
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
          'cmdname' => 'listoffloats',
          'extra' => {
            'spaces_before_argument' => ' ',
            'type' => {
              'content' => [
                {}
              ],
              'normalized' => 'fl'
            }
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
                  'text' => 'fl'
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'label'
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
                  'text' => 'In float.
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in caption
'
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'index entry'
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
                              'node' => {},
                              'number' => 1
                            },
                            'spaces_before_argument' => ' '
                          },
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 8,
                            'macro' => ''
                          },
                          'parent' => {},
                          'type' => 'index_entry_command'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
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
                'line_nr' => 7,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
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
                'line_nr' => 10,
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
            'normalized' => 'label',
            'spaces_before_argument' => ' ',
            'type' => {
              'content' => [
                {}
              ],
              'normalized' => 'fl'
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'cp'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 12,
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
      'extra' => {
        'isindex' => 1,
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
        'line_nr' => 1,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'cindex_in_caption'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[0];
$result_trees{'cindex_in_caption'}{'contents'}[0]{'parent'} = $result_trees{'cindex_in_caption'};
$result_trees{'cindex_in_caption'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'args'}[0];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[1];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[1]{'extra'}{'type'}{'content'}[0] = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'args'}[1];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'args'}[1]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[0];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'cindex_in_caption'}{'contents'}[1];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'extra'}{'float'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[3]{'args'}[0];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[3];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'extra'}{'caption'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[3];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'args'}[1]{'contents'}[0];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'extra'}{'type'}{'content'}[0] = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[5]{'args'}[0];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[5];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'cindex_in_caption'}{'contents'}[1];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'cindex_in_caption'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'cindex_in_caption'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'parent'} = $result_trees{'cindex_in_caption'};

$result_texis{'cindex_in_caption'} = '@node Top

@listoffloats fl

@float fl, label
In float.
@caption{in caption
@cindex index entry
}
@end float

@printindex cp

';


$result_texts{'cindex_in_caption'} = '

fl, label
In float.



';

$result_nodes{'cindex_in_caption'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

$result_menus{'cindex_in_caption'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

$result_errors{'cindex_in_caption'} = [];


$result_floats{'cindex_in_caption'} = {
  'fl' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          },
          'structure' => {}
        },
        'normalized' => 'label',
        'type' => {
          'content' => [
            {
              'text' => 'fl'
            }
          ],
          'normalized' => 'fl'
        }
      },
      'structure' => {
        'float_number' => 1
      }
    }
  ]
};
$result_floats{'cindex_in_caption'}{'fl'}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'cindex_in_caption'}{'fl'}[0];


$result_indices_sort_strings{'cindex_in_caption'} = {
  'cp' => [
    'index entry'
  ]
};



$result_converted{'plaintext'}->{'cindex_in_caption'} = '* Menu:

* fl 1: label.                           in caption

In float.


fl 1: in caption

* Menu:

* index entry:                           Top.                   (line 7)

';


$result_converted{'info'}->{'cindex_in_caption'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

* Menu:

* fl 1: label.                           in caption

In float.


fl 1: in caption

 [index ]
* Menu:

* index entry:                           Top.                  (line 10)



Tag Table:
Node: Top27
Ref: label123

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'cindex_in_caption'} = '<!DOCTYPE html>
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
<link href="#Top" rel="index" title="Top">
<style type="text/css">
<!--
a.summary-letter-printindex {text-decoration: none}
-->
</style>


</head>

<body lang="en">
<h1 class="node-heading" id="Top">Top</h1>

<dl class="listoffloats">
<dt><a href="#label">fl 1</a></dt><dd><p>in caption
</p></dd>
</dl>

<div class="float" id="label">
<p>In float.
</p>
<div class="caption"><p><strong class="strong">fl 1: </strong>in caption
<a class="index-entry-anchor" id="index-index-entry"></a>
</p></div></div>
<div class="printindex cp-printindex">
<table class="cp-letters-header-printindex"><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#Top_cp_letter-I"><b>I</b></a>
 &nbsp; 
</td></tr></table>
<table class="cp-entries-printindex" border="0">
<tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Top_cp_letter-I">I</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-index-entry">index entry</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top">Top</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table class="cp-letters-footer-printindex"><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#Top_cp_letter-I"><b>I</b></a>
 &nbsp; 
</td></tr></table>
</div>




</body>
</html>
';

$result_converted_errors{'html'}->{'cindex_in_caption'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
