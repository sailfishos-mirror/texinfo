use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'ftable_vtable'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'type' => 'preamble_before_beginning'
        },
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
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'ftable',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'emph',
                      'source_info' => {
                        'line_nr' => 5
                      }
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'function1'
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
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'line_nr' => 6
                      }
                    },
                    {
                      'cmdname' => 'itemx',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'function2x'
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
                          2
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
                    }
                  ],
                  'type' => 'table_term'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'Text
'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'table_definition'
                }
              ],
              'type' => 'table_entry'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'fun3'
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
                          3
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
                    }
                  ],
                  'type' => 'table_term'
                }
              ],
              'type' => 'table_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'ftable'
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
                'text_arg' => 'ftable'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 10
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {}
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 5
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'vtable',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'emph',
                      'source_info' => {
                        'line_nr' => 12
                      }
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'var1 '
                            },
                            {
                              'cmdname' => 'error',
                              'contents' => [
                                {
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 13
                              }
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
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'line_nr' => 13
                      }
                    },
                    {
                      'cmdname' => 'itemx',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'varx2'
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
                          2
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
                  'type' => 'table_term'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'Text
'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'table_definition'
                }
              ],
              'type' => 'table_entry'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'var3'
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
                          3
                        ]
                      },
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'line_nr' => 16
                      }
                    }
                  ],
                  'type' => 'table_term'
                }
              ],
              'type' => 'table_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'vtable'
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
                'text_arg' => 'vtable'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 17
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {}
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 12
          }
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
                  'text' => 'function1'
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
              4
            ]
          },
          'info' => {
            'command_name' => 'findex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 19
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
            'line_nr' => 21
          }
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
            'line_nr' => 23
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
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
        'line_nr' => 3
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'ftable_vtable'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'element_node'} = $result_trees{'ftable_vtable'}{'contents'}[2];
$result_trees{'ftable_vtable'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'element_node'} = $result_trees{'ftable_vtable'}{'contents'}[2];
$result_trees{'ftable_vtable'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'element_node'} = $result_trees{'ftable_vtable'}{'contents'}[2];
$result_trees{'ftable_vtable'}{'contents'}[2]{'contents'}[2]{'extra'}{'command_as_argument'} = $result_trees{'ftable_vtable'}{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'element_node'} = $result_trees{'ftable_vtable'}{'contents'}[2];
$result_trees{'ftable_vtable'}{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'element_node'} = $result_trees{'ftable_vtable'}{'contents'}[2];
$result_trees{'ftable_vtable'}{'contents'}[2]{'contents'}[4]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'element_node'} = $result_trees{'ftable_vtable'}{'contents'}[2];
$result_trees{'ftable_vtable'}{'contents'}[2]{'contents'}[4]{'extra'}{'command_as_argument'} = $result_trees{'ftable_vtable'}{'contents'}[2]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[2]{'contents'}[6]{'extra'}{'element_node'} = $result_trees{'ftable_vtable'}{'contents'}[2];

$result_texis{'ftable_vtable'} = '
@node Top
@node chap

@ftable @emph
@item function1
@itemx function2x
Text
@item fun3
@end ftable

@vtable @emph
@item var1 @error{}
@itemx varx2
Text
@item var3
@end vtable

@findex function1

@printindex fn

@printindex vr

';


$result_texts{'ftable_vtable'} = '
function1
function2x
Text
fun3

var1 error-->
varx2
Text
var3




';

$result_nodes{'ftable_vtable'} = [
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
$result_nodes{'ftable_vtable'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'ftable_vtable'}[0];
$result_nodes{'ftable_vtable'}[1] = $result_nodes{'ftable_vtable'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'ftable_vtable'} = [
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

$result_errors{'ftable_vtable'} = [
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 3,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_floats{'ftable_vtable'} = {};


$result_indices_sort_strings{'ftable_vtable'} = {
  'fn' => [
    'fun3',
    'function1',
    'function1',
    'function2x'
  ],
  'vr' => [
    'var1 error-->',
    'var3',
    'varx2'
  ]
};



$result_converted{'info'}->{'ftable_vtable'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)


File: ,  Node: chap,  Prev: Top

_function1_
_function2x_
     Text
_fun3_

_var1 error→_
_varx2_
     Text
_var3_

 [index ]
* Menu:

* fun3:                                  chap.                 (line  6)
* function1:                             chap.                 (line  3)
* function1 <1>:                         chap.                 (line 13)
* function2x:                            chap.                 (line  4)

 [index ]
* Menu:

* var1 error→:                           chap.                 (line  8)
* var3:                                  chap.                 (line 11)
* varx2:                                 chap.                 (line  9)


Tag Table:
Node: Top27
Node: chap74

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'ftable_vtable'} = '_function1_
_function2x_
     Text
_fun3_

_var1 error→_
_varx2_
     Text
_var3_

* Menu:

* fun3:                                  chap.                 (line  3)
* function1:                             chap.                 (line  0)
* function1 <1>:                         chap.                 (line 10)
* function2x:                            chap.                 (line  1)

* Menu:

* var1 error→:                           chap.                  (line 5)
* var3:                                  chap.                  (line 8)
* varx2:                                 chap.                  (line 6)

';


$result_converted{'html_text'}->{'ftable_vtable'} = '<a class="node-id" id="Top"></a><div class="nav-panel">
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

<dl class="ftable">
<dt><a id="index-function1"></a><span><em class="emph">function1</em><a class="copiable-link" href="#index-function1"> &para;</a></span></dt>
<dt><a id="index-function2x"></a><span><em class="emph">function2x</em><a class="copiable-link" href="#index-function2x"> &para;</a></span></dt>
<dd><p>Text
</p></dd>
<dt><a id="index-fun3"></a><span><em class="emph">fun3</em><a class="copiable-link" href="#index-fun3"> &para;</a></span></dt>
</dl>

<dl class="vtable">
<dt><a id="index-var1-error_002d_002d_003e"></a><span><em class="emph">var1 error&rarr;</em><a class="copiable-link" href="#index-var1-error_002d_002d_003e"> &para;</a></span></dt>
<dt><a id="index-varx2"></a><span><em class="emph">varx2</em><a class="copiable-link" href="#index-varx2"> &para;</a></span></dt>
<dd><p>Text
</p></dd>
<dt><a id="index-var3"></a><span><em class="emph">var3</em><a class="copiable-link" href="#index-var3"> &para;</a></span></dt>
</dl>

<a class="index-entry-id" id="index-function1-1"></a>

<div class="printindex fn-printindex">
<table class="index-entries-printindex fn-entries-printindex">
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-F">F</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-fun3"><code>fun3</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-function1"><code>function1</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-function1-1"><code>function1</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-function2x"><code>function2x</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
</table>
</div>

<div class="printindex vr-printindex">
<table class="index-entries-printindex vr-entries-printindex">
<tr><th class="index-letter-header-printindex vr-letter-header-printindex" colspan="2" id="chap_vr_letter-V">V</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-var1-error_002d_002d_003e"><code>var1 error&rarr;</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-var3"><code>var3</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-varx2"><code>varx2</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
</table>
</div>

';


$result_converted{'xml'}->{'ftable_vtable'} = '<preamblebeforebeginning>
</preamblebeforebeginning><node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev></node>

<ftable commandarg="emph" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="emph"><indexterm index="fn" number="1">function1</indexterm>function1</itemformat></item>
<itemx spaces=" "><itemformat command="emph"><indexterm index="fn" number="2">function2x</indexterm>function2x</itemformat></itemx>
</tableterm><tableitem><para>Text
</para></tableitem></tableentry><tableentry><tableterm><item spaces=" "><itemformat command="emph"><indexterm index="fn" number="3">fun3</indexterm>fun3</itemformat></item>
</tableterm></tableentry></ftable>

<vtable commandarg="emph" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="emph"><indexterm index="vr" number="1">var1 &errorglyph;</indexterm>var1 &errorglyph;</itemformat></item>
<itemx spaces=" "><itemformat command="emph"><indexterm index="vr" number="2">varx2</indexterm>varx2</itemformat></itemx>
</tableterm><tableitem><para>Text
</para></tableitem></tableentry><tableentry><tableterm><item spaces=" "><itemformat command="emph"><indexterm index="vr" number="3">var3</indexterm>var3</itemformat></item>
</tableterm></tableentry></vtable>

<findex index="fn" spaces=" "><indexterm index="fn" number="4">function1</indexterm></findex>

<printindex spaces=" " value="fn" line="fn"></printindex>

<printindex spaces=" " value="vr" line="vr"></printindex>

';

1;
