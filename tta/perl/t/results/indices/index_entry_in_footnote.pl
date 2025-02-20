use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'index_entry_in_footnote'} = {
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
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'Top node'
            },
            {
              'cmdname' => 'footnote',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'in footnote
'
                        },
                        {
                          'cmdname' => 'cindex',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'index entry in footnote'
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
                            'line_nr' => 4
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
              'extra' => {},
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => '
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
            'line_nr' => 7
          }
        }
      ],
      'extra' => {
        'is_target' => 1,
        'isindex' => 1,
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
    }
  ],
  'type' => 'document_root'
};
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'element_node'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1];

$result_texis{'index_entry_in_footnote'} = '@node Top

Top node@footnote{in footnote
@cindex index entry in footnote
}

@printindex cp
';


$result_texts{'index_entry_in_footnote'} = '
Top node

';

$result_nodes{'index_entry_in_footnote'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'isindex' => 1,
      'normalized' => 'Top'
    }
  }
];

$result_menus{'index_entry_in_footnote'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'index_entry_in_footnote'} = [];


$result_floats{'index_entry_in_footnote'} = {};


$result_indices_sort_strings{'index_entry_in_footnote'} = {
  'cp' => [
    'index entry in footnote'
  ]
};



$result_converted{'info'}->{'index_entry_in_footnote'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

Top node(1)

 [index ]
* Menu:

* index entry in footnote:               Top.                   (line 4)

   ---------- Footnotes ----------

   (1) in footnote


Tag Table:
Node: Top27
Ref: Top-Footnote-1205

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'index_entry_in_footnote'} = 'Top node(1)

* Menu:

* index entry in footnote:               Top.                   (line 0)

   ---------- Footnotes ----------

   (1) in footnote

';


$result_converted{'html_text'}->{'index_entry_in_footnote'} = '<h1 class="node" id="Top"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>

<p>Top node<a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a>
</p>
<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="Top_cp_letter-I">I</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-index-entry-in-footnote">index entry in footnote</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
</table>
</div>
<div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>in footnote
<a class="index-entry-id" id="index-index-entry-in-footnote"></a>
</p>
</div>
';


$result_converted{'xml'}->{'index_entry_in_footnote'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename></node>

<para>Top node<footnote><para>in footnote
<cindex index="cp" spaces=" "><indexterm index="cp" number="1">index entry in footnote</indexterm></cindex>
</para></footnote>
</para>
<printindex spaces=" " value="cp" line="cp"></printindex>
';

1;
