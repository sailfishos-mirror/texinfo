use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'in_table'} = '*document_root C3
 *before_node_section C1
  {empty_line:\\n}
 *0 @node C1 l2 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E1]
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @node C11 l3 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E0]
 |node_number:{2}
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *@table C2 l5
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@xref l5
   *@end C1 l6
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
  *@table C6 l8
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@code l8
   *table_entry C2
    *table_term C1
     *@item C1 l9
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C8
       *@indent l9
       {ignorable_spaces_after_command: }
       *@titlefont C1 l9
       |EXTRA
       |global_command_number:{1}
        *brace_container C1
         {in titlefont}
       { }
       *2 @anchor C1 l9
       |EXTRA
       |is_target:{1}
       |normalized:{in-anchor}
        *brace_arg C1
         {in anchor}
       *@footnote C1 l9
       |EXTRA
       |global_command_number:{1}
        *brace_command_context C1
         *paragraph C1
          {footnote}
       { }
       *@exdent C1 l9
       |INFO
       |spaces_before_argument:
        |{ }
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{\\n}
         {exdent}
    *table_definition C1
     *paragraph C3
      {in item}
      *@footnote C1 l10
      |EXTRA
      |global_command_number:{2}
       *brace_command_context C1
        *paragraph C1
         {footnote in item}
      {\\n}
   *table_entry C2
    *table_term C1
     *@item C1 l11
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
       *@ref C3 l11
        *brace_arg C1
         {Top}
        *brace_arg
        *brace_arg C1
        |INFO
        |spaces_before_argument:
         |{ }
         {title\\n}
    *table_definition C1
     *paragraph C1
      {long title\\n}
   *table_entry C1
    *table_term C1
     *@item C1 l13
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
       *@center C1 l13
       |INFO
       |spaces_before_argument:
        |{ }
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{\\n}
         {centered text in item}
   *table_entry C1
    *table_term C1
     *@item C1 l14
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
       *index_entry_command@cindex C1 l14
       |INFO
       |command_name:{cindex}
       |spaces_before_argument:
        |{ }
       |EXTRA
       |element_node:[E1]
       |index_entry:I{cp,1}
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{\\n}
         {index}
   *@end C1 l15
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
  *@vtable C4 l17
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@asis l17
   *table_entry C2
    *table_term C1
     *@item C1 l18
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E1]
     |index_entry:I{vr,1}
      *line_arg C1
       *index_entry_command@cindex C1 l18
       |INFO
       |command_name:{cindex}
       |spaces_before_argument:
        |{ }
       |EXTRA
       |element_node:[E1]
       |index_entry:I{cp,2}
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{\\n}
         {index}
    *table_definition C1
     *paragraph C3
      *@option C1 l19
       *brace_container C1
        {opt}
      {\\n}
      {More text\\n}
   *table_entry C2
    *table_term C1
     *@item C1 l21
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E1]
     |index_entry:I{vr,2}
      *line_arg C1
       *index_entry_command@cindex C1 l21
       |INFO
       |command_name:{cindex}
       |spaces_before_argument:
        |{ }
       |EXTRA
       |element_node:[E1]
       |index_entry:I{cp,3}
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{\\n}
         {2 index}
    *table_definition C1
     *paragraph C3
      *@option C1 l22
       *brace_container C1
        {nopt}
      {\\n}
      {Even more\\n}
   *@end C1 l24
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{vtable}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {vtable}
  {empty_line:\\n}
  *@printindex C1 l26
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fn}
  {empty_line:\\n}
  *@printindex C1 l28
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
';


$result_texis{'in_table'} = '
@node Top
@node chap

@table @xref
@end table

@table @code
@item @indent @titlefont{in titlefont} @anchor{in anchor}@footnote{footnote} @exdent exdent
in item@footnote{footnote in item}
@item @ref{Top,, title
}long title
@item @center centered text in item
@item @cindex index
@end table

@vtable @asis
@item @cindex index
@option{opt}
More text
@item @cindex 2 index
@option{nopt}
Even more
@end vtable

@printindex fn

@printindex cp
';


$result_texts{'in_table'} = '


in titlefont  exdent
in item
Top
long title
centered text in item



opt
More text

nopt
Even more


';

$result_errors{'in_table'} = [
  {
    'error_line' => 'warning: @xref should not appear on @table line
',
    'line_nr' => 5,
    'text' => '@xref should not appear on @table line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @indent should not appear in @item
',
    'line_nr' => 9,
    'text' => '@indent should not appear in @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @exdent should only appear at the beginning of a line
',
    'line_nr' => 9,
    'text' => '@exdent should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @exdent should not appear in @item
',
    'line_nr' => 9,
    'text' => '@exdent should not appear in @item',
    'type' => 'warning'
  },
  {
    'error_line' => '@ref missing closing brace
',
    'line_nr' => 11,
    'text' => '@ref missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 12,
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @center should only appear at the beginning of a line
',
    'line_nr' => 13,
    'text' => '@center should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @center should not appear in @item
',
    'line_nr' => 13,
    'text' => '@center should not appear in @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @cindex should only appear at the beginning of a line
',
    'line_nr' => 14,
    'text' => '@cindex should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @cindex should not appear in @item
',
    'line_nr' => 14,
    'text' => '@cindex should not appear in @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @cindex should only appear at the beginning of a line
',
    'line_nr' => 18,
    'text' => '@cindex should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @cindex should not appear in @item
',
    'line_nr' => 18,
    'text' => '@cindex should not appear in @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @cindex should only appear at the beginning of a line
',
    'line_nr' => 21,
    'text' => '@cindex should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @cindex should not appear in @item
',
    'line_nr' => 21,
    'text' => '@cindex should not appear in @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 3,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @item
',
    'line_nr' => 18,
    'text' => 'empty index key in @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @item
',
    'line_nr' => 21,
    'text' => 'empty index key in @item',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'in_table'} = 'cp:
 2 index
 index
 index
';

1;
