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
            'spaces_after_argument' => '
'
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
                  'text' => 'fl'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'listoffloats',
          'extra' => {
            'type' => {
              'content' => [
                {}
              ],
              'normalized' => 'fl'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
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
                  'text' => 'fl'
                }
              ],
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'text' => 'label'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
',
                'spaces_before_argument' => ' '
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'float',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'In float.
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
                      'contents' => [
                        {
                          'text' => 'in caption
'
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'index entry'
                                }
                              ],
                              'info' => {
                                'spaces_after_argument' => '
'
                              },
                              'type' => 'line_arg'
                            }
                          ],
                          'cmdname' => 'cindex',
                          'extra' => {
                            'index_entry' => {
                              'content_normalized' => [],
                              'entry_content' => [],
                              'entry_element' => {},
                              'entry_node' => {},
                              'entry_number' => 1,
                              'in_code' => 0,
                              'index_at_command' => 'cindex',
                              'index_ignore_chars' => {},
                              'index_name' => 'cp',
                              'index_type_command' => 'cindex'
                            }
                          },
                          'info' => {
                            'spaces_before_argument' => ' '
                          },
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 8,
                            'macro' => ''
                          },
                          'type' => 'index_entry_command'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'caption',
              'extra' => {
                'float' => {}
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              }
            },
            {
              'text' => '
',
              'type' => 'spaces_after_close_brace'
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
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'float'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'caption' => {},
            'node_content' => [
              {}
            ],
            'normalized' => 'label',
            'type' => {
              'content' => [
                {}
              ],
              'normalized' => 'fl'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 5,
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
                  'text' => 'cp'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 12,
            'macro' => ''
          }
        },
        {
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
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => ' '
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
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[1]{'extra'}{'type'}{'content'}[0] = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'cindex_in_caption'}{'contents'}[1];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'extra'}{'float'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'extra'}{'caption'} = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'contents'}[1];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'args'}[1]{'contents'}[0];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'extra'}{'type'}{'content'}[0] = $result_trees{'cindex_in_caption'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'cindex_in_caption'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'cindex_in_caption'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'cindex_in_caption'}{'contents'}[1]{'args'}[0]{'contents'}[0];

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
  },
  'info' => {}
};

$result_menus{'cindex_in_caption'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  },
  'info' => {}
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
          }
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
      'info' => {},
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

* index entry:                           Top.                   (line 6)

';


$result_converted{'info'}->{'cindex_in_caption'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

* Menu:

* fl 1: label.                           in caption

In float.

fl 1: in caption

 [index ]
* Menu:

* index entry:                           Top.                   (line 9)



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
td.printindex-index-entry {vertical-align: top}
td.printindex-index-section {vertical-align: top; padding-left: 1em}
th.entries-header-printindex {text-align:left}
th.sections-header-printindex {text-align:left; padding-left: 1em}
-->
</style>


</head>

<body lang="en">
<h1 class="node" id="Top">Top</h1>

<dl class="listoffloats">
<dt><a href="#label">fl 1</a></dt><dd class="caption-in-listoffloats"><p>in caption
</p></dd>
</dl>

<div class="float" id="label">
<p>In float.
</p><div class="caption"><p><strong class="strong">fl 1: </strong>in caption
<a class="index-entry-id" id="index-index-entry"></a>
</p></div></div>
<div class="printindex cp-printindex">
<table class="cp-entries-printindex" border="0">
<tr><td></td><th class="entries-header-printindex">Index Entry</th><th class="sections-header-printindex">Section</th></tr>
<tr><td colspan="3"><hr></td></tr>
<tr><th id="Top_cp_letter-I">I</th></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-index-entry">index entry</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td colspan="3"><hr></td></tr>
</table>
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



$result_converted{'xml'}->{'cindex_in_caption'} = '<node name="Top" spaces=" "><nodename>Top</nodename></node>

<listoffloats type="fl" spaces=" ">fl</listoffloats>

<float name="label" type="fl" number="1" spaces=" " endspaces=" "><floattype>fl</floattype><floatname spaces=" ">label</floatname>
<para>In float.
</para><caption><para>in caption
<cindex index="cp" spaces=" "><indexterm index="cp" number="1">index entry</indexterm></cindex>
</para></caption>
</float>

<printindex spaces=" " value="cp" line="cp"></printindex>

';

1;
