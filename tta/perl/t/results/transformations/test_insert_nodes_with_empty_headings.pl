use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'test_insert_nodes_with_empty_headings'} = '*document_root C12
 *before_node_section
 *0 @node C1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l1 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E3]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *2 @node C1 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{2}
 |normalized:{Chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
 *3 @chapter C2 l3 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E5|E7|E10]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
  {empty_line:\\n}
 *4 @node C1 { 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{3}
 |normalized:{-1}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {}
    { 1}
 *5 @section C2 l5
 |EXTRA
 |section_heading_number:{1.1}
 |section_level:{2}
 |section_number:{3}
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
  {empty_line:\\n}
 *6 @node C1 { 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{4}
 |normalized:{-2}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {}
    { 2}
 *7 @section C2 l7
 |EXTRA
 |section_heading_number:{1.2}
 |section_level:{2}
 |section_number:{4}
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
  {empty_line:\\n}
 *8 @node C1 l9 {@strong{}}
 |INFO
 |spaces_before_argument:
  |{ }
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@strong C1 l9
     *brace_container
 *9 @node C1 {@strong{} 3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{5}
 |normalized:{-3}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@strong C1
     *brace_container
    { 3}
 *10 @section C1 l10 {@strong{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_heading_number:{1.3}
 |section_level:{2}
 |section_number:{5}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@strong C1 l10
     *brace_container
';


$result_texis{'test_insert_nodes_with_empty_headings'} = '@node Top
@top top

@node Chap
@chapter Chap

@node  1
@section

@node  2
@section

@node @strong{}
@node @strong{} 3
@section @strong{}
';


$result_texts{'test_insert_nodes_with_empty_headings'} = 'top
***

1 Chap
******

1.1 
====

1.2 
====

1.3 
====
';

$result_errors{'test_insert_nodes_with_empty_headings'} = [
  {
    'error_line' => 'warning: @section missing argument
',
    'line_nr' => 5,
    'text' => '@section missing argument',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @section missing argument
',
    'line_nr' => 7,
    'text' => '@section missing argument',
    'type' => 'warning'
  },
  {
    'error_line' => 'empty node name after expansion `@strong{}\'
',
    'line_nr' => 9,
    'text' => 'empty node name after expansion `@strong{}\'',
    'type' => 'error'
  }
];


$result_nodes_list{'test_insert_nodes_with_empty_headings'} = '1|Top
 associated_section: top
 node_directions:
  next->Chap
2|Chap
 associated_section: 1 Chap
 node_directions:
  prev->Top
  up->Top
3| 1
 associated_section: 1.1
 node_directions:
  next-> 2
  up->Chap
4| 2
 associated_section: 1.2
 node_directions:
  next->@strong{} 3
  prev-> 1
  up->Chap
5|@strong{} 3
 associated_section: 1.3 @strong{}
 node_directions:
  prev-> 2
  up->Chap
';

$result_sections_list{'test_insert_nodes_with_empty_headings'} = '1|top
 associated_node: Top
 toplevel_directions:
  next->Chap
2|Chap
 associated_node: Chap
 section_directions:
  up->top
 toplevel_directions:
  prev->top
  up->top
3
 associated_node:  1
 section_directions:
  next->
  up->Chap
4
 associated_node:  2
 section_directions:
  next->@strong{}
  prev->
  up->Chap
5|@strong{}
 associated_node: @strong{} 3
 section_directions:
  prev->
  up->Chap
';

$result_headings_list{'test_insert_nodes_with_empty_headings'} = '';

1;
