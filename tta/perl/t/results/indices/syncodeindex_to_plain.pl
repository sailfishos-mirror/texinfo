use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'syncodeindex_to_plain'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'syncodeindex',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'ky cp'
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
              'extra' => {
                'misc_args' => [
                  'ky',
                  'cp'
                ]
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 1
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
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
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
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 3
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
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
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'kindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '--k1'
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
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'ky',
              1
            ]
          },
          'info' => {
            'command_name' => 'kindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 6
          },
          'type' => 'index_entry_command'
        },
        {
          'cmdname' => 'vindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '--v'
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
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'vr',
              1
            ]
          },
          'info' => {
            'command_name' => 'vindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 7
          },
          'type' => 'index_entry_command'
        },
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '--c'
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
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'cp',
              1
            ]
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 8
          },
          'type' => 'index_entry_command'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'cp index.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'printindex',
          'contents' => [
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
            'line_nr' => 11
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'vr index.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'printindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'vr'
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
          'extra' => {
            'misc_args' => [
              'vr'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 14
          }
        }
      ],
      'extra' => {
        'is_target' => 1,
        'isindex' => 1,
        'normalized' => 'chap'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 4
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'syncodeindex_to_plain'}{'contents'}[2]{'contents'}[2]{'extra'}{'element_node'} = $result_trees{'syncodeindex_to_plain'}{'contents'}[2];
$result_trees{'syncodeindex_to_plain'}{'contents'}[2]{'contents'}[3]{'extra'}{'element_node'} = $result_trees{'syncodeindex_to_plain'}{'contents'}[2];
$result_trees{'syncodeindex_to_plain'}{'contents'}[2]{'contents'}[4]{'extra'}{'element_node'} = $result_trees{'syncodeindex_to_plain'}{'contents'}[2];

$result_texis{'syncodeindex_to_plain'} = '@syncodeindex ky cp

@node Top
@node chap

@kindex --k1
@vindex --v
@cindex --c

cp index.
@printindex cp

vr index.
@printindex vr
';


$result_texts{'syncodeindex_to_plain'} = '


cp index.

vr index.
';

$result_nodes{'syncodeindex_to_plain'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'isindex' => 1,
            'node_directions' => {
              'prev' => {}
            },
            'normalized' => 'chap'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'syncodeindex_to_plain'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'syncodeindex_to_plain'}[0];
$result_nodes{'syncodeindex_to_plain'}[1] = $result_nodes{'syncodeindex_to_plain'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'syncodeindex_to_plain'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap'
    }
  }
];

$result_errors{'syncodeindex_to_plain'} = [
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 4,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_indices{'syncodeindex_to_plain'} = {
  'index_names' => {
    'cp' => {
      'in_code' => 0,
      'name' => 'cp'
    },
    'fn' => {
      'in_code' => 1,
      'name' => 'fn'
    },
    'ky' => {
      'in_code' => 1,
      'merged_in' => 'cp',
      'name' => 'ky'
    },
    'pg' => {
      'in_code' => 1,
      'name' => 'pg'
    },
    'tp' => {
      'in_code' => 1,
      'name' => 'tp'
    },
    'vr' => {
      'in_code' => 1,
      'name' => 'vr'
    }
  }
};


$result_floats{'syncodeindex_to_plain'} = {};


$result_indices_sort_strings{'syncodeindex_to_plain'} = {
  'cp' => [
    '--k1',
    '-c'
  ],
  'vr' => [
    '--v'
  ]
};



$result_converted{'info'}->{'syncodeindex_to_plain'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)


File: ,  Node: chap,  Prev: Top

cp index.

 [index ]
* Menu:

* --k1:                                  chap.                  (line 3)
* -c:                                    chap.                  (line 3)

   vr index.

 [index ]
* Menu:

* --v:                                   chap.                  (line 3)


Tag Table:
Node: Top27
Node: chap74

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'syncodeindex_to_plain'} = 'cp index.

* Menu:

* --k1:                                  chap.                  (line 0)
* -c:                                    chap.                  (line 0)

   vr index.

* Menu:

* --v:                                   chap.                  (line 0)

';


$result_converted{'html_text'}->{'syncodeindex_to_plain'} = '
<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>
<hr>
<a class="node-id" id="chap"></a><div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="node"><span>chap<a class="copiable-link" href="#chap"> &para;</a></span></h4>

<a class="index-entry-id" id="index-_002d_002dk1"></a>
<a class="index-entry-id" id="index-_002d_002dv"></a>
<a class="index-entry-id" id="index-_002d_002dc"></a>

<p>cp index.
</p><div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chap_cp_symbol-1">-</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-_002d_002dk1"><code>--k1</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-_002d_002dc">&ndash;c</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
</table>
</div>

<p>vr index.
</p><div class="printindex vr-printindex">
<table class="index-entries-printindex vr-entries-printindex">
<tr><th class="index-letter-header-printindex vr-letter-header-printindex" colspan="2" id="chap_vr_symbol-1">-</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-_002d_002dv"><code>--v</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
</table>
</div>
';


$result_converted{'xml'}->{'syncodeindex_to_plain'} = '<syncodeindex spaces=" " from="ky" to="cp" line="ky cp"></syncodeindex>

<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev></node>

<kindex index="ky" spaces=" "><indexterm index="ky" number="1" mergedindex="cp">--k1</indexterm></kindex>
<vindex index="vr" spaces=" "><indexterm index="vr" number="1">--v</indexterm></vindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="1">&textndash;c</indexterm></cindex>

<para>cp index.
</para><printindex spaces=" " value="cp" line="cp"></printindex>

<para>vr index.
</para><printindex spaces=" " value="vr" line="vr"></printindex>
';

1;
