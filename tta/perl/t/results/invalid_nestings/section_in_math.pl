use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'section_in_math'} = '*document_root C3
 *before_node_section C2
  {empty_line:\\n}
  *paragraph C2
   {Some }
   *0 @math C1 l2
    *brace_command_context C2
     {aa }
     *balanced_braces C3 l2
      {{x^2\\n}
      {empty_line:\\n}
      {}}
 *1 @section C3 l4 {sec1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E3]
 |section_level:{2}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E3]
  ||section_level:{1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec1}
  {empty_line:\\n}
  *paragraph C2
   {More }
   *2 @math C1 l6
   |INFO
   |spaces_before_argument:
    |{ }
    *brace_command_context C2
     {in math\\n}
     {empty_line:\\n}
 *3 @section C1 l8 {sec2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E1]
 |section_level:{2}
 |section_number:{2}
 |toplevel_directions:D[prev->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec2}
';


$result_texis{'section_in_math'} = '
Some @math{aa {x^2

}}@section sec1

More @math{ in math

}@section sec2
';


$result_texts{'section_in_math'} = '
Some aa {x^2

}1 sec1
======

More in math

2 sec2
======
';

$result_sectioning{'section_in_math'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'section',
        'extra' => {
          'section_directions' => {},
          'section_level' => 2,
          'section_number' => '1',
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      },
      {
        'cmdname' => 'section',
        'extra' => {
          'section_directions' => {
            'prev' => {}
          },
          'section_level' => 2,
          'section_number' => '2',
          'toplevel_directions' => {
            'prev' => {}
          }
        }
      }
    ],
    'section_level' => 1
  }
};
$result_sectioning{'section_in_math'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'section_in_math'};
$result_sectioning{'section_in_math'}{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'section_in_math'}{'extra'}{'section_childs'}[0];
$result_sectioning{'section_in_math'}{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'section_in_math'}{'extra'}{'section_childs'}[0];

$result_errors{'section_in_math'} = [
  {
    'error_line' => 'warning: @section should not appear anywhere inside @math
',
    'line_nr' => 4,
    'text' => '@section should not appear anywhere inside @math',
    'type' => 'warning'
  },
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 2,
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => '@section seen before @math closing brace
',
    'line_nr' => 2,
    'text' => '@section seen before @math closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @section should not appear anywhere inside @math
',
    'line_nr' => 8,
    'text' => '@section should not appear anywhere inside @math',
    'type' => 'warning'
  },
  {
    'error_line' => '@section seen before @math closing brace
',
    'line_nr' => 6,
    'text' => '@section seen before @math closing brace',
    'type' => 'error'
  }
];


$result_floats{'section_in_math'} = {};


1;
