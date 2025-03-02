use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'index_below'} = 'U0 unit[E0]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
FastForward: [U1]
 *before_node_section
 *0 @top C2 l1 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E1]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0]
  ||section_level:{-1}
 |toplevel_directions:D[next->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
U1 unit[E1]
unit_directions:D[next->[U2]|prev->[U0]]
UNIT_DIRECTIONS
This: [U1]
Forward: [U2]
Back: [U0]
FastBack: [U0]
Up: [U0]
 *1 @chapter C2 l3 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E2]
 |section_directions:D[up->E0]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E0|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
U2 unit[E2]
unit_directions:D[prev->[U1]]
UNIT_DIRECTIONS
This: [U2]
Back: [U1]
FastBack: [U1]
Up: [U1]
 *2 @section C4 l5 {sec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E1]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec}
  {empty_line:\\n}
  *3 index_entry_command@cindex C1 l7
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {entry}
  *@printindex C1 l8
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
';


$result_texis{'index_below'} = '@top top

@chapter chap

@section sec

@cindex entry
@printindex cp
';


$result_texts{'index_below'} = 'top
***

1 chap
******

1.1 sec
=======

';

$result_sectioning{'index_below'} = {
  'extra' => {
    'section_childs' => [
      {
        'associated_unit' => {
          'directions' => {
            'FastForward' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'Forward' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
                    'This' => {},
                    'Up' => {}
                  },
                  'tree_unit_directions' => {
                    'prev' => {}
                  },
                  'unit_command' => {
                    'associated_unit' => {},
                    'cmdname' => 'section',
                    'extra' => {
                      'section_directions' => {
                        'up' => {
                          'associated_unit' => {},
                          'cmdname' => 'chapter',
                          'extra' => {
                            'section_childs' => [
                              {}
                            ],
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
                      },
                      'section_level' => 2,
                      'section_number' => '1.1'
                    }
                  },
                  'unit_type' => 'unit'
                },
                'This' => {},
                'Up' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'unit_command' => {},
              'unit_type' => 'unit'
            },
            'Forward' => {},
            'This' => {}
          },
          'tree_unit_directions' => {},
          'unit_command' => {},
          'unit_type' => 'unit'
        },
        'cmdname' => 'top',
        'extra' => {
          'section_childs' => [
            {}
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
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Up'} = $result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'associated_unit'} = $result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[0] = $result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'unit_command'};
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'index_below'}{'extra'}{'section_childs'}[0];
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'index_below'}{'extra'}{'section_childs'}[0];
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'index_below'}{'extra'}{'section_childs'}[0];
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'} = $result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'} = $result_sectioning{'index_below'}{'extra'}{'section_childs'}[0];
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0] = $result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'index_below'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'index_below'};

$result_errors{'index_below'} = [];


$result_floats{'index_below'} = {};


$result_indices_sort_strings{'index_below'} = {
  'cp' => [
    'entry'
  ]
};


$result_elements{'index_below'} = [
  {
    'directions' => {
      'FastForward' => {
        'directions' => {
          'Back' => {},
          'FastBack' => {},
          'Forward' => {
            'directions' => {
              'Back' => {},
              'FastBack' => {},
              'This' => {},
              'Up' => {}
            },
            'unit_command' => {
              'associated_unit' => {},
              'cmdname' => 'section',
              'extra' => {
                'section_number' => '1.1'
              }
            },
            'unit_type' => 'unit'
          },
          'This' => {},
          'Up' => {}
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
      'Forward' => {},
      'This' => {}
    },
    'unit_command' => {
      'associated_unit' => {},
      'cmdname' => 'top',
      'extra' => {}
    },
    'unit_type' => 'unit'
  },
  {},
  {}
];
$result_elements{'index_below'}[0]{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'index_below'}[0];
$result_elements{'index_below'}[0]{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'index_below'}[0];
$result_elements{'index_below'}[0]{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_elements{'index_below'}[0]{'directions'}{'FastForward'};
$result_elements{'index_below'}[0]{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_elements{'index_below'}[0]{'directions'}{'FastForward'};
$result_elements{'index_below'}[0]{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_elements{'index_below'}[0]{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_elements{'index_below'}[0]{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Up'} = $result_elements{'index_below'}[0]{'directions'}{'FastForward'};
$result_elements{'index_below'}[0]{'directions'}{'FastForward'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_elements{'index_below'}[0]{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_elements{'index_below'}[0]{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'index_below'}[0]{'directions'}{'FastForward'};
$result_elements{'index_below'}[0]{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'index_below'}[0];
$result_elements{'index_below'}[0]{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'index_below'}[0]{'directions'}{'FastForward'};
$result_elements{'index_below'}[0]{'directions'}{'Forward'} = $result_elements{'index_below'}[0]{'directions'}{'FastForward'};
$result_elements{'index_below'}[0]{'directions'}{'This'} = $result_elements{'index_below'}[0];
$result_elements{'index_below'}[0]{'unit_command'}{'associated_unit'} = $result_elements{'index_below'}[0];
$result_elements{'index_below'}[1] = $result_elements{'index_below'}[0]{'directions'}{'FastForward'};
$result_elements{'index_below'}[2] = $result_elements{'index_below'}[0]{'directions'}{'FastForward'}{'directions'}{'Forward'};



$result_directions_text{'index_below'} = 'output unit: @top top
  This: @top top
  Forward: @chapter chap
  FastForward: @chapter chap
output unit: @chapter chap
  This: @chapter chap
  Forward: @section sec
  Back: @top top
  FastBack: @top top
  Up: @top top
output unit: @section sec
  This: @section sec
  Back: @chapter chap
  FastBack: @chapter chap
  Up: @chapter chap
';


$result_converted{'html'}->{'index_below'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#top" rel="start" title="top">
<link href="#chap" rel="index" title="1 chap">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
a.summary-letter-printindex {text-decoration: none}
span:hover a.copiable-link {visibility: visible}
table.index-entries-printindex {border-spacing: 0 0.5em}
td.printindex-index-entry {vertical-align: top}
td.printindex-index-section {vertical-align: top; padding-left: 1em}
th.index-letter-header-printindex {text-align: left; font-size: 150%; padding-bottom: 0.5em; padding-top: 0.5em; border-width: thin; border-top-style: solid}
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="top">
<div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">chap</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
 Up : <a href="#top" accesskey="u" rel="up">top</a> &nbsp; [<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter"><span>1 chap<a class="copiable-link" href="#chap"> &para;</a></span></h2>

<ul class="mini-toc">
<li><a href="#sec" accesskey="1">sec</a></li>
</ul>
<hr>
<div class="section-level-extent" id="sec">
<div class="nav-panel">
<p>
 Up : <a href="#chap" accesskey="u" rel="up">chap</a> &nbsp; [<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section"><span>1.1 sec<a class="copiable-link" href="#sec"> &para;</a></span></h3>

<a class="index-entry-id" id="index-entry"></a>
<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="sec_cp_letter-E">E</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-entry">entry</a></td><td class="printindex-index-section"><a href="#sec">1.1 sec</a></td></tr>
</table>
</div>
</div>
</div>
</div>



</body>
</html>
';

1;
