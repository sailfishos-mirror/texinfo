use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'ref_in_multitable'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'novalidate',
          'contents' => [
            {
              'text' => '
',
              'type' => 'rawline_arg'
            }
          ],
          'source_info' => {
            'line_nr' => 1
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX XXX XXX XXX XXX 
'
                    },
                    {
                      'text' => 'XXX XXX XXX XXX XXX XXX XXX XXX XX'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XX'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'multitable',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'columnfractions',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => '.35 .65'
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
                          '.35',
                          '.65'
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
                    }
                  ],
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
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX
'
                            }
                          ],
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 1
                      },
                      'source_info' => {
                        'line_nr' => 7
                      }
                    },
                    {
                      'cmdname' => 'tab',
                      'contents' => [
                        {
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'See '
                            },
                            {
                              'cmdname' => 'ref',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'RRR RRR RRR RRR RRR RRR RRR RRR RRR RRRR'
                                    }
                                  ],
                                  'extra' => {
                                    'node_content' => {
                                      'contents' => [
                                        {}
                                      ]
                                    },
                                    'normalized' => 'RRR-RRR-RRR-RRR-RRR-RRR-RRR-RRR-RRR-RRRR'
                                  },
                                  'type' => 'brace_arg'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 8
                              }
                            },
                            {
                              'text' => '.
'
                            }
                          ],
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 2
                      },
                      'source_info' => {
                        'line_nr' => 8
                      }
                    }
                  ],
                  'extra' => {
                    'row_number' => 1
                  },
                  'type' => 'row'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX
'
                            }
                          ],
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 1
                      },
                      'source_info' => {
                        'line_nr' => 9
                      }
                    },
                    {
                      'cmdname' => 'tab',
                      'contents' => [
                        {
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'See '
                            },
                            {
                              'cmdname' => 'ref',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'SSS SSS SSS SSS SSS SSS SSS SSS SSS SSS SSS SSS SSSSS'
                                    }
                                  ],
                                  'extra' => {
                                    'node_content' => {
                                      'contents' => [
                                        {}
                                      ]
                                    },
                                    'normalized' => 'SSS-SSS-SSS-SSS-SSS-SSS-SSS-SSS-SSS-SSS-SSS-SSS-SSSSS'
                                  },
                                  'type' => 'brace_arg'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 10
                              }
                            },
                            {
                              'text' => '.
'
                            }
                          ],
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 2
                      },
                      'source_info' => {
                        'line_nr' => 10
                      }
                    }
                  ],
                  'extra' => {
                    'row_number' => 2
                  },
                  'type' => 'row'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'adsf'
                            },
                            {
                              'cmdname' => 'footnote',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'contents' => [
                                        {
                                          'cmdname' => 'ref',
                                          'contents' => [
                                            {
                                              'contents' => [
                                                {
                                                  'text' => 'XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX 
'
                                                },
                                                {
                                                  'text' => 'XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX'
                                                }
                                              ],
                                              'extra' => {
                                                'node_content' => {
                                                  'contents' => [
                                                    {},
                                                    {}
                                                  ]
                                                },
                                                'normalized' => 'XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XX'
                                              },
                                              'type' => 'brace_arg'
                                            }
                                          ],
                                          'source_info' => {
                                            'line_nr' => 11
                                          }
                                        }
                                      ],
                                      'type' => 'paragraph'
                                    }
                                  ],
                                  'type' => 'brace_command_context'
                                }
                              ],
                              'extra' => {},
                              'source_info' => {
                                'line_nr' => 11
                              }
                            },
                            {
                              'text' => ' '
                            }
                          ],
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 1
                      },
                      'source_info' => {
                        'line_nr' => 11
                      }
                    },
                    {
                      'cmdname' => 'tab',
                      'contents' => [
                        {
                          'text' => ' 
',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'second column
'
                            }
                          ],
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 2
                      },
                      'source_info' => {
                        'line_nr' => 12
                      }
                    }
                  ],
                  'extra' => {
                    'row_number' => 3
                  },
                  'type' => 'row'
                }
              ],
              'type' => 'multitable_body'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'multitable'
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
                'text_arg' => 'multitable'
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
            'columnfractions' => {},
            'max_columns' => 2
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
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX XXX XXX XXX XXX 
'
                    },
                    {
                      'text' => 'XXX XXX XXX XXX XXX XXX XXX XXX XX'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XX'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 16
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'ref_in_multitable'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'ref_in_multitable'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'ref_in_multitable'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'ref_in_multitable'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'ref_in_multitable'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'ref_in_multitable'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'ref_in_multitable'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'ref_in_multitable'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'ref_in_multitable'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'ref_in_multitable'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'ref_in_multitable'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'ref_in_multitable'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'ref_in_multitable'}{'contents'}[0]{'contents'}[4]{'extra'}{'columnfractions'} = $result_trees{'ref_in_multitable'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'ref_in_multitable'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'ref_in_multitable'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'ref_in_multitable'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'ref_in_multitable'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[1];

$result_texis{'ref_in_multitable'} = '@novalidate

@ref{XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX XXX XXX XXX XXX 
XXX XXX XXX XXX XXX XXX XXX XXX XX}.

@multitable @columnfractions .35 .65
@item XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX
@tab See @ref{RRR RRR RRR RRR RRR RRR RRR RRR RRR RRRR}.
@item XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX
@tab See @ref{SSS SSS SSS SSS SSS SSS SSS SSS SSS SSS SSS SSS SSSSS}.
@item adsf@footnote{@ref{XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX 
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX}} @tab 
second column
@end multitable

@ref{XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX XXX XXX XXX XXX 
XXX XXX XXX XXX XXX XXX XXX XXX XX}.
';


$result_texts{'ref_in_multitable'} = '
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX XXX XXX XXX XXX 
XXX XXX XXX XXX XXX XXX XXX XXX XX.

XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX
See RRR RRR RRR RRR RRR RRR RRR RRR RRR RRRR.
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX
See SSS SSS SSS SSS SSS SSS SSS SSS SSS SSS SSS SSS SSSSS.
adsf second column

XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX XXX XXX XXX XXX 
XXX XXX XXX XXX XXX XXX XXX XXX XX.
';

$result_errors{'ref_in_multitable'} = [];


$result_floats{'ref_in_multitable'} = {};



$result_converted{'info'}->{'ref_in_multitable'} = 'This is , produced from .

*note XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XX::.

XXX XXX XXX XXX XXX XXX   See
XXX XXX XXX XXX XXX XXX   *note RRR RRR RRR RRR RRR RRR RRR RRR RRR RRRR::.
XX
XXX XXX XXX XXX XXX XXX   See
XXX XXX XXX XXX XXX XXX   *note SSS SSS SSS SSS SSS SSS SSS SSS SSS SSS SSS SSS SSSSS::.
XX
adsf(1)                   second column

   *note XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XX::.

   ---------- Footnotes ----------

   (1) *note XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX::


Tag Table:

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'ref_in_multitable'} = [
  {
    'error_line' => 'warning: document without nodes
',
    'text' => 'document without nodes',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @footnote outside of any node
',
    'line_nr' => 11,
    'text' => '@footnote outside of any node',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'ref_in_multitable'} = 'XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XX.

XXX XXX XXX XXX XXX XXX   See RRR RRR RRR RRR RRR RRR RRR RRR RRR RRRR.
XXX XXX XXX XXX XXX XXX
XX
XXX XXX XXX XXX XXX XXX   See SSS SSS SSS SSS SSS SSS SSS SSS SSS SSS
XXX XXX XXX XXX XXX XXX   SSS SSS SSSSS.
XX
adsf(1)                   second column

   XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XX.

   ---------- Footnotes ----------

   (1) XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XX

';


$result_converted{'html_text'}->{'ref_in_multitable'} = '
<p>&lsquo;XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX XXX XXX XXX XXX 
XXX XXX XXX XXX XXX XXX XXX XXX XX&rsquo;.
</p>
<table class="multitable">
<tbody><tr><td width="35%">XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX</td><td width="65%">See &lsquo;RRR RRR RRR RRR RRR RRR RRR RRR RRR RRRR&rsquo;.</td></tr>
<tr><td width="35%">XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX</td><td width="65%">See &lsquo;SSS SSS SSS SSS SSS SSS SSS SSS SSS SSS SSS SSS SSSSS&rsquo;.</td></tr>
<tr><td width="35%">adsf<a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a></td><td width="65%">second column</td></tr>
</tbody>
</table>

<p>&lsquo;XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX XXX XXX XXX XXX 
XXX XXX XXX XXX XXX XXX XXX XXX XX&rsquo;.
</p><div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>&lsquo;XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX 
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX&rsquo;</p>
</div>
';


$result_converted{'xml'}->{'ref_in_multitable'} = '<novalidate></novalidate>

<para><ref label="XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XX"><xrefnodename>XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX XXX XXX XXX XXX 
XXX XXX XXX XXX XXX XXX XXX XXX XX</xrefnodename></ref>.
</para>
<multitable spaces=" " endspaces=" "><columnfractions spaces=" " line=".35 .65"><columnfraction value=".35"></columnfraction><columnfraction value=".65"></columnfraction></columnfractions>
<tbody><row><entry command="item"> <para>XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX
</para></entry><entry command="tab"> <para>See <ref label="RRR-RRR-RRR-RRR-RRR-RRR-RRR-RRR-RRR-RRRR"><xrefnodename>RRR RRR RRR RRR RRR RRR RRR RRR RRR RRRR</xrefnodename></ref>.
</para></entry></row><row><entry command="item"> <para>XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX
</para></entry><entry command="tab"> <para>See <ref label="SSS-SSS-SSS-SSS-SSS-SSS-SSS-SSS-SSS-SSS-SSS-SSS-SSSSS"><xrefnodename>SSS SSS SSS SSS SSS SSS SSS SSS SSS SSS SSS SSS SSSSS</xrefnodename></ref>.
</para></entry></row><row><entry command="item"> <para>adsf<footnote><para><ref label="XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XX"><xrefnodename>XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX 
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX</xrefnodename></ref></para></footnote> </para></entry><entry command="tab"> 
<para>second column
</para></entry></row></tbody></multitable>

<para><ref label="XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XXX-XX"><xrefnodename>XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XX XXX XXX XXX XXX 
XXX XXX XXX XXX XXX XXX XXX XXX XX</xrefnodename></ref>.
</para>';

1;
