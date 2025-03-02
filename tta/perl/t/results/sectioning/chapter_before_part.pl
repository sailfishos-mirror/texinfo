use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'chapter_before_part'} = 'U0 unit[E0]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
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
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
U1 unit[E1]
unit_directions:D[prev->[U0]]
UNIT_DIRECTIONS
This: [U1]
Back: [U0]
 *1 @part C1 l3 {part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part}
';


$result_texis{'chapter_before_part'} = '@chapter chapter

@part part
';


$result_texts{'chapter_before_part'} = '1 chapter
*********

part
****
';

$result_sectioning{'chapter_before_part'} = {
  'extra' => {
    'section_childs' => [
      {
        'associated_unit' => {
          'directions' => {
            'Forward' => {
              'directions' => {
                'Back' => {},
                'This' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'unit_command' => {
                'associated_unit' => {},
                'cmdname' => 'part',
                'extra' => {
                  'section_level' => 0
                }
              },
              'unit_type' => 'unit'
            },
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
          'sectioning_root' => {}
        }
      },
      {}
    ],
    'section_level' => -1
  }
};
$result_sectioning{'chapter_before_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_sectioning{'chapter_before_part'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'chapter_before_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_sectioning{'chapter_before_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_sectioning{'chapter_before_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'chapter_before_part'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'chapter_before_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'chapter_before_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_sectioning{'chapter_before_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'chapter_before_part'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'chapter_before_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'} = $result_sectioning{'chapter_before_part'}{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_before_part'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'chapter_before_part'};
$result_sectioning{'chapter_before_part'}{'extra'}{'section_childs'}[1] = $result_sectioning{'chapter_before_part'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'unit_command'};

$result_errors{'chapter_before_part'} = [
  {
    'error_line' => 'warning: no sectioning command associated with @part
',
    'line_nr' => 3,
    'text' => 'no sectioning command associated with @part',
    'type' => 'warning'
  }
];


$result_floats{'chapter_before_part'} = {};


$result_elements{'chapter_before_part'} = [
  {
    'directions' => {
      'Forward' => {
        'directions' => {
          'Back' => {},
          'This' => {}
        },
        'unit_command' => {
          'associated_unit' => {},
          'cmdname' => 'part',
          'extra' => {}
        },
        'unit_type' => 'unit'
      },
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
$result_elements{'chapter_before_part'}[0]{'directions'}{'Forward'}{'directions'}{'Back'} = $result_elements{'chapter_before_part'}[0];
$result_elements{'chapter_before_part'}[0]{'directions'}{'Forward'}{'directions'}{'This'} = $result_elements{'chapter_before_part'}[0]{'directions'}{'Forward'};
$result_elements{'chapter_before_part'}[0]{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_elements{'chapter_before_part'}[0]{'directions'}{'Forward'};
$result_elements{'chapter_before_part'}[0]{'directions'}{'This'} = $result_elements{'chapter_before_part'}[0];
$result_elements{'chapter_before_part'}[0]{'unit_command'}{'associated_unit'} = $result_elements{'chapter_before_part'}[0];
$result_elements{'chapter_before_part'}[1] = $result_elements{'chapter_before_part'}[0]{'directions'}{'Forward'};



$result_directions_text{'chapter_before_part'} = 'output unit: @chapter chapter
  This: @chapter chapter
  Forward: @part part
output unit: @part part
  This: @part part
  Back: @chapter chapter
';


$result_converted{'plaintext'}->{'chapter_before_part'} = '1 chapter
*********

';


$result_converted{'html'}->{'chapter_before_part'} = '<!DOCTYPE html>
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

<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
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
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'chapter_before_part'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'chapter_before_part'} = '<chapter spaces=" "><sectiontitle>chapter</sectiontitle>

</chapter>
<part spaces=" "><sectiontitle>part</sectiontitle>
</part>
';

1;
