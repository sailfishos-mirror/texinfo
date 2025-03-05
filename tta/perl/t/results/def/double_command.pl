use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'double_command'} = '*document_root C1
 *before_node_section C3
  *0 @deffn C3 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l1
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{plot}
   |index_entry:I{fn,2}
   |original_def_cmdname:{deffn}
    *block_line_arg C18
     *def_category C1
      *def_line_arg C1
       {func}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {plot}
     {spaces: }
     {delimiter:(}
     *def_arg C1
      *def_line_arg C1
       {a}
     {delimiter:,}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {b}
     {delimiter:,}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {c}
     {delimiter:,}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {...}
     {delimiter:)}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *@deffnx C1 l1
       |INFO
       |spaces_before_argument:
        |{ }
       |EXTRA
       |def_command:{deffn}
       |def_index_element:
        |*def_name C1
         |*def_line_arg C1
          |{plot2}
       |index_entry:I{fn,1}
       |not_after_command:{1}
       |original_def_cmdname:{deffnx}
        *line_arg C19
        |INFO
        |spaces_after_argument:
         |{\\n}
         *def_category C1
          *def_line_arg C1
           {func}
         {spaces: }
         *def_name C1
          *def_line_arg C1
           {plot2}
         {spaces: }
         {delimiter:(}
         *def_arg C1
          *def_line_arg C1
           {a}
         {delimiter:,}
         {spaces: }
         *def_arg C1
          *def_line_arg C1
           {b}
         {delimiter:,}
         {spaces: }
         *def_arg C1
          *def_line_arg C1
           {c}
         {delimiter:,}
         {spaces: }
         *def_arg C1
          *def_line_arg C1
           {...}
         {delimiter:,}
         {spaces: }
         *def_arg C1
          *def_line_arg C1
           {d}
         {delimiter:)}
   *def_item C1
    *paragraph C1
     {aaa\\n}
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deffn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deffn}
  {empty_line:\\n}
  *1 @deffn C3 l5
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l5
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{aaaa}
   |index_entry:I{fn,3}
   |original_def_cmdname:{deffn}
    *block_line_arg C7
     *def_category C1
      *def_line_arg C1
       {func}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {aaaa}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {args}
     {spaces:  }
     *def_arg C1
      *def_line_arg C1
       *2 @defvr C1 l5
       |INFO
       |spaces_before_argument:
        |{ }
        *def_line C1 l5
        |EXTRA
        |def_command:{defvr}
        |def_index_element:
         |*def_name C1
          |*def_line_arg C1
           |{d--efvr_name}
        |index_entry:I{vr,1}
        |original_def_cmdname:{defvr}
         *block_line_arg C3
         |INFO
         |spaces_after_argument:
          |{\\n}
          *def_category C1
           *def_line_arg C1
            {c--ategory}
          {spaces: }
          *def_name C1
           *def_line_arg C1
            {d--efvr_name}
   *def_item C1
    *paragraph C1
     {bbb\\n}
   *@end C1 l7
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deffn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deffn}
';


$result_texis{'double_command'} = '@deffn func plot (a, b, c, ...) @deffnx func plot2 (a, b, c, ..., d)
aaa
@end deffn

@deffn func aaaa args  @defvr c--ategory d--efvr_name
bbb
@end deffn
';


$result_texts{'double_command'} = 'func: plot (a, b, c, ...) func: plot2 (a, b, c, ..., d)

aaa

func: aaaa args  c--ategory: d--efvr_name

bbb
';

$result_errors{'double_command'} = [
  {
    'error_line' => 'warning: @deffnx should only appear at the beginning of a line
',
    'line_nr' => 1,
    'text' => '@deffnx should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @deffnx should not appear on @deffn line
',
    'line_nr' => 1,
    'text' => '@deffnx should not appear on @deffn line',
    'type' => 'warning'
  },
  {
    'error_line' => 'must be after `@deffn\' to use `@deffnx\'
',
    'line_nr' => 1,
    'text' => 'must be after `@deffn\' to use `@deffnx\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 1,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 1,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @defvr should only appear at the beginning of a line
',
    'line_nr' => 5,
    'text' => '@defvr should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @defvr should not appear on @deffn line
',
    'line_nr' => 5,
    'text' => '@defvr should not appear on @deffn line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `vr\' outside of any node
',
    'line_nr' => 5,
    'text' => 'entry for index `vr\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'no matching `@end defvr\'
',
    'line_nr' => 5,
    'text' => 'no matching `@end defvr\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 5,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'double_command'} = 'fn:
 aaaa
 plot
 plot2
vr:
 d--efvr_name
';

1;
