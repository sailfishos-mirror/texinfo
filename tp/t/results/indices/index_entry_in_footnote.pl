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
          'contents' => [],
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top node'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in footnote
'
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'index entry in footnote'
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
                              'in_code' => 0,
                              'index_at_command' => 'cindex',
                              'index_ignore_chars' => {},
                              'index_name' => 'cp',
                              'index_type_command' => 'cindex',
                              'node' => {},
                              'number' => 1
                            },
                            'spaces_before_argument' => ' '
                          },
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 4,
                            'macro' => ''
                          },
                          'type' => 'index_entry_command'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'footnote',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
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
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 7,
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
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'index_entry_in_footnote'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote'}{'contents'}[0];
$result_trees{'index_entry_in_footnote'}{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote'};
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1]{'args'}[0];
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1];
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1];
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1];
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1];
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1];
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1];
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1];
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1];
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[3];
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'index_entry_in_footnote'}{'contents'}[1];
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'index_entry_in_footnote'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'index_entry_in_footnote'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_entry_in_footnote'}{'contents'}[1]{'parent'} = $result_trees{'index_entry_in_footnote'};

$result_texis{'index_entry_in_footnote'} = '@node Top

Top node@footnote{in footnote
@cindex index entry in footnote
}

@printindex cp
';


$result_texts{'index_entry_in_footnote'} = '
Top node

';

$result_nodes{'index_entry_in_footnote'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

$result_menus{'index_entry_in_footnote'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

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


$result_converted{'html_text'}->{'index_entry_in_footnote'} = '<h1 class="node" id="Top">Top</h1>

<p>Top node<a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a>
</p>
<div class="printindex cp-printindex">
<table class="cp-letters-header-printindex"><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#t_i_cp_letter-I"><b>I</b></a>
 &nbsp; 
</td></tr></table>
<table class="cp-entries-printindex" border="0">
<tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_i_cp_letter-I">I</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-index-entry-in-footnote">index entry in footnote</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top">Top</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table class="cp-letters-footer-printindex"><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#t_i_cp_letter-I"><b>I</b></a>
 &nbsp; 
</td></tr></table>
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

1;
