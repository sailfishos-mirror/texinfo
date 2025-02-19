use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'printindex_merged_indices_code_style'} = {
  'contents' => [
    {
      'contents' => [
        {
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
        'line_nr' => 1
      }
    },
    {
      'cmdname' => 'top',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'top'
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
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 2
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
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Chapter'
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
          'cmdname' => 'synindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'cp fn'
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
              'cp',
              'fn'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 7
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'synindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'vr fn'
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
              'vr',
              'fn'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 9
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'c``b'
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
            'line_nr' => 11
          },
          'type' => 'index_entry_command'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'vindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'v``j'
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
            'line_nr' => 13
          },
          'type' => 'index_entry_command'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'findex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'f``g'
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
              'fn',
              1
            ]
          },
          'info' => {
            'command_name' => 'findex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 15
          },
          'type' => 'index_entry_command'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'defcodeindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'cdi'
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
              'cdi'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 17
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'synindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'cdi fn'
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
              'cdi',
              'fn'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 19
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'cdiindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'cdi``h'
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
              'cdi',
              1
            ]
          },
          'info' => {
            'command_name' => 'cdiindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 21
          },
          'type' => 'index_entry_command'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'defindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'ddi'
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
              'ddi'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 23
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'syncodeindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'ddi cp'
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
              'ddi',
              'cp'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 25
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'ddiindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'ddi``g'
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
              'ddi',
              1
            ]
          },
          'info' => {
            'command_name' => 'ddiindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 27
          },
          'type' => 'index_entry_command'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'printindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'fn'
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
              'fn'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 29
          }
        }
      ],
      'extra' => {
        'section_number' => '1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 5
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'printindex_merged_indices_code_style'}{'contents'}[4]{'contents'}[6]{'extra'}{'element_node'} = $result_trees{'printindex_merged_indices_code_style'}{'contents'}[3];
$result_trees{'printindex_merged_indices_code_style'}{'contents'}[4]{'contents'}[8]{'extra'}{'element_node'} = $result_trees{'printindex_merged_indices_code_style'}{'contents'}[3];
$result_trees{'printindex_merged_indices_code_style'}{'contents'}[4]{'contents'}[10]{'extra'}{'element_node'} = $result_trees{'printindex_merged_indices_code_style'}{'contents'}[3];
$result_trees{'printindex_merged_indices_code_style'}{'contents'}[4]{'contents'}[16]{'extra'}{'element_node'} = $result_trees{'printindex_merged_indices_code_style'}{'contents'}[3];
$result_trees{'printindex_merged_indices_code_style'}{'contents'}[4]{'contents'}[22]{'extra'}{'element_node'} = $result_trees{'printindex_merged_indices_code_style'}{'contents'}[3];

$result_texis{'printindex_merged_indices_code_style'} = '@node Top
@top top

@node chap
@chapter Chapter

@synindex cp fn

@synindex vr fn

@cindex c``b

@vindex v``j

@findex f``g

@defcodeindex cdi

@synindex cdi fn

@cdiindex cdi``h

@defindex ddi

@syncodeindex ddi cp

@ddiindex ddi``g

@printindex fn
';


$result_texts{'printindex_merged_indices_code_style'} = 'top
***

1 Chapter
*********












';

$result_sectioning{'printindex_merged_indices_code_style'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'chap'
                  }
                },
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '1',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
          ],
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'printindex_merged_indices_code_style'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'printindex_merged_indices_code_style'}{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_merged_indices_code_style'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'printindex_merged_indices_code_style'}{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_merged_indices_code_style'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'printindex_merged_indices_code_style'}{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_merged_indices_code_style'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'printindex_merged_indices_code_style'};

$result_nodes{'printindex_merged_indices_code_style'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '1'
              }
            },
            'isindex' => 1,
            'node_directions' => {
              'prev' => {},
              'up' => {}
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
$result_nodes{'printindex_merged_indices_code_style'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'printindex_merged_indices_code_style'}[0];
$result_nodes{'printindex_merged_indices_code_style'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'printindex_merged_indices_code_style'}[0];
$result_nodes{'printindex_merged_indices_code_style'}[1] = $result_nodes{'printindex_merged_indices_code_style'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'printindex_merged_indices_code_style'} = [
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

$result_errors{'printindex_merged_indices_code_style'} = [];


$result_indices{'printindex_merged_indices_code_style'} = {
  'index_names' => {
    'cdi' => {
      'in_code' => 0,
      'merged_in' => 'fn',
      'name' => 'cdi'
    },
    'cp' => {
      'in_code' => 0,
      'merged_in' => 'fn',
      'name' => 'cp'
    },
    'ddi' => {
      'in_code' => 1,
      'merged_in' => 'fn',
      'name' => 'ddi'
    },
    'fn' => {
      'in_code' => 1,
      'name' => 'fn'
    },
    'ky' => {
      'in_code' => 1,
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
      'in_code' => 0,
      'merged_in' => 'fn',
      'name' => 'vr'
    }
  }
};


$result_floats{'printindex_merged_indices_code_style'} = {};


$result_indices_sort_strings{'printindex_merged_indices_code_style'} = {
  'fn' => [
    'c"b',
    'cdi"h',
    'ddi``g',
    'f``g',
    'v"j'
  ]
};



$result_converted{'plaintext'}->{'printindex_merged_indices_code_style'} = 'top
***

1 Chapter
*********

* Menu:

* c"b:                                   chap.                  (line 6)
* cdi"h:                                 chap.                  (line 6)
* ddi``g:                                chap.                  (line 6)
* f``g:                                  chap.                  (line 6)
* v"j:                                   chap.                  (line 6)

';


$result_converted{'html_text'}->{'printindex_merged_indices_code_style'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>



<a class="index-entry-id" id="index-c_0060_0060b"></a>

<a class="index-entry-id" id="index-v_0060_0060j"></a>

<a class="index-entry-id" id="index-f_0060_0060g"></a>



<a class="index-entry-id" id="index-cdi_0060_0060h"></a>



<a class="index-entry-id" id="index-ddi_0060_0060g"></a>

<div class="printindex fn-printindex">
<table class="index-letters-header-printindex fn-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_fn_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-V"><b>V</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex fn-entries-printindex">
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-C">C</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-c_0060_0060b">c&ldquo;b</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-cdi_0060_0060h">cdi&ldquo;h</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-D">D</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-ddi_0060_0060g"><code>ddi``g</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-F">F</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-f_0060_0060g"><code>f``g</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-V">V</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-v_0060_0060j">v&ldquo;j</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
</table>
<table class="index-letters-footer-printindex fn-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_fn_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-V"><b>V</b></a>
 &nbsp; 
</td></tr></table>
</div>
</div>
</div>
';


$result_converted{'xml'}->{'printindex_merged_indices_code_style'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>

<synindex spaces=" " from="cp" to="fn" line="cp fn"></synindex>

<synindex spaces=" " from="vr" to="fn" line="vr fn"></synindex>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1" mergedindex="fn">c&textldquo;b</indexterm></cindex>

<vindex index="vr" spaces=" "><indexterm index="vr" number="1" incode="0" mergedindex="fn">v&textldquo;j</indexterm></vindex>

<findex index="fn" spaces=" "><indexterm index="fn" number="1">f``g</indexterm></findex>

<defcodeindex spaces=" " value="cdi" line="cdi"></defcodeindex>

<synindex spaces=" " from="cdi" to="fn" line="cdi fn"></synindex>

<indexcommand command="cdiindex" index="cdi" spaces=" "><indexterm index="cdi" number="1" incode="0" mergedindex="fn">cdi&textldquo;h</indexterm></indexcommand>

<defindex spaces=" " value="ddi" line="ddi"></defindex>

<syncodeindex spaces=" " from="ddi" to="cp" line="ddi cp"></syncodeindex>

<indexcommand command="ddiindex" index="ddi" spaces=" "><indexterm index="ddi" number="1" incode="1" mergedindex="fn">ddi``g</indexterm></indexcommand>

<printindex spaces=" " value="fn" line="fn"></printindex>
</chapter>
';


$result_converted{'docbook'}->{'printindex_merged_indices_code_style'} = '<chapter label="1" id="chap">
<title>Chapter</title>



<indexterm role="cp"><primary>c&#8220;b</primary></indexterm>

<indexterm role="vr"><primary>v&#8220;j</primary></indexterm>

<indexterm role="fn"><primary>f``g</primary></indexterm>



<indexterm role="cdi"><primary>cdi&#8220;h</primary></indexterm>



<indexterm role="ddi"><primary>ddi``g</primary></indexterm>

<index role="fn"></index>
</chapter>
';

1;
