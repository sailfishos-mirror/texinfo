use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'file_name_conflict_with_user_defined'} = '*document_root C7
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
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
 *1 @top C2 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3|E6]
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
 *2 @node C1 l4 {Chapter 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[next->E5|prev->E0|up->E0]
 |normalized:{Chapter-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter 1}
 *3 @chapter C5 l5 {Chap 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_directions:D[next->E6|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E6|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap 1}
  {empty_line:\\n}
  *4 @anchor C1 l7
  |EXTRA
  |is_target:{1}
  |normalized:{myanchor}
   *brace_arg C1
    {myanchor}
  {spaces_after_close_brace:\\n}
  {empty_line:\\n}
 *5 @node C1 l9 {Chapter 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
 |is_target:{1}
 |node_directions:D[prev->E2|up->E0]
 |normalized:{Chapter-2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter 2}
 *6 @chapter C1 l10 {Chap 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E5]
 |section_directions:D[prev->E3|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap 2}
';


$result_texis{'file_name_conflict_with_user_defined'} = '@node Top
@top top

@node Chapter 1
@chapter Chap 1

@anchor{myanchor}

@node Chapter 2
@chapter Chap 2
';


$result_texts{'file_name_conflict_with_user_defined'} = 'top
***

1 Chap 1
********


2 Chap 2
********
';

$result_errors{'file_name_conflict_with_user_defined'} = [];


$result_converted_errors{'file_html'}->{'file_name_conflict_with_user_defined'} = [
  {
    'error_line' => 'warning: @anchor `myanchor\' file myanchor.html for redirection exists
',
    'line_nr' => 7,
    'text' => '@anchor `myanchor\' file myanchor.html for redirection exists',
    'type' => 'warning'
  },
  {
    'continuation' => 1,
    'error_line' => 'warning: conflict with user-defined file
',
    'text' => 'conflict with user-defined file',
    'type' => 'warning'
  }
];


1;
