use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'on_node_line'} = {
  'contents' => [
    {
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
                  'cmdname' => 'ref',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'a'
                        }
                      ],
                      'extra' => {
                        'node_content' => {
                          'contents' => [
                            {}
                          ]
                        }
                      },
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'b'
                        }
                      ],
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'c'
                        }
                      ],
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'filename'
                        }
                      ],
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 1
                  }
                }
              ],
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => '('
                },
                {
                  'cmdname' => 'pxref',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '('
                        },
                        {
                          'text' => 'somemanual'
                        },
                        {
                          'text' => ')'
                        },
                        {
                          'text' => 'Top'
                        }
                      ],
                      'extra' => {
                        'manual_content' => {
                          'contents' => [
                            {}
                          ]
                        },
                        'node_content' => {
                          'contents' => [
                            {}
                          ]
                        }
                      },
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 1
                  }
                },
                {
                  'text' => ')'
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'anchor',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'in anchor'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'extra' => {
                    'is_target' => 1,
                    'normalized' => 'in-anchor'
                  },
                  'source_info' => {
                    'line_nr' => 1
                  }
                },
                {
                  'cmdname' => 'footnote',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'footnote'
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
                    'line_nr' => 1
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'exdent',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'exdent'
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
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 1
                  }
                }
              ],
              'extra' => {
                'manual_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'node_content' => {
                  'contents' => [
                    {},
                    {},
                    {},
                    {}
                  ]
                },
                'normalized' => '-'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
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
        'normalized' => 'a'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 1
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'on_node_line'}{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'on_node_line'}{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'on_node_line'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'on_node_line'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'on_node_line'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'on_node_line'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[3];
$result_trees{'on_node_line'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'on_node_line'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'on_node_line'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'on_node_line'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[4];
$result_trees{'on_node_line'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'on_node_line'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[5];
$result_trees{'on_node_line'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'on_node_line'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[6];
$result_trees{'on_node_line'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[3] = $result_trees{'on_node_line'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[7];

$result_texis{'on_node_line'} = '@node @ref{a, b, c, filename}, (@pxref{(somemanual)Top}) @anchor{in anchor}@footnote{footnote} @exdent exdent
';


$result_texts{'on_node_line'} = '';

$result_nodes{'on_node_line'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'extra' => {
            'manual_content' => {},
            'normalized' => '-'
          },
          'type' => 'line_arg'
        }
      },
      'normalized' => 'a'
    }
  }
];

$result_menus{'on_node_line'} = [
  {
    'extra' => {
      'normalized' => 'a'
    }
  }
];

$result_errors{'on_node_line'} = [
  {
    'error_line' => 'warning: @ref should not appear on @node line
',
    'line_nr' => 1,
    'text' => '@ref should not appear on @node line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @pxref should not appear on @node line
',
    'line_nr' => 1,
    'text' => '@pxref should not appear on @node line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @anchor should not appear on @node line
',
    'line_nr' => 1,
    'text' => '@anchor should not appear on @node line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @footnote should not appear on @node line
',
    'line_nr' => 1,
    'text' => '@footnote should not appear on @node line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @exdent should only appear at the beginning of a line
',
    'line_nr' => 1,
    'text' => '@exdent should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @exdent should not appear on @node line
',
    'line_nr' => 1,
    'text' => '@exdent should not appear on @node line',
    'type' => 'warning'
  }
];


$result_floats{'on_node_line'} = {};



$result_converted{'plaintext'}->{'on_node_line'} = '';


$result_converted{'xml'}->{'on_node_line'} = '<node identifier="a" spaces=" "><nodename><ref label="a" manual="filename"><xrefnodename>a</xrefnodename><xrefinfoname spaces=" ">b</xrefinfoname><xrefprinteddesc spaces=" ">c</xrefprinteddesc><xrefinfofile spaces=" ">filename</xrefinfofile></ref></nodename><nodenext spaces=" ">(<pxref label="Top" manual="somemanual"><xrefnodename>(somemanual)Top</xrefnodename></pxref>) <anchor identifier="in-anchor">in anchor</anchor><footnote><para>footnote</para></footnote> <exdent spaces=" ">exdent</exdent>
</nodenext></node>';

1;
