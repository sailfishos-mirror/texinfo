use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'chapter_before_and_after_part'} = 'U0 unit[E0]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
FastForward: [U1]
 *before_node_section C1
  *preamble_before_content
 *0 @chapter C2 l1 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0|E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
U1 unit[E2]
unit_directions:D[prev->[U0]]
UNIT_DIRECTIONS
This: [U1]
Back: [U0]
FastBack: [U0]
 *1 @part C2 l3 {part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |part_associated_section:[E2]
 |section_childs:EC[E2]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part}
  {empty_line:\\n}
 *2 @chapter C3 l5 {chapter 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_part:[E1]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter 2}
  {empty_line:\\n}
  *@contents C1 l7
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
';


$result_texis{'chapter_before_and_after_part'} = '@chapter chapter

@part part

@chapter chapter 2

@contents
';


$result_texts{'chapter_before_and_after_part'} = '1 chapter
*********

part
****

2 chapter 2
***********

';

$result_sectioning{'chapter_before_and_after_part'} = {
  'extra' => {
    'section_childs' => [
      {
        'associated_unit' => {
          'directions' => {
            'FastForward' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'This' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'unit_command' => {
                'associated_unit' => {},
                'cmdname' => 'chapter',
                'extra' => {
                  'associated_part' => {
                    'associated_unit' => {},
                    'cmdname' => 'part',
                    'extra' => {
                      'part_associated_section' => {},
                      'section_childs' => [
                        {}
                      ],
                      'section_level' => 0
                    }
                  },
                  'section_directions' => {
                    'up' => {}
                  },
                  'section_level' => 1,
                  'section_number' => '2',
                  'toplevel_directions' => {
                    'prev' => {}
                  }
                }
              },
              'unit_type' => 'unit'
            },
            'Forward' => {},
            'This' => {}
          },
          'tree_unit_directions' => {},
          'unit_command' => {},
          'unit_type' => 'unit'
        },
        'cmdname' => 'chapter',
        'extra' => {
          'section_level' => 1,
          'section_number' => '1',
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      },
      {}
    ],
    'section_level' => -1
  }
};
$result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'associated_unit'} = $result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'extra'}{'part_associated_section'} = $result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'};
$result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'extra'}{'section_childs'}[0] = $result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'};
$result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'};
$result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'} = $result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'chapter_before_and_after_part'};
$result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[1] = $result_sectioning{'chapter_before_and_after_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'};

$result_errors{'chapter_before_and_after_part'} = [];


$result_floats{'chapter_before_and_after_part'} = {};


$result_elements{'chapter_before_and_after_part'} = [
  {
    'directions' => {
      'FastForward' => {
        'directions' => {
          'Back' => {},
          'FastBack' => {},
          'This' => {}
        },
        'unit_command' => {
          'associated_unit' => {},
          'cmdname' => 'chapter',
          'extra' => {
            'associated_part' => {
              'associated_unit' => {},
              'cmdname' => 'part',
              'extra' => {}
            },
            'section_number' => '2'
          }
        },
        'unit_type' => 'unit'
      },
      'Forward' => {},
      'This' => {}
    },
    'unit_command' => {
      'associated_unit' => {},
      'cmdname' => 'chapter',
      'extra' => {
        'section_number' => '1'
      }
    },
    'unit_type' => 'unit'
  },
  {}
];
$result_elements{'chapter_before_and_after_part'}[0]{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'chapter_before_and_after_part'}[0];
$result_elements{'chapter_before_and_after_part'}[0]{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'chapter_before_and_after_part'}[0];
$result_elements{'chapter_before_and_after_part'}[0]{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'chapter_before_and_after_part'}[0]{'directions'}{'FastForward'};
$result_elements{'chapter_before_and_after_part'}[0]{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'chapter_before_and_after_part'}[0]{'directions'}{'FastForward'};
$result_elements{'chapter_before_and_after_part'}[0]{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'associated_unit'} = $result_elements{'chapter_before_and_after_part'}[0]{'directions'}{'FastForward'};
$result_elements{'chapter_before_and_after_part'}[0]{'directions'}{'Forward'} = $result_elements{'chapter_before_and_after_part'}[0]{'directions'}{'FastForward'};
$result_elements{'chapter_before_and_after_part'}[0]{'directions'}{'This'} = $result_elements{'chapter_before_and_after_part'}[0];
$result_elements{'chapter_before_and_after_part'}[0]{'unit_command'}{'associated_unit'} = $result_elements{'chapter_before_and_after_part'}[0];
$result_elements{'chapter_before_and_after_part'}[1] = $result_elements{'chapter_before_and_after_part'}[0]{'directions'}{'FastForward'};



$result_directions_text{'chapter_before_and_after_part'} = 'output unit: @chapter chapter
  This: @chapter chapter
  Forward: @chapter chapter 2
  FastForward: @chapter chapter 2
output unit: @chapter chapter 2
  This: @chapter chapter 2
  Back: @chapter chapter
  FastBack: @chapter chapter
';


$result_converted{'plaintext'}->{'chapter_before_and_after_part'} = '1 chapter
*********

2 chapter 2
***********

1 chapter
part
2 chapter 2
';


$result_converted{'html'}->{'chapter_before_and_after_part'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

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
<div class="chapter-level-extent" id="chapter">
<h2 class="chapter"><span>1 chapter<a class="copiable-link" href="#chapter"> &para;</a></span></h2>

</div>
<div class="part-level-extent" id="part">
<h1 class="part"><span>part<a class="copiable-link" href="#part"> &para;</a></span></h1>
<hr>

<ul class="mini-toc">
<li><a href="#chapter-2" accesskey="1">chapter 2</a></li>
</ul>
<div class="chapter-level-extent" id="chapter-2">
<h2 class="chapter"><span>2 chapter 2<a class="copiable-link" href="#chapter-2"> &para;</a></span></h2>

<div class="region-contents" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">
<ul class="toc-numbered-mark">
  <li><a id="toc-chapter" href="#chapter">1 chapter</a></li>
<li><a id="toc-part" href="#part">part</a>
<ul class="toc-numbered-mark">
  <li><a id="toc-chapter-2" href="#chapter-2">2 chapter 2</a></li>
</ul></li>

</ul>
</div>
</div>
</div>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'chapter_before_and_after_part'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'chapter_before_and_after_part'} = '<chapter spaces=" "><sectiontitle>chapter</sectiontitle>

</chapter>
<part spaces=" "><sectiontitle>part</sectiontitle>

<chapter spaces=" "><sectiontitle>chapter 2</sectiontitle>

<contents></contents>
</chapter>
</part>
';

1;
