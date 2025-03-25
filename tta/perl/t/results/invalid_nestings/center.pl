use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'center'} = '*document_root C1
 *before_node_section C41
  *@center C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C6
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@indent l1
    {ignorable_spaces_after_command: }
    *0 @titlefont C1 l1
    |EXTRA
    |global_command_number:{1}
     *brace_container C1
      {in titlefont}
    { }
    *1 @anchor C1 l1
    |EXTRA
    |is_target:{1}
    |normalized:{in-anchor}
     *brace_arg C1
      {in anchor}
    *2 @footnote C1 l1
    |EXTRA
    |global_command_number:{1}
     *brace_command_context C1
      *paragraph C1
       {footnote}
  {empty_line:\\n}
  *@center C1 l3
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C2
    {center }
    *index_entry_command@cindex C1 l3
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
      {cindex}
  {empty_line:\\n}
  *@center C1 l5
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
    *3 @quotation C1 l5
     *arguments_line C1
      *block_line_arg
      |INFO
      |spaces_after_argument:
       |{\\n}
  *paragraph C1
   {in quotation\\n}
  {empty_line:\\n}
  *@center C1 l9
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C2
    {center }
    *@center C1 l9
    |INFO
    |spaces_before_argument:
     |{ }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {second center}
  {empty_line:\\n}
  *@center C1 l11
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
    *4 @code C1 l11
     *brace_container C1
      {in code in center\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  *@center C1 l15
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C2
    *5 @code C1 l15
     *brace_container C1
      {in code in center }
    *@center C1 l15
    |INFO
    |spaces_before_argument:
     |{ }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {center in code in center}
  {empty_line:\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  *paragraph C1
   *6 @code C1 l19
    *brace_container
  *@center C1 l19
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {in center in code}
  {empty_line:\\n}
  *7 @table C3 l21
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E8]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *8 @asis l21
   *before_item C1
    *@center C1 l22
    |INFO
    |spaces_before_argument:
     |{ }
     *line_arg C3
     |INFO
     |spaces_after_argument:
      |{\\n}
      {centered line with item }
      {ignorable_spaces_after_command: }
      {first item on center line}
   *@end C1 l23
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
  *9 @table C3 l25
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E10]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *10 @emph l25
   *table_entry C2
    *table_term C1
     *@item C1 l26
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {item}
    *table_definition C1
     *@center C1 l27
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C3
      |INFO
      |spaces_after_argument:
       |{\\n}
       {centered line with item }
       {ignorable_spaces_after_command: }
       {second item on center line}
   *@end C1 l28
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
  *paragraph C1
   {Empty double center:\\n}
  *@center C1 l31
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
    *@center C1 l31
     *line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
  {empty_line:\\n}
  *@center C1 l33
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C2
    *11 @samp C1 l33
     *brace_container C1
      {something }
    *@center C1 l33
    |INFO
    |spaces_before_argument:
     |{ }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {end of samp}
  {empty_line:\\n}
  *@center C1 l35
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C3
    {after first center }
    *12 @samp C1 l35
     *brace_container
    *@center C1 l35
    |INFO
    |spaces_before_argument:
     |{ }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {after second center}
  {empty_line:\\n}
  *paragraph C1
   {End of samp\\n}
  {empty_line:\\n}
  *13 @multitable C3 l39
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |max_columns:{2}
   *arguments_line C1
    *block_line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     *bracketed_arg C1 l39
      {AAA}
     {  }
     *bracketed_arg C1 l39
      {BBB}
   *multitable_body C1
    *row C2
    |EXTRA
    |row_number:{1}
     *@item C2 l40
     |EXTRA
     |cell_number:{1}
      {ignorable_spaces_after_command: }
      *paragraph C1
       {truc }
     *@tab C4 l40
     |EXTRA
     |cell_number:{2}
      {ignorable_spaces_after_command: }
      *paragraph C1
       {bidule\\n}
      *@center C1 l41
      |INFO
      |spaces_before_argument:
       |{ }
       *line_arg C4
       |INFO
       |spaces_after_argument:
        |{\\n}
        {ignorable_spaces_after_command: }
        {ctruc }
        {ignorable_spaces_after_command: }
        {cbidule}
      *@center C1 l42
      |INFO
      |spaces_before_argument:
       |{ }
       *line_arg C2
       |INFO
       |spaces_after_argument:
        |{\\n}
        {ignorable_spaces_after_command: }
        {cstruc}
   *@end C1 l43
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{multitable}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {multitable}
  {empty_line:\\n}
  *@center C1 l45
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C2
    {before the table }
    *14 @table C1 l45
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |command_as_argument:[E15]
     *arguments_line C1
      *block_line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       *15 @asis l45
  {ignorable_spaces_after_command: }
  *paragraph C2
   {item in center\\n}
   {Line in center\\n}
  {ignorable_spaces_after_command: }
  *paragraph C1
   {second item\\n}
  {empty_line:\\n}
';


$result_texis{'center'} = '@center @indent @titlefont{in titlefont} @anchor{in anchor}@footnote{footnote}

@center center @cindex cindex

@center @quotation
in quotation

@center center @center second center

@center @code{in code in center
}


@center @code{in code in center }@center center in code in center



@code{}@center in center in code

@table @asis
@center centered line with item  first item on center line
@end table

@table @emph
@item item
@center centered line with item  second item on center line
@end table

Empty double center:
@center @center

@center @samp{something }@center end of samp

@center after first center @samp{}@center after second center

End of samp

@multitable {AAA}  {BBB}
@item truc @tab bidule
@center  ctruc  cbidule
@center  cstruc
@end multitable

@center before the table @table @asis
 item in center
Line in center
 second item

';


$result_texts{'center'} = 'in titlefont 

center 


in quotation

center second center

in code in center



in code in center center in code in center



in center in code

centered line with item first item on center line

item
centered line with item second item on center line

Empty double center:


something end of samp

after first center after second center

End of samp

truc bidule
ctruc cbidule
cstruc

before the table 
item in center
Line in center
second item

';

$result_errors{'center'} = [
  {
    'error_line' => 'warning: @indent should not appear in @center
',
    'line_nr' => 1,
    'text' => '@indent should not appear in @center',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @cindex should only appear at the beginning of a line
',
    'line_nr' => 3,
    'text' => '@cindex should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @cindex should not appear in @center
',
    'line_nr' => 3,
    'text' => '@cindex should not appear in @center',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'line_nr' => 3,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @quotation should only appear at the beginning of a line
',
    'line_nr' => 5,
    'text' => '@quotation should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @quotation should not appear in @center
',
    'line_nr' => 5,
    'text' => '@quotation should not appear in @center',
    'type' => 'warning'
  },
  {
    'error_line' => 'no matching `@end quotation\'
',
    'line_nr' => 5,
    'text' => 'no matching `@end quotation\'',
    'type' => 'error'
  },
  {
    'error_line' => 'unmatched `@end quotation\'
',
    'line_nr' => 7,
    'text' => 'unmatched `@end quotation\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @center should only appear at the beginning of a line
',
    'line_nr' => 9,
    'text' => '@center should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @center should not appear in @center
',
    'line_nr' => 9,
    'text' => '@center should not appear in @center',
    'type' => 'warning'
  },
  {
    'error_line' => '@code missing closing brace
',
    'line_nr' => 11,
    'text' => '@code missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 13,
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @center should only appear at the beginning of a line
',
    'line_nr' => 15,
    'text' => '@center should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => '@code missing closing brace
',
    'line_nr' => 15,
    'text' => '@code missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @center should not appear in @center
',
    'line_nr' => 15,
    'text' => '@center should not appear in @center',
    'type' => 'warning'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 17,
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @center should only appear at the beginning of a line
',
    'line_nr' => 19,
    'text' => '@center should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => '@code missing closing brace
',
    'line_nr' => 19,
    'text' => '@code missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 19,
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @item should not appear in @center
',
    'line_nr' => 22,
    'text' => '@item should not appear in @center',
    'type' => 'warning'
  },
  {
    'error_line' => '@item outside of table or list
',
    'line_nr' => 22,
    'text' => '@item outside of table or list',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @table has text but no @item
',
    'line_nr' => 21,
    'text' => '@table has text but no @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @item should not appear in @center
',
    'line_nr' => 27,
    'text' => '@item should not appear in @center',
    'type' => 'warning'
  },
  {
    'error_line' => '@item outside of table or list
',
    'line_nr' => 27,
    'text' => '@item outside of table or list',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @center should only appear at the beginning of a line
',
    'line_nr' => 31,
    'text' => '@center should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @center should not appear in @center
',
    'line_nr' => 31,
    'text' => '@center should not appear in @center',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @center missing argument
',
    'line_nr' => 31,
    'text' => '@center missing argument',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @center should only appear at the beginning of a line
',
    'line_nr' => 33,
    'text' => '@center should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => '@samp missing closing brace
',
    'line_nr' => 33,
    'text' => '@samp missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @center should not appear in @center
',
    'line_nr' => 33,
    'text' => '@center should not appear in @center',
    'type' => 'warning'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 33,
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @center should only appear at the beginning of a line
',
    'line_nr' => 35,
    'text' => '@center should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => '@samp missing closing brace
',
    'line_nr' => 35,
    'text' => '@samp missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @center should not appear in @center
',
    'line_nr' => 35,
    'text' => '@center should not appear in @center',
    'type' => 'warning'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 37,
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @item should not appear in @center
',
    'line_nr' => 41,
    'text' => '@item should not appear in @center',
    'type' => 'warning'
  },
  {
    'error_line' => '@item outside of table or list
',
    'line_nr' => 41,
    'text' => '@item outside of table or list',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @tab should not appear in @center
',
    'line_nr' => 41,
    'text' => '@tab should not appear in @center',
    'type' => 'warning'
  },
  {
    'error_line' => 'ignoring @tab outside of multitable
',
    'line_nr' => 41,
    'text' => 'ignoring @tab outside of multitable',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @item should not appear in @center
',
    'line_nr' => 42,
    'text' => '@item should not appear in @center',
    'type' => 'warning'
  },
  {
    'error_line' => '@item outside of table or list
',
    'line_nr' => 42,
    'text' => '@item outside of table or list',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @table should only appear at the beginning of a line
',
    'line_nr' => 45,
    'text' => '@table should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @table should not appear in @center
',
    'line_nr' => 45,
    'text' => '@table should not appear in @center',
    'type' => 'warning'
  },
  {
    'error_line' => 'no matching `@end table\'
',
    'line_nr' => 45,
    'text' => 'no matching `@end table\'',
    'type' => 'error'
  },
  {
    'error_line' => '@item outside of table or list
',
    'line_nr' => 46,
    'text' => '@item outside of table or list',
    'type' => 'error'
  },
  {
    'error_line' => '@item outside of table or list
',
    'line_nr' => 48,
    'text' => '@item outside of table or list',
    'type' => 'error'
  },
  {
    'error_line' => 'unmatched `@end table\'
',
    'line_nr' => 49,
    'text' => 'unmatched `@end table\'',
    'type' => 'error'
  }
];


$result_indices_sort_strings{'center'} = 'cp:
 cindex
';

1;
