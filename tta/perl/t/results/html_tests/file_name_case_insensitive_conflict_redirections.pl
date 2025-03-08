use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'file_name_case_insensitive_conflict_redirections'} = '*document_root C4
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
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l2 {top section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E2]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top section}
  {empty_line:\\n}
 *2 @chapter C7 l4 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
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
  {empty_line:\\n}
  *3 @table C5 l6
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E4]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *4 @samp l6
   *before_item C1
    {empty_line:\\n}
   *table_entry C2
    *table_term C1
     *@item C1 l8
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {foo}
    *table_definition C4
     *5 @anchor C1 l9
     |EXTRA
     |is_target:{1}
     |normalized:{foo}
      *brace_arg C1
       {foo}
     {spaces_after_close_brace:\\n}
     *paragraph C3
      {Some text about }
      *6 @samp C1 l10
       *brace_container C1
        {foo}
      {\\n}
     {empty_line:\\n}
   *table_entry C2
    *table_term C1
     *@item C1 l12
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {Foo}
    *table_definition C4
     *7 @anchor C1 l13
     |EXTRA
     |is_target:{1}
     |normalized:{Foo}
      *brace_arg C1
       {Foo}
     {spaces_after_close_brace:\\n}
     *paragraph C3
      {Some text about }
      *8 @samp C1 l14
       *brace_container C1
        {Foo}
      {\\n}
     {empty_line:\\n}
   *@end C1 l16
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *paragraph C2
   *9 @xref C1 l18
    *brace_arg C1
    |EXTRA
    |node_content:{foo}
    |normalized:{foo}
     {foo}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *10 @xref C1 l20
    *brace_arg C1
    |EXTRA
    |node_content:{Foo}
    |normalized:{Foo}
     {Foo}
   {\\n}
';


$result_texis{'file_name_case_insensitive_conflict_redirections'} = '@node Top
@top top section

@chapter Chapter

@table @samp

@item foo
@anchor{foo}
Some text about @samp{foo}

@item Foo
@anchor{Foo}
Some text about @samp{Foo}

@end table

@xref{foo}

@xref{Foo}
';


$result_texts{'file_name_case_insensitive_conflict_redirections'} = 'top section
***********

1 Chapter
*********


foo
Some text about foo

Foo
Some text about Foo


foo

Foo
';

$result_errors{'file_name_case_insensitive_conflict_redirections'} = [];


$result_converted_errors{'file_html'}->{'file_name_case_insensitive_conflict_redirections'} = [
  {
    'error_line' => 'warning: @anchor `Foo\' file foo.html for redirection exists
',
    'line_nr' => 13,
    'text' => '@anchor `Foo\' file foo.html for redirection exists',
    'type' => 'warning'
  },
  {
    'continuation' => 1,
    'error_line' => 'warning: conflict with @anchor `foo\' redirection file
',
    'line_nr' => 9,
    'text' => 'conflict with @anchor `foo\' redirection file',
    'type' => 'warning'
  }
];


1;
