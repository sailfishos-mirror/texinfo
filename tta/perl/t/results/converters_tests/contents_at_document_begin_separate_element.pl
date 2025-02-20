use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'contents_at_document_begin_separate_element'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => '\\input texinfo @c -*-texinfo-*-
',
              'type' => 'text_before_beginning'
            },
            {
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'type' => 'preamble_before_beginning'
        },
        {
          'contents' => [
            {
              'cmdname' => 'contents',
              'contents' => [
                {
                  'text' => '
',
                  'type' => 'rawline_arg'
                }
              ],
              'extra' => {},
              'source_info' => {
                'file_name' => 'contents_at_document_begin.texi',
                'line_nr' => 3
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
        'file_name' => 'contents_at_document_begin.texi',
        'line_nr' => 5
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
                  'text' => 'Contents at beginning'
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
              'text' => 'Content at the beginning.
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
          'cmdname' => 'menu',
          'contents' => [
            {
              'contents' => [
                {
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
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'chapter'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'chapter'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'file_name' => 'contents_at_document_begin.texi',
                'line_nr' => 11
              },
              'type' => 'menu_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'menu'
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
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => 'contents_at_document_begin.texi',
                'line_nr' => 12
              }
            }
          ],
          'source_info' => {
            'file_name' => 'contents_at_document_begin.texi',
            'line_nr' => 10
          }
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
        'file_name' => 'contents_at_document_begin.texi',
        'line_nr' => 6
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
                  'text' => 'chapter'
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
        'normalized' => 'chapter'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'contents_at_document_begin.texi',
        'line_nr' => 14
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
                  'text' => 'Chapter 1'
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
              'text' => 'The chapter
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
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
        'file_name' => 'contents_at_document_begin.texi',
        'line_nr' => 15
      }
    },
    {
      'cmdname' => 'bye',
      'contents' => [
        {
          'text' => '
',
          'type' => 'rawline_arg'
        }
      ]
    }
  ],
  'type' => 'document_root'
};
$result_trees{'contents_at_document_begin_separate_element'}{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'contents_at_document_begin_separate_element'}{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];

$result_texis{'contents_at_document_begin_separate_element'} = '\\input texinfo @c -*-texinfo-*-

@contents

@node Top
@top Contents at beginning

Content at the beginning.

@menu 
* chapter::
@end menu

@node chapter
@chapter Chapter 1

The chapter

@bye
';


$result_texts{'contents_at_document_begin_separate_element'} = '
Contents at beginning
*********************

Content at the beginning.

* chapter::

1 Chapter 1
***********

The chapter

';

$result_sectioning{'contents_at_document_begin_separate_element'} = {
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
                    'normalized' => 'chapter'
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
$result_sectioning{'contents_at_document_begin_separate_element'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'contents_at_document_begin_separate_element'}{'extra'}{'section_childs'}[0];
$result_sectioning{'contents_at_document_begin_separate_element'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'contents_at_document_begin_separate_element'}{'extra'}{'section_childs'}[0];
$result_sectioning{'contents_at_document_begin_separate_element'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'contents_at_document_begin_separate_element'}{'extra'}{'section_childs'}[0];
$result_sectioning{'contents_at_document_begin_separate_element'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'contents_at_document_begin_separate_element'};

$result_nodes{'contents_at_document_begin_separate_element'} = [
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
            'node_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chapter'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'contents_at_document_begin_separate_element'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'contents_at_document_begin_separate_element'}[0];
$result_nodes{'contents_at_document_begin_separate_element'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'contents_at_document_begin_separate_element'}[0];
$result_nodes{'contents_at_document_begin_separate_element'}[1] = $result_nodes{'contents_at_document_begin_separate_element'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'contents_at_document_begin_separate_element'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'up' => {}
      },
      'normalized' => 'chapter'
    }
  }
];
$result_menus{'contents_at_document_begin_separate_element'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'contents_at_document_begin_separate_element'}[0];

$result_errors{'contents_at_document_begin_separate_element'} = [];


$result_floats{'contents_at_document_begin_separate_element'} = {};



$result_converted{'plaintext'}->{'contents_at_document_begin_separate_element'} = 'Contents at beginning
1 Chapter 1

Contents at beginning
*********************

Content at the beginning.

1 Chapter 1
***********

The chapter

';


$result_converted{'html'}->{'contents_at_document_begin_separate_element'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Contents at beginning</title>

<meta name="description" content="Contents at beginning">
<meta name="keywords" content="Contents at beginning">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<link href="#SEC_Contents" rel="contents" title="Table of Contents">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
ul.toc-numbered-mark {list-style: none}
-->
</style>


</head>

<body lang="en">

<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#chapter" accesskey="n" rel="next">Chapter 1</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h1 class="top" id="Contents-at-beginning"><span>Contents at beginning<a class="copiable-link" href="#Contents-at-beginning"> &para;</a></span></h1>

<p>Content at the beginning.
</p>

<ul class="mini-toc">
<li><a href="#chapter" accesskey="1">Chapter 1</a></li>
</ul>
<hr style="height: 6px;">
<div class="chapter-level-extent" id="chapter">
<div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">Contents at beginning</a>, Up: <a href="#Top" accesskey="u" rel="up">Contents at beginning</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h2 class="chapter" id="Chapter-1"><span>1 Chapter 1<a class="copiable-link" href="#Chapter-1"> &para;</a></span></h2>

<p>The chapter
</p>
<hr style="height: 6px;">
</div>
</div>
<div class="element-contents" id="SEC_Contents">
<div class="nav-panel">
<p>
[<a href="#Top" title="Cover (top) of document" rel="start">Top</a>][<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">

<ul class="toc-numbered-mark">
  <li><a id="toc-Chapter-1" href="#chapter">1 Chapter 1</a></li>
</ul>
</div>
</div>


</body>
</html>
';


$result_converted{'xml'}->{'contents_at_document_begin_separate_element'} = '<preamblebeforebeginning>\\input texinfo @c -*-texinfo-*-

</preamblebeforebeginning><contents></contents>

<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter</nodenext></node>
<top spaces=" "><sectiontitle>Contents at beginning</sectiontitle>

<para>Content at the beginning.
</para>
<menu endspaces=" "> 
<menuentry><menuleadingtext>* </menuleadingtext><menunode>chapter</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<node identifier="chapter" spaces=" "><nodename>chapter</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter 1</sectiontitle>

<para>The chapter
</para>
</chapter>
<bye></bye>
';


$result_converted{'docbook'}->{'contents_at_document_begin_separate_element'} = '<chapter label="1" id="chapter">
<title>Chapter 1</title>

<para>The chapter
</para>
</chapter>
';


$result_converted{'latex_text'}->{'contents_at_document_begin_separate_element'} = '
\\begin{document}
\\tableofcontents\\newpage
\\label{anchor:Top}%
\\chapter{{Chapter 1}}
\\label{anchor:chapter}%

The chapter

';


$result_converted{'info'}->{'contents_at_document_begin_separate_element'} = 'This is , produced from contents_at_document_begin.texi.


File: ,  Node: Top,  Next: chapter,  Up: (dir)

Contents at beginning
*********************

Content at the beginning.

* Menu:

* chapter::


File: ,  Node: chapter,  Prev: Top,  Up: Top

1 Chapter 1
***********

The chapter


Tag Table:
Node: Top58
Node: chapter202

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
