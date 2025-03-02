use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'ref_in_def'} = '*document_root C2
 *before_node_section C1
  {empty_line:\\n}
 *0 @node C6 l2
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{first}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
  {empty_line:\\n}
  *1 @deffn C4 l4
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l4
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |*13 @ref C1
       |*brace_arg C1
       ||EXTRA
       ||node_content:{myanchor}
        |{myanchor}
   |element_node:[E0]
   |index_entry:I{fn,1}
   |original_def_cmdname:{deffn}
    *block_line_arg C9
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       *2 @ref C1 l4
        *brace_arg C1
        |EXTRA
        |node_content:{myanchor}
        |normalized:{myanchor}
         {myanchor}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *3 @ref C1 l4
        *brace_arg C1
        |EXTRA
        |node_content:{myanchor}
        |normalized:{myanchor}
         {myanchor}
     {spaces: }
     *def_arg C1
      *bracketed_arg C1 l4
       *4 @pxref C1 l4
        *brace_arg C1
        |EXTRA
        |node_content:{myanchor}
        |normalized:{myanchor}
         {myanchor}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *5 @pxref C1 l4
        *brace_arg C1
        |EXTRA
        |node_content:{myanchor}
        |normalized:{myanchor}
         {myanchor}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *6 @pxref C1 l4
        *brace_arg C1
        |EXTRA
        |node_content:{myanchor}
        |normalized:{myanchor}
         {myanchor}
   *@deffnx C1 l5
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |*14 @ref C1
       |*brace_arg C1
       ||EXTRA
       ||node_content:{myanchor}
        |{myanchor}
   |element_node:[E0]
   |index_entry:I{fn,2}
   |original_def_cmdname:{deffnx}
    *line_arg C9
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       *7 @ref C1 l5
        *brace_arg C1
        |EXTRA
        |node_content:{myanchor}
        |normalized:{myanchor}
         {myanchor}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *8 @ref C1 l5
        *brace_arg C1
        |EXTRA
        |node_content:{myanchor}
        |normalized:{myanchor}
         {myanchor}
     {spaces: }
     *def_arg C1
      *bracketed_arg C1 l5
       *9 @pxref C1 l5
        *brace_arg C1
        |EXTRA
        |node_content:{myanchor}
        |normalized:{myanchor}
         {myanchor}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *10 @pxref C1 l5
        *brace_arg C1
        |EXTRA
        |node_content:{myanchor}
        |normalized:{myanchor}
         {myanchor}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *11 @pxref C1 l5
        *brace_arg C1
        |EXTRA
        |node_content:{myanchor}
        |normalized:{myanchor}
         {myanchor}
   *def_item C1
    *paragraph C1
     {T\\n}
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
  {empty_line:\\n}
  *12 @anchor C1 l9
  |EXTRA
  |is_target:{1}
  |normalized:{myanchor}
   *brace_arg C1
    {myanchor}
  {spaces_after_close_brace:\\n}
';


$result_texis{'ref_in_def'} = '
@node first

@deffn @ref{myanchor} @ref{myanchor} {@pxref{myanchor}} @pxref{myanchor} @pxref{myanchor}
@deffnx @ref{myanchor} @ref{myanchor} {@pxref{myanchor}} @pxref{myanchor} @pxref{myanchor}
T
@end deffn

@anchor{myanchor}
';


$result_texts{'ref_in_def'} = '

myanchor: myanchor myanchor myanchor myanchor
myanchor: myanchor myanchor myanchor myanchor
T

';

$result_nodes{'ref_in_def'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'first'
    }
  }
];

$result_menus{'ref_in_def'} = [
  {
    'extra' => {
      'normalized' => 'first'
    }
  }
];

$result_errors{'ref_in_def'} = [];


$result_floats{'ref_in_def'} = {};


$result_indices_sort_strings{'ref_in_def'} = {
  'fn' => [
    'myanchor',
    'myanchor'
  ]
};



$result_converted{'plaintext'}->{'ref_in_def'} = ' -- myanchor: myanchor see myanchor see myanchor see myanchor
 -- myanchor: myanchor see myanchor see myanchor see myanchor
     T

';

1;
