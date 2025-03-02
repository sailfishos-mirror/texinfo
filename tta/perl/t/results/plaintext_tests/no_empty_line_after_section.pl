use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'no_empty_line_after_section'} = '*document_root C5
 *before_node_section C1
  *paragraph C1
   {Text\\n}
 *0 @top C3 l2 {top}
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
  *paragraph C1
   {Other text\\n}
  {empty_line:\\n}
 *1 @chapter C4 l5 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E2|E4]
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
  *@c C1
   {rawline_arg: comment\\n}
  {empty_line:\\n}
  *paragraph C2
   {Para\\n}
   *@comment C1
    {rawline_arg: c\\n}
 *2 @section C4 l10 {sec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E4|up->E1]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec}
  *paragraph C2
   *3 @uref C1 l11
    *brace_arg C1
     {url}
   { A.\\n}
  {empty_line:\\n}
  *@sp C1 l13
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {3}
 *4 @section C5 l14 {after sp}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E2|up->E1]
 |section_level:{2}
 |section_number:{1.2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {after sp}
  *@indent l15
  {ignorable_spaces_after_command:\\n}
  *paragraph C1
  |EXTRA
  |indent:{1}
   {Para indented.\\n}
  {empty_line:\\n}
';


$result_texis{'no_empty_line_after_section'} = 'Text
@top top
Other text

@chapter chap
@c comment

Para
@comment c
@section sec
@uref{url} A.

@sp 3
@section after sp
@indent
Para indented.

';


$result_texts{'no_empty_line_after_section'} = 'Text
top
***
Other text

1 chap
******

Para
1.1 sec
=======
url A.




1.2 after sp
============
Para indented.

';

$result_sectioning{'no_empty_line_after_section'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'section_directions' => {
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '1.1'
                    }
                  },
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'section_directions' => {
                        'prev' => {},
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '1.2'
                    }
                  }
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
$result_sectioning{'no_empty_line_after_section'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'no_empty_line_after_section'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'no_empty_line_after_section'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'no_empty_line_after_section'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'no_empty_line_after_section'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'no_empty_line_after_section'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'no_empty_line_after_section'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'no_empty_line_after_section'}{'extra'}{'section_childs'}[0];
$result_sectioning{'no_empty_line_after_section'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'no_empty_line_after_section'}{'extra'}{'section_childs'}[0];
$result_sectioning{'no_empty_line_after_section'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'no_empty_line_after_section'}{'extra'}{'section_childs'}[0];
$result_sectioning{'no_empty_line_after_section'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'no_empty_line_after_section'};

$result_errors{'no_empty_line_after_section'} = [];


$result_floats{'no_empty_line_after_section'} = {};



$result_converted{'plaintext'}->{'no_empty_line_after_section'} = 'Text

top
***

Other text

1 chap
******

Para

1.1 sec
=======

<url> A.




1.2 after sp
============

   Para indented.

';

1;
