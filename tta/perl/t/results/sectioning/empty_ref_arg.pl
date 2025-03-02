use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_ref_arg'} = {
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
                  'text' => 'first'
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
          'contents' => [
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'first'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'first'
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => ' '
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
                'line_nr' => 3
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'first'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'first'
                  },
                  'type' => 'brace_arg'
                },
                {
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
                      'cmdname' => ' '
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
                'line_nr' => 4
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'first'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'first'
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => ' '
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
                      'cmdname' => ':'
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
                'line_nr' => 5
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'first'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'first'
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'c',
                      'contents' => [
                        {
                          'text' => ' aaa
',
                          'type' => 'rawline_arg'
                        }
                      ]
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => ' '
                    },
                    {
                      'text' => '
'
                    },
                    {
                      'cmdname' => 'c',
                      'contents' => [
                        {
                          'text' => ' ggg
',
                          'type' => 'rawline_arg'
                        }
                      ]
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
                      'cmdname' => 'c',
                      'contents' => [
                        {
                          'text' => ' fff
',
                          'type' => 'rawline_arg'
                        }
                      ]
                    },
                    {
                      'cmdname' => 'c',
                      'contents' => [
                        {
                          'text' => '
',
                          'type' => 'rawline_arg'
                        }
                      ]
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
                'line_nr' => 6
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'first'
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
$result_trees{'empty_ref_arg'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'empty_ref_arg'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_ref_arg'}{'contents'}[1]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'empty_ref_arg'}{'contents'}[1]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_ref_arg'}{'contents'}[1]{'contents'}[2]{'contents'}[4]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'empty_ref_arg'}{'contents'}[1]{'contents'}[2]{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_ref_arg'}{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'empty_ref_arg'}{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[0]{'contents'}[0];

$result_texis{'empty_ref_arg'} = '@node first

@ref{first, @ }
@ref{first, , @ }
@ref{first, @ , @:}
@ref{first, @c aaa
 @ 
@c ggg
, @c fff
@c
}
';


$result_texts{'empty_ref_arg'} = '
first
first
first
first
';

$result_nodes{'empty_ref_arg'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'first'
    }
  }
];

$result_menus{'empty_ref_arg'} = [
  {
    'extra' => {
      'normalized' => 'first'
    }
  }
];

$result_errors{'empty_ref_arg'} = [
  {
    'error_line' => 'warning: in @ref empty cross reference name after expansion `@ \'
',
    'line_nr' => 3,
    'text' => 'in @ref empty cross reference name after expansion `@ \'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: in @ref empty cross reference title after expansion `@ \'
',
    'line_nr' => 4,
    'text' => 'in @ref empty cross reference title after expansion `@ \'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: in @ref empty cross reference name after expansion `@ \'
',
    'line_nr' => 5,
    'text' => 'in @ref empty cross reference name after expansion `@ \'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: in @ref empty cross reference title after expansion `@:\'
',
    'line_nr' => 5,
    'text' => 'in @ref empty cross reference title after expansion `@:\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: in @ref empty cross reference name after expansion `@c aaa
 @ 
@c ggg
\'
',
    'line_nr' => 11,
    'text' => 'in @ref empty cross reference name after expansion `@c aaa
 @ 
@c ggg
\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: in @ref empty cross reference title after expansion `@c fff
@c
\'
',
    'line_nr' => 11,
    'text' => 'in @ref empty cross reference title after expansion `@c fff
@c
\'',
    'type' => 'warning'
  }
];


$result_floats{'empty_ref_arg'} = {};



$result_converted{'xml'}->{'empty_ref_arg'} = '<node identifier="first" spaces=" "><nodename>first</nodename></node>

<para><ref label="first"><xrefnodename>first</xrefnodename><xrefinfoname spaces=" "><spacecmd type="spc"/></xrefinfoname></ref>
<ref label="first"><xrefnodename>first</xrefnodename><xrefinfoname spaces=" "></xrefinfoname><xrefprinteddesc spaces=" "><spacecmd type="spc"/></xrefprinteddesc></ref>
<ref label="first"><xrefnodename>first</xrefnodename><xrefinfoname spaces=" "><spacecmd type="spc"/></xrefinfoname><xrefprinteddesc spaces=" ">&noeos;</xrefprinteddesc></ref>
<ref label="first"><xrefnodename>first</xrefnodename><xrefinfoname spaces=" "><!-- c aaa -->
 <spacecmd type="spc"/>
<!-- c ggg -->
</xrefinfoname><xrefprinteddesc spaces=" "><!-- c fff -->
<!-- c -->
</xrefprinteddesc></ref>
</para>';

1;
