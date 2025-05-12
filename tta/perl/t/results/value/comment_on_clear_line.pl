use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'comment_on_clear_line'} = '*document_root C1
 *before_node_section C11
  *@set C2
  |INFO
  |arg_line:{ x\\n}
   {rawline_arg:x}
   {rawline_arg:}
  *@set C2
  |INFO
  |arg_line:{ y\\n}
   {rawline_arg:y}
   {rawline_arg:}
  *@set C2
  |INFO
  |arg_line:{ z g\\n}
   {rawline_arg:z}
   {rawline_arg:g}
  *@set C2
  |INFO
  |arg_line:{ t a vv @comment@ggg\\n}
   {rawline_arg:t}
   {rawline_arg:a vv}
  {empty_line:\\n}
  *@clear C1
  |INFO
  |arg_line:{ x@c\\n}
   {rawline_arg:x}
  *@clear C1
  |INFO
  |arg_line:{ y @c\\n}
   {rawline_arg:y}
  *@clear
  |INFO
  |arg_line:{ z g@c\\n}
  *@clear
  |INFO
  |arg_line:{ t a vv @comment@ggg\\n}
  {empty_line:\\n}
  *paragraph C5
   {!}
   *@value C1
    *brace_container C1
     {x}
   {!, !}
   *@value C1
    *brace_container C1
     {y}
   {!, !g!, !a vv!\\n}
   >SOURCEMARKS
   >value_expansion<start;1><p:4>{g}
    >*@value C1
     >*brace_container C1
      >{z}
   >value_expansion<end;1><p:5>
   >value_expansion<start;2><p:9>{a vv}
    >*@value C1
     >*brace_container C1
      >{t}
   >value_expansion<end;2><p:13>
';


$result_texis{'comment_on_clear_line'} = '@set x
@set y
@set z g
@set t a vv @comment@ggg

@clear x@c
@clear y @c
@clear z g@c
@clear t a vv @comment@ggg

!@value{x}!, !@value{y}!, !g!, !a vv!
';


$result_texts{'comment_on_clear_line'} = '

!x!, !y!, !g!, !a vv!
';

$result_errors{'comment_on_clear_line'} = [
  {
    'error_line' => 'bad name for @clear
',
    'line_nr' => 8,
    'text' => 'bad name for @clear',
    'type' => 'error'
  },
  {
    'error_line' => 'bad name for @clear
',
    'line_nr' => 9,
    'text' => 'bad name for @clear',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: undefined flag: x
',
    'line_nr' => 11,
    'text' => 'undefined flag: x',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: undefined flag: y
',
    'line_nr' => 11,
    'text' => 'undefined flag: y',
    'type' => 'warning'
  }
];


$result_nodes_list{'comment_on_clear_line'} = '';

$result_sections_list{'comment_on_clear_line'} = '';

1;
