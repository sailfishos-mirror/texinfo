use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'comment_on_set_line'} = '*document_root C1
 *before_node_section C6
  *@set C2
  |INFO
  |arg_line:{ x@c\\n}
   {rawline_arg:x}
   {rawline_arg:}
  *@set C2
  |INFO
  |arg_line:{ y @c\\n}
   {rawline_arg:y}
   {rawline_arg:}
  *@set C2
  |INFO
  |arg_line:{ z g@c\\n}
   {rawline_arg:z}
   {rawline_arg:g}
  *@set C2
  |INFO
  |arg_line:{ t a vv @comment@ggg\\n}
   {rawline_arg:t}
   {rawline_arg:a vv}
  {empty_line:\\n}
  *paragraph C1
   {!!, !!, !g!, !a vv!\\n}
   >SOURCEMARKS
   >value_expansion<start;1><p:1>{}
    >*@value C1
     >*brace_container C1
      >{x}
   >value_expansion<end;1><p:1>
   >value_expansion<start;2><p:5>{}
    >*@value C1
     >*brace_container C1
      >{y}
   >value_expansion<end;2><p:5>
   >value_expansion<start;3><p:9>{g}
    >*@value C1
     >*brace_container C1
      >{z}
   >value_expansion<end;3><p:10>
   >value_expansion<start;4><p:14>{a vv}
    >*@value C1
     >*brace_container C1
      >{t}
   >value_expansion<end;4><p:18>
';


$result_texis{'comment_on_set_line'} = '@set x@c
@set y @c
@set z g@c
@set t a vv @comment@ggg

!!, !!, !g!, !a vv!
';


$result_texts{'comment_on_set_line'} = '
!!, !!, !g!, !a vv!
';

$result_errors{'comment_on_set_line'} = [];


1;
