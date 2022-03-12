use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'footnote_no_number_separate'} = {
  'contents' => [
    {
      'contents' => [],
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
      'contents' => [],
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
        'normalized' => 'Top',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'top'
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
      'cmdname' => 'top',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 2,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'chap'
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
      'contents' => [],
      'extra' => {
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
        'normalized' => 'chap',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
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
              'parent' => {},
              'text' => 'Chapter'
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
      'cmdname' => 'chapter',
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
              'text' => 'Para'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Footnote 1.'
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
                'line_nr' => 7,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'Para2'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Footnote 2.'
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
                'line_nr' => 9,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 5,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'footnote_no_number_separate'}{'contents'}[0]{'parent'} = $result_trees{'footnote_no_number_separate'};
$result_trees{'footnote_no_number_separate'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[1]{'args'}[0];
$result_trees{'footnote_no_number_separate'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[1];
$result_trees{'footnote_no_number_separate'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'footnote_no_number_separate'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'footnote_no_number_separate'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'footnote_no_number_separate'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'footnote_no_number_separate'}{'contents'}[1]{'parent'} = $result_trees{'footnote_no_number_separate'};
$result_trees{'footnote_no_number_separate'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[2]{'args'}[0];
$result_trees{'footnote_no_number_separate'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[2];
$result_trees{'footnote_no_number_separate'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[2];
$result_trees{'footnote_no_number_separate'}{'contents'}[2]{'parent'} = $result_trees{'footnote_no_number_separate'};
$result_trees{'footnote_no_number_separate'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[3]{'args'}[0];
$result_trees{'footnote_no_number_separate'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[3];
$result_trees{'footnote_no_number_separate'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'footnote_no_number_separate'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'footnote_no_number_separate'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'footnote_no_number_separate'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'footnote_no_number_separate'}{'contents'}[3]{'parent'} = $result_trees{'footnote_no_number_separate'};
$result_trees{'footnote_no_number_separate'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[4]{'args'}[0];
$result_trees{'footnote_no_number_separate'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[4];
$result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[4];
$result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[1];
$result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[1];
$result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[1];
$result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[4];
$result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[4];
$result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[3];
$result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[3];
$result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[3];
$result_trees{'footnote_no_number_separate'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'footnote_no_number_separate'}{'contents'}[4];
$result_trees{'footnote_no_number_separate'}{'contents'}[4]{'parent'} = $result_trees{'footnote_no_number_separate'};

$result_texis{'footnote_no_number_separate'} = '@node Top
@top top

@node chap
@chapter Chapter

Para@footnote{Footnote 1.}.

Para2@footnote{Footnote 2.}.
';


$result_texts{'footnote_no_number_separate'} = 'top
***

1 Chapter
*********

Para.

Para2.
';

$result_sectioning{'footnote_no_number_separate'} = {
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
            'structure' => {}
          }
        },
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chap'
                  },
                  'structure' => {}
                }
              },
              'structure' => {
                'section_level' => 1,
                'section_number' => 1,
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'footnote_no_number_separate'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'footnote_no_number_separate'}{'structure'}{'section_childs'}[0];
$result_sectioning{'footnote_no_number_separate'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'footnote_no_number_separate'}{'structure'}{'section_childs'}[0];
$result_sectioning{'footnote_no_number_separate'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'footnote_no_number_separate'}{'structure'}{'section_childs'}[0];
$result_sectioning{'footnote_no_number_separate'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'footnote_no_number_separate'};

$result_nodes{'footnote_no_number_separate'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  },
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'normalized' => 'chap'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'footnote_no_number_separate'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'footnote_no_number_separate'};
$result_nodes{'footnote_no_number_separate'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'footnote_no_number_separate'};

$result_menus{'footnote_no_number_separate'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'footnote_no_number_separate'} = [];


$result_floats{'footnote_no_number_separate'} = {};



$result_converted{'plaintext'}->{'footnote_no_number_separate'} = 'top
***

1 Chapter
*********

Para(*) (*note chap-Footnote-1::).

   Para2(*) (*note chap-Footnote-2::).

   (*) Footnote 1.

   (*) Footnote 2.

';


$result_converted{'html_text'}->{'footnote_no_number_separate'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h1 class="top" id="top">top</h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h2 class="chapter" id="Chapter">1 Chapter</h2>

<p>Para<a class="footnote" id="DOCF1" href="#FOOT1"><sup>*</sup></a>.
</p>
<p>Para2<a class="footnote" id="DOCF2" href="#FOOT2"><sup>*</sup></a>.
</p></div>
</div>
<div class="element-footnotes" id="SEC_Footnotes">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(*)</a></h5>
<p>Footnote 1.</p>
<h5 class="footnote-body-heading"><a id="FOOT2" href="#DOCF2">(*)</a></h5>
<p>Footnote 2.</p>
</div>';


$result_converted{'xml'}->{'footnote_no_number_separate'} = '<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node name="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>

<para>Para<footnote><para>Footnote 1.</para></footnote>.
</para>
<para>Para2<footnote><para>Footnote 2.</para></footnote>.
</para></chapter>
';


$result_converted{'docbook'}->{'footnote_no_number_separate'} = '<chapter label="1" id="chap">
<title>Chapter</title>

<para>Para<footnote><para>Footnote 1.</para></footnote>.
</para>
<para>Para2<footnote><para>Footnote 2.</para></footnote>.
</para></chapter>
';


$result_converted{'info'}->{'footnote_no_number_separate'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)

top
***

* Menu:

* chap::


File: ,  Node: chap,  Prev: Top,  Up: Top

1 Chapter
*********

Para(*) (*note chap-Footnote-1::).

   Para2(*) (*note chap-Footnote-2::).


File: ,  Node: chap-Footnotes,  Up: chap

   (*) Footnote 1.

   (*) Footnote 2.



Tag Table:
Node: Top27
Node: chap102
Node: chap-Footnotes244
Ref: chap-Footnote-1288
Ref: chap-Footnote-2308

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
