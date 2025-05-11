use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'filenameconflictwithnonsplit'} = '*document_root C3
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C5 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
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
  *2 @anchor C1 l4
  |EXTRA
  |is_target:{1}
  |normalized:{filenameconflictwithnonsplit}
   *brace_arg C1
    {filenameconflictwithnonsplit}
  {spaces_after_close_brace:\\n}
  {empty_line:\\n}
';


$result_texis{'filenameconflictwithnonsplit'} = '@node Top
@top top

@anchor{filenameconflictwithnonsplit}

';


$result_texts{'filenameconflictwithnonsplit'} = 'top
***


';

$result_errors{'filenameconflictwithnonsplit'} = [];


1;
