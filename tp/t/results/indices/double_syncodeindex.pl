use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'double_syncodeindex'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'cp fn'
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
              'cmdname' => 'syncodeindex',
              'extra' => {
                'misc_args' => [
                  'cp',
                  'fn'
                ],
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'cp fn'
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
              'cmdname' => 'syncodeindex',
              'extra' => {
                'misc_args' => [
                  'cp',
                  'fn'
                ],
                'spaces_before_argument' => ' '
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
                  'text' => 'cindex entry'
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
              'in_code' => 1,
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
            'line_nr' => 6,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'findex entry'
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
          'cmdname' => 'findex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 1,
              'index_at_command' => 'findex',
              'index_ignore_chars' => {},
              'index_name' => 'fn',
              'index_type_command' => 'findex',
              'node' => {},
              'number' => 1
            },
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 7,
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
                  'text' => 'fn'
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
              'fn'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
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
            'line_nr' => 10,
            'macro' => ''
          },
          'parent' => {}
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
        'line_nr' => 4,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'double_syncodeindex'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'double_syncodeindex'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'double_syncodeindex'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[0]{'contents'}[0];
$result_trees{'double_syncodeindex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'double_syncodeindex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'double_syncodeindex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[0]{'contents'}[0];
$result_trees{'double_syncodeindex'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[0]{'contents'}[0];
$result_trees{'double_syncodeindex'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[0];
$result_trees{'double_syncodeindex'}{'contents'}[0]{'parent'} = $result_trees{'double_syncodeindex'};
$result_trees{'double_syncodeindex'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[1]{'args'}[0];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[1];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[1];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[1];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[1];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'double_syncodeindex'}{'contents'}[1];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[1];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[2];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[2];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[2]{'extra'}{'index_entry'}{'content'} = $result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[2]{'extra'}{'index_entry'}{'node'} = $result_trees{'double_syncodeindex'}{'contents'}[1];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[1];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[1];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[4];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[1];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[5]{'args'}[0];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[5];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'double_syncodeindex'}{'contents'}[1];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'double_syncodeindex'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'double_syncodeindex'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'double_syncodeindex'}{'contents'}[1]{'parent'} = $result_trees{'double_syncodeindex'};

$result_texis{'double_syncodeindex'} = '@syncodeindex cp fn
@syncodeindex cp fn

@node Top

@cindex cindex entry
@findex findex entry

@printindex fn
@printindex cp
';


$result_texts{'double_syncodeindex'} = '


';

$result_nodes{'double_syncodeindex'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

$result_menus{'double_syncodeindex'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

$result_errors{'double_syncodeindex'} = [
  {
    'error_line' => ':10: warning: printing an index `cp\' merged in another one, `fn\'
',
    'file_name' => '',
    'line_nr' => 10,
    'macro' => '',
    'text' => 'printing an index `cp\' merged in another one, `fn\'',
    'type' => 'warning'
  }
];


$result_indices{'double_syncodeindex'} = {
  'index_names' => {
    'cp' => {
      'in_code' => 1,
      'merged_in' => 'fn',
      'name' => 'cp'
    },
    'fn' => {
      'contained_indices' => {
        'cp' => 1,
        'fn' => 1
      },
      'in_code' => 1,
      'name' => 'fn'
    },
    'ky' => {
      'contained_indices' => {
        'ky' => 1
      },
      'in_code' => 1,
      'name' => 'ky'
    },
    'pg' => {
      'contained_indices' => {
        'pg' => 1
      },
      'in_code' => 1,
      'name' => 'pg'
    },
    'tp' => {
      'contained_indices' => {
        'tp' => 1
      },
      'in_code' => 1,
      'name' => 'tp'
    },
    'vr' => {
      'contained_indices' => {
        'vr' => 1
      },
      'in_code' => 1,
      'name' => 'vr'
    }
  }
};


$result_floats{'double_syncodeindex'} = {};


$result_indices_sort_strings{'double_syncodeindex'} = {
  'fn' => [
    'cindex entry',
    'findex entry'
  ]
};



$result_converted{'info'}->{'double_syncodeindex'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

 [index ]
* Menu:

* cindex entry:                          Top.                   (line 3)
* findex entry:                          Top.                   (line 3)



Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'double_syncodeindex'} = '* Menu:

* cindex entry:                          Top.                   (line 0)
* findex entry:                          Top.                   (line 0)

';


$result_converted{'html_text'}->{'double_syncodeindex'} = '
<h1 class="node" id="Top">Top</h1>

<a class="index-entry-id" id="index-cindex-entry"></a>
<a class="index-entry-id" id="index-findex-entry"></a>

<div class="printindex fn-printindex">
<table class="fn-letters-header-printindex"><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#t_i_fn_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#t_i_fn_letter-F"><b>F</b></a>
 &nbsp; 
</td></tr></table>
<table class="fn-entries-printindex" border="0">
<tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_i_fn_letter-C">C</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-cindex-entry"><code>cindex entry</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top">Top</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_i_fn_letter-F">F</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-findex-entry"><code>findex entry</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top">Top</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table class="fn-letters-footer-printindex"><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#t_i_fn_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#t_i_fn_letter-F"><b>F</b></a>
 &nbsp; 
</td></tr></table>
</div>
';

1;
