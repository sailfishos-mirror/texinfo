use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'index_entries_before_nodes'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'type' => 'preamble_before_content'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'before'
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
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'entry_element' => {},
              'entry_number' => 1,
              'in_code' => 0,
              'index_name' => 'cp'
            }
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
          },
          'type' => 'index_entry_command'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
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
                  'text' => 'in top'
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
          'cmdname' => 'cindex',
          'extra' => {
            'element_node' => {},
            'index_entry' => {
              'entry_element' => {},
              'entry_number' => 2,
              'in_code' => 0,
              'index_name' => 'cp'
            }
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
          },
          'type' => 'index_entry_command'
        },
        {
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
        'normalized' => 'Top'
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
      'args' => [
        {
          'contents' => [
            {
              'text' => 'chap'
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
                  'text' => 'in chap'
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
          'cmdname' => 'cindex',
          'extra' => {
            'element_node' => {},
            'index_entry' => {
              'entry_element' => {},
              'entry_number' => 3,
              'in_code' => 0,
              'index_name' => 'cp'
            }
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
          'type' => 'index_entry_command'
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
                'spaces_after_argument' => {
                  'text' => '
'
                }
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
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
            'macro' => ''
          }
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
            'normalized' => 'chap'
          }
        ],
        'normalized' => 'chap'
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
  'type' => 'document_root'
};
$result_trees{'index_entries_before_nodes'}{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_entries_before_nodes'}{'contents'}[0]{'contents'}[1];
$result_trees{'index_entries_before_nodes'}{'contents'}[1]{'contents'}[1]{'extra'}{'element_node'} = $result_trees{'index_entries_before_nodes'}{'contents'}[1];
$result_trees{'index_entries_before_nodes'}{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_entries_before_nodes'}{'contents'}[1]{'contents'}[1];
$result_trees{'index_entries_before_nodes'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'index_entries_before_nodes'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_entries_before_nodes'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'index_entries_before_nodes'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_entries_before_nodes'}{'contents'}[2]{'contents'}[1]{'extra'}{'element_node'} = $result_trees{'index_entries_before_nodes'}{'contents'}[2];
$result_trees{'index_entries_before_nodes'}{'contents'}[2]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_entries_before_nodes'}{'contents'}[2]{'contents'}[1];
$result_trees{'index_entries_before_nodes'}{'contents'}[2]{'extra'}{'node_content'}[0] = $result_trees{'index_entries_before_nodes'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'index_entries_before_nodes'}{'contents'}[2]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'index_entries_before_nodes'}{'contents'}[2]{'args'}[0]{'contents'}[0];

$result_texis{'index_entries_before_nodes'} = '@cindex before

@node Top

@cindex in top

@node chap

@cindex in chap

@printindex cp
';


$result_texts{'index_entries_before_nodes'} = '




';

$result_nodes{'index_entries_before_nodes'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'isindex' => 1,
        'normalized' => 'chap'
      },
      'info' => {},
      'structure' => {
        'node_prev' => {}
      }
    }
  }
};
$result_nodes{'index_entries_before_nodes'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'index_entries_before_nodes'};

$result_menus{'index_entries_before_nodes'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {}
};

$result_errors{'index_entries_before_nodes'} = [
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'index_entries_before_nodes'} = {};


$result_indices_sort_strings{'index_entries_before_nodes'} = {
  'cp' => [
    'before',
    'in chap',
    'in top'
  ]
};



$result_converted{'info'}->{'index_entries_before_nodes'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)


File: ,  Node: chap,  Prev: Top

 [index ]
* Menu:

* before:                                (outside of any node). (line 0)
* in chap:                               chap.                  (line 3)
* in top:                                Top.                   (line 3)



Tag Table:
Node: Top27
Node: chap74

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'index_entries_before_nodes'} = [
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'index_entries_before_nodes'} = '* Menu:

* before:                                (outside of any node).
                                                               (line  0)
* in chap:                               chap.                 (line  0)
* in top:                                Top.                  (line -1)

';

$result_converted_errors{'plaintext'}->{'index_entries_before_nodes'} = [
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];



$result_converted{'html_text'}->{'index_entries_before_nodes'} = '<a class="index-entry-id" id="index-before"></a>

<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
 &nbsp; [<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>

<a class="index-entry-id" id="index-in-top"></a>

<hr>
<a class="node-id" id="chap"></a><div class="nav-panel">
<p>
 &nbsp; [<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="node"><span>chap<a class="copiable-link" href="#chap"> &para;</a></span></h4>

<a class="index-entry-id" id="index-in-chap"></a>

<div class="printindex cp-printindex">
<table class="cp-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_cp_letter-I"><b>I</b></a>
 &nbsp; 
</td></tr></table>
<table class="cp-entries-printindex" border="0">
<tr><td></td><th class="entries-header-printindex">Index Entry</th><th class="sections-header-printindex">Section</th></tr>
<tr><td colspan="3"><hr></td></tr>
<tr><th id="chap_cp_letter-B">B</th></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-before">before</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td colspan="3"><hr></td></tr>
<tr><th id="chap_cp_letter-I">I</th></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-in-chap">in chap</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-in-top">in top</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td colspan="3"><hr></td></tr>
</table>
<table class="cp-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_cp_letter-I"><b>I</b></a>
 &nbsp; 
</td></tr></table>
</div>
';

$result_converted_errors{'html_text'}->{'index_entries_before_nodes'} = [
  {
    'error_line' => 'warning: entry for index `cp\' for @printindex cp outside of any node
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'entry for index `cp\' for @printindex cp outside of any node',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'index_entries_before_nodes'} = '<cindex index="cp" spaces=" "><indexterm index="cp" number="1">before</indexterm></cindex>

<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>

<cindex index="cp" spaces=" "><indexterm index="cp" number="2">in top</indexterm></cindex>

<node name="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev></node>

<cindex index="cp" spaces=" "><indexterm index="cp" number="3">in chap</indexterm></cindex>

<printindex spaces=" " value="cp" line="cp"></printindex>
';

1;
