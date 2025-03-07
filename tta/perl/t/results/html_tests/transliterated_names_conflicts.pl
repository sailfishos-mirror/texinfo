use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'transliterated_names_conflicts'} = 'U0 unit[E0]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
FastForward: [U1]
NodeNext: [U1]
NodeForward: [U1]
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo.tex\\n}
   {text_before_beginning:\\n}
  *preamble_before_content
 *0 @node C1 transliterated_names_conflicts.texi:l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 transliterated_names_conflicts.texi:l4 {Same transliterated names}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E3|E5]
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
    {Same transliterated names}
  {empty_line:\\n}
U1 unit[E2]
unit_directions:D[next->[U2]|prev->[U0]]
UNIT_DIRECTIONS
This: [U1]
Forward: [U2]
Back: [U0]
FastForward: [U2]
FastBack: [U0]
Next: [U2]
Up: [U0]
NodeNext: [U2]
NodePrev: [U0]
NodeUp: [U0]
NodeForward: [U2]
NodeBack: [U0]
 *2 @node C1 transliterated_names_conflicts.texi:l6 {Prés}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[next->E4|prev->E0|up->E0]
 |normalized:{Pr_00e9s}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Prés}
 *3 @chapter C2 transliterated_names_conflicts.texi:l7 {Prés}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_directions:D[next->E5|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E5|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Prés}
  {empty_line:\\n}
U2 unit[E4]
unit_directions:D[prev->[U1]]
UNIT_DIRECTIONS
This: [U2]
Back: [U1]
FastBack: [U1]
Prev: [U1]
Up: [U0]
NodePrev: [U1]
NodeUp: [U0]
NodeBack: [U1]
 *4 @node C1 transliterated_names_conflicts.texi:l9 {Other node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |associated_title_command:[E5]
 |is_target:{1}
 |node_directions:D[prev->E2|up->E0]
 |normalized:{Other-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Other node}
 *5 @chapter C7 transliterated_names_conflicts.texi:l10 {Other chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E4]
 |associated_node:[E4]
 |section_directions:D[prev->E3|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Other chapter}
  {empty_line:\\n}
  *6 @anchor C1 transliterated_names_conflicts.texi:l12
  |EXTRA
  |is_target:{1}
  |normalized:{Pr_00eas}
   *brace_arg C1
    {Prês}
  {spaces_after_close_brace:\\n}
  {empty_line:\\n}
  *7 @float C3 transliterated_names_conflicts.texi:l14
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |float_number:{2.1}
  |float_section:[E5]
  |float_type:{Figure}
  |global_command_number:{1}
  |is_target:{1}
  |normalized:{Pr_00e8s}
   *arguments_line C2
    *block_line_arg C1
     {Figure}
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{ }
     {Près}
   *paragraph C1
    {In figure\\n}
   *@end C1 transliterated_names_conflicts.texi:l16
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{float}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {float}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'transliterated_names_conflicts'} = '\\input texinfo.tex

@node Top
@top Same transliterated names

@node Prés
@chapter Prés

@node Other node
@chapter Other chapter

@anchor{Prês}

@float Figure, Près
In figure
@end float

@bye
';


$result_texts{'transliterated_names_conflicts'} = 'Same transliterated names
*************************

1 Prés
******

2 Other chapter
***************


Figure, Près
In figure

';

$result_errors{'transliterated_names_conflicts'} = [];


$result_floats{'transliterated_names_conflicts'} = 'Figure: 1
 F2.1: {Pr_00e8s}
';

$result_converted_errors{'file_html'}->{'transliterated_names_conflicts'} = [
  {
    'error_line' => "warning: \@anchor `Pr\x{ea}s' file Pres.html for redirection exists
",
    'file_name' => 'transliterated_names_conflicts.texi',
    'line_nr' => 12,
    'text' => "\@anchor `Pr\x{ea}s' file Pres.html for redirection exists",
    'type' => 'warning'
  },
  {
    'continuation' => 1,
    'error_line' => "warning: conflict with \@node `Pr\x{e9}s' file
",
    'file_name' => 'transliterated_names_conflicts.texi',
    'line_nr' => 6,
    'text' => "conflict with \@node `Pr\x{e9}s' file",
    'type' => 'warning'
  },
  {
    'error_line' => "warning: \@float `Pr\x{e8}s' file Pres.html for redirection exists
",
    'file_name' => 'transliterated_names_conflicts.texi',
    'line_nr' => 14,
    'text' => "\@float `Pr\x{e8}s' file Pres.html for redirection exists",
    'type' => 'warning'
  },
  {
    'continuation' => 1,
    'error_line' => "warning: conflict with \@node `Pr\x{e9}s' file
",
    'file_name' => 'transliterated_names_conflicts.texi',
    'line_nr' => 6,
    'text' => "conflict with \@node `Pr\x{e9}s' file",
    'type' => 'warning'
  }
];


1;
