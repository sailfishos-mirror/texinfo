use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'begin_like_comment_on_set_line'} = '*document_root C1
 *before_node_section C4
  *@set
  |INFO
  |arg_line:{ x@come with me\\n}
  *@set C2
  |INFO
  |arg_line:{ y some thing @commentary is it\\n}
   {rawline_arg:y}
   {rawline_arg:some thing @commentary is it}
  {empty_line:\\n}
  *paragraph C3
   {!}
   *0 @value C1
    *brace_container C1
     {x}
   {! !some thing  is it!\\n}
   >SOURCEMARKS
   >value_expansion<start;1><p:3>{some thing @commentary is it}
    >*@value C1
     >*brace_container C1
      >{y}
   >value_expansion<end;1><p:20>
';


$result_texis{'begin_like_comment_on_set_line'} = '@set x@come with me
@set y some thing @commentary is it

!@value{x}! !some thing  is it!
';


$result_texts{'begin_like_comment_on_set_line'} = '
!x! !some thing  is it!
';

$result_errors{'begin_like_comment_on_set_line'} = [
  {
    'error_line' => 'bad name for @set
',
    'line_nr' => 1,
    'text' => 'bad name for @set',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: undefined flag: x
',
    'line_nr' => 4,
    'text' => 'undefined flag: x',
    'type' => 'warning'
  },
  {
    'error_line' => 'unknown command `commentary\'
',
    'line_nr' => 4,
    'text' => 'unknown command `commentary\'',
    'type' => 'error'
  }
];


$result_floats{'begin_like_comment_on_set_line'} = {};


1;
