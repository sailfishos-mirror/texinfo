use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'ignored_sort_char_empty_entries'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'text' => 'txiindexhyphenignore',
                  'type' => 'misc_arg'
                },
                {
                  'text' => '',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'set',
              'extra' => {
                'arg_line' => ' txiindexhyphenignore
',
                'misc_args' => [
                  'txiindexhyphenignore',
                  ''
                ]
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            }
          ],
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
        'spaces_before_argument' => ' '
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
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'top',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 4,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'node'
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
                  'text' => '-'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'findex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 1,
              'in_code' => 1,
              'index_at_command' => 'findex',
              'index_ignore_chars' => {
                '-' => 1
              },
              'index_name' => 'fn',
              'index_type_command' => 'findex'
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
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => '--'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'findex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 2,
              'in_code' => 1,
              'index_at_command' => 'findex',
              'index_ignore_chars' => {
                '-' => 1
              },
              'index_name' => 'fn',
              'index_type_command' => 'findex'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'A'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'findex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 3,
              'in_code' => 1,
              'index_at_command' => 'findex',
              'index_ignore_chars' => {
                '-' => 1
              },
              'index_name' => 'fn',
              'index_type_command' => 'findex'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => '--'
                        }
                      ],
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sortas',
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 11,
                    'macro' => ''
                  }
                },
                {
                  'text' => ' ',
                  'type' => 'spaces_after_close_brace'
                },
                {
                  'text' => '--'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'findex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 4,
              'in_code' => 1,
              'index_at_command' => 'findex',
              'index_ignore_chars' => {
                '-' => 1
              },
              'index_name' => 'fn',
              'index_type_command' => 'findex',
              'sortas' => '--'
            },
            'sortas' => '--'
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
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
                  'text' => 'fn'
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
              'fn'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 13,
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
            'normalized' => 'node'
          }
        ],
        'normalized' => 'node'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 6,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'ignored_sort_char_empty_entries'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'ignored_sort_char_empty_entries'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'ignored_sort_char_empty_entries'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'ignored_sort_char_empty_entries'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[1]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[1];
$result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[1]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3];
$result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[2]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[2]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[2];
$result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[2]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3];
$result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[3]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[3]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[3];
$result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[3]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3];
$result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[4]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[4]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[4]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[4];
$result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'contents'}[4]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3];
$result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'ignored_sort_char_empty_entries'}{'contents'}[3]{'args'}[0]{'contents'}[0];

$result_texis{'ignored_sort_char_empty_entries'} = '@set txiindexhyphenignore

@node Top
@top

@node node

@findex -
@findex --
@findex A
@findex @sortas{--} --

@printindex fn
';


$result_texts{'ignored_sort_char_empty_entries'} = '



';

$result_sectioning{'ignored_sort_char_empty_entries'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            },
            'info' => {},
            'structure' => {}
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
$result_sectioning{'ignored_sort_char_empty_entries'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'ignored_sort_char_empty_entries'};

$result_nodes{'ignored_sort_char_empty_entries'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'isindex' => 1,
        'normalized' => 'node'
      },
      'info' => {},
      'structure' => {
        'node_prev' => {}
      }
    }
  }
};
$result_nodes{'ignored_sort_char_empty_entries'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'ignored_sort_char_empty_entries'};

$result_menus{'ignored_sort_char_empty_entries'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {}
};

$result_errors{'ignored_sort_char_empty_entries'} = [
  {
    'error_line' => 'warning: empty index key in @findex
',
    'file_name' => '',
    'line_nr' => 8,
    'macro' => '',
    'text' => 'empty index key in @findex',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @findex
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => '',
    'text' => 'empty index key in @findex',
    'type' => 'warning'
  }
];


$result_floats{'ignored_sort_char_empty_entries'} = {};


$result_indices_sort_strings{'ignored_sort_char_empty_entries'} = {
  'fn' => [
    '--',
    'A'
  ]
};



$result_converted{'info'}->{'ignored_sort_char_empty_entries'} = 'This is , produced from .


File: ,  Node: Top,  Next: node,  Up: (dir)


File: ,  Node: node,  Prev: Top

 [index ]
* Menu:

* --:                                    node.                  (line 3)
* A:                                     node.                  (line 3)



Tag Table:
Node: Top27
Node: node74

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'ignored_sort_char_empty_entries'} = [
  {
    'error_line' => 'warning: empty index key in @findex
',
    'file_name' => '',
    'line_nr' => 8,
    'macro' => '',
    'text' => 'empty index key in @findex',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @findex
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => '',
    'text' => 'empty index key in @findex',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'ignored_sort_char_empty_entries'} = '* Menu:

* --:                                    node.                  (line 0)
* A:                                     node.                  (line 0)

';

$result_converted_errors{'plaintext'}->{'ignored_sort_char_empty_entries'} = [
  {
    'error_line' => 'warning: empty index key in @findex
',
    'file_name' => '',
    'line_nr' => 8,
    'macro' => '',
    'text' => 'empty index key in @findex',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @findex
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => '',
    'text' => 'empty index key in @findex',
    'type' => 'warning'
  }
];



$result_converted{'html_text'}->{'ignored_sort_char_empty_entries'} = '
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
 &nbsp; [<a href="#node" title="Index" rel="index">Index</a>]</p>
</div>
<a class="top" id="SEC_Top"></a>
<hr>
<a class="node-id" id="node"></a><div class="nav-panel">
<p>
 &nbsp; [<a href="#node" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="node">node</h4>

<a class="index-entry-id" id="index-_002d"></a>
<a class="index-entry-id" id="index-_002d_002d"></a>
<a class="index-entry-id" id="index-A"></a>
<a class="index-entry-id" id="index-_002d_002d-1"></a>

<div class="printindex fn-printindex">
<table class="fn-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#t_i_fn_symbol-1"><b>-</b></a>
 &nbsp; 
<br>
<a class="summary-letter-printindex" href="#t_i_fn_letter-A"><b>A</b></a>
 &nbsp; 
</td></tr></table>
<table class="fn-entries-printindex" border="0">
<tr><td></td><th class="entries-header-printindex">Index Entry</th><td>&nbsp;</td><th class="sections-header-printindex"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_i_fn_symbol-1">-</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-_002d_002d-1"><code>--</code></a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#node">node</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_i_fn_letter-A">A</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-A"><code>A</code></a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#node">node</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table class="fn-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#t_i_fn_symbol-1"><b>-</b></a>
 &nbsp; 
<br>
<a class="summary-letter-printindex" href="#t_i_fn_letter-A"><b>A</b></a>
 &nbsp; 
</td></tr></table>
</div>
</div>
';

$result_converted_errors{'html_text'}->{'ignored_sort_char_empty_entries'} = [
  {
    'error_line' => 'warning: empty index key in @findex
',
    'file_name' => '',
    'line_nr' => 8,
    'macro' => '',
    'text' => 'empty index key in @findex',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @findex
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => '',
    'text' => 'empty index key in @findex',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'ignored_sort_char_empty_entries'} = '<set name="txiindexhyphenignore" line=" txiindexhyphenignore"></set>

<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">node</nodenext></node>
<top><sectiontitle></sectiontitle>

<node name="node" spaces=" "><nodename>node</nodename><nodeprev automatic="on">Top</nodeprev></node>

<findex index="fn" spaces=" "><indexterm index="fn" number="1">-</indexterm></findex>
<findex index="fn" spaces=" "><indexterm index="fn" number="2">--</indexterm></findex>
<findex index="fn" spaces=" "><indexterm index="fn" number="3">A</indexterm></findex>
<findex index="fn" spaces=" "><indexterm index="fn" number="4"><sortas>--</sortas> --</indexterm></findex>

<printindex spaces=" " value="fn" line="fn"></printindex>
</top>
';

1;
