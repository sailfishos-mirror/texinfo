use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'dotless_argument_non_ascii'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l2
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *2 @node C1 l4
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C2 l5
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  *paragraph C4
   *4 @dotless C1 l6
    *brace_container C1
     {ê}
   {\\n}
   *5 @dotless C1 l7
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
    *following_arg C1
     {ê}
   {\\n}
';


$result_texis{'dotless_argument_non_ascii'} = '@node Top
@top top

@node chap
@chapter Chapter
@dotless{ê}
@dotless ê
';


$result_texts{'dotless_argument_non_ascii'} = 'top
***

1 Chapter
*********
ê
ê
';

$result_sectioning{'dotless_argument_non_ascii'} = {
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
$result_sectioning{'dotless_argument_non_ascii'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'dotless_argument_non_ascii'}{'extra'}{'section_childs'}[0];
$result_sectioning{'dotless_argument_non_ascii'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'dotless_argument_non_ascii'}{'extra'}{'section_childs'}[0];
$result_sectioning{'dotless_argument_non_ascii'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'dotless_argument_non_ascii'}{'extra'}{'section_childs'}[0];
$result_sectioning{'dotless_argument_non_ascii'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'dotless_argument_non_ascii'};

$result_nodes{'dotless_argument_non_ascii'} = [
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
            'normalized' => 'chap'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'dotless_argument_non_ascii'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'dotless_argument_non_ascii'}[0];
$result_nodes{'dotless_argument_non_ascii'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'dotless_argument_non_ascii'}[0];
$result_nodes{'dotless_argument_non_ascii'}[1] = $result_nodes{'dotless_argument_non_ascii'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'dotless_argument_non_ascii'} = [
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

$result_errors{'dotless_argument_non_ascii'} = [
  {
    'error_line' => "\@dotless expects `i' or `j' as argument, not `\x{ea}'
",
    'line_nr' => 6,
    'text' => "\@dotless expects `i' or `j' as argument, not `\x{ea}'",
    'type' => 'error'
  },
  {
    'error_line' => "\@dotless expects `i' or `j' as argument, not `\x{ea}'
",
    'line_nr' => 7,
    'text' => "\@dotless expects `i' or `j' as argument, not `\x{ea}'",
    'type' => 'error'
  }
];


$result_floats{'dotless_argument_non_ascii'} = {};



$result_converted{'plaintext'}->{'dotless_argument_non_ascii'} = 'top
***

1 Chapter
*********

ê ê
';


$result_converted{'html_text'}->{'dotless_argument_non_ascii'} = '<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>
<p>ê
ê
</p></div>
</div>
';


$result_converted{'xml'}->{'dotless_argument_non_ascii'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>
<para><dotless>ê</dotless>
<dotless spacesaftercmd=" ">ê</dotless>
</para></chapter>
';


$result_converted{'docbook'}->{'dotless_argument_non_ascii'} = '<chapter label="1" id="chap">
<title>Chapter</title>
<para>ê
ê
</para></chapter>
';


$result_converted{'latex_text'}->{'dotless_argument_non_ascii'} = '\\begin{document}
\\label{anchor:Top}%
\\chapter{{Chapter}}
\\label{anchor:chap}%
ê
ê
';

1;
