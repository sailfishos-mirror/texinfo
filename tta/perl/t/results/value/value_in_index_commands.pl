use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'value_in_index_commands'} = '*document_root C3
 *before_node_section C19
  *@set C2
  |INFO
  |arg_line:{ cp cp\\n}
   {rawline_arg:cp}
   {rawline_arg:cp}
  *@set C2
  |INFO
  |arg_line:{ fn fn\\n}
   {rawline_arg:fn}
   {rawline_arg:fn}
  *@set C2
  |INFO
  |arg_line:{ syncodeindex_command @syncodeindex\\n}
   {rawline_arg:syncodeindex_command}
   {rawline_arg:@syncodeindex}
  {empty_line:\\n}
  *@syncodeindex C1 l5
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>value_expansion<start;1><p:1>{cp}
    |>*@value C1
     |>*brace_container C1
      |>{cp}
  |EXTRA
  |misc_args:A{cp|fn}
  >SOURCEMARKS
  >value_expansion<start;3>{@syncodeindex}
   >*@value C1
    >*brace_container C1
     >{syncodeindex_command}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp fn}
    >SOURCEMARKS
    >value_expansion<end;1><p:2>
    >value_expansion<start;2><p:3>{fn}
     >*@value C1
      >*brace_container C1
       >{fn}
    >value_expansion<end;2><p:5>
  *@syncodeindex C1 l6
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>value_expansion<end;3>
  |EXTRA
  |misc_args:A{cp|fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp fn}
  {empty_line:\\n}
  *@set C2
  |INFO
  |arg_line:{ truc truc\\n}
   {rawline_arg:truc}
   {rawline_arg:truc}
  {empty_line:\\n}
  *paragraph C3
   {definedx truc\\n}
   *@defindex C1 l11
   |INFO
   |spaces_before_argument:
    |{ }
    |>SOURCEMARKS
    |>value_expansion<start;4><p:1>{truc}
     |>*@value C1
      |>*brace_container C1
       |>{truc}
   |EXTRA
   |misc_args:A{truc}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {truc}
     >SOURCEMARKS
     >value_expansion<end;4><p:4>
   {after\\n}
  {empty_line:\\n}
  *@set C2
  |INFO
  |arg_line:{ trucindex_command @trucindex\\n}
   {rawline_arg:trucindex_command}
   {rawline_arg:@trucindex}
  {empty_line:\\n}
  *@set C2
  |INFO
  |arg_line:{ codeidx codeidx\\n}
   {rawline_arg:codeidx}
   {rawline_arg:codeidx}
  {empty_line:\\n}
  *@defcodeindex C1 l18
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>value_expansion<start;5><p:1>{codeidx}
    |>*@value C1
     |>*brace_container C1
      |>{codeidx}
  |EXTRA
  |misc_args:A{codeidx}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {codeidx}
    >SOURCEMARKS
    >value_expansion<end;5><p:7>
  {empty_line:\\n}
  *@set C2
  |INFO
  |arg_line:{ defcodeindex_entry a @var{index entry} t@\'e @^{@dotless{i}}\\n}
   {rawline_arg:defcodeindex_entry}
   {rawline_arg:a @var{index entry} t@\'e @^{@dotless{i}}}
  {empty_line:\\n}
 *0 @node C1 l22 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E1]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @node C14 l23 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  >SOURCEMARKS
  >value_expansion<start;6><p:1>{@trucindex}
   >*@value C1
    >*brace_container C1
     >{trucindex_command}
  *2 index_entry_command@trucindex C1 l25
  |INFO
  |command_name:{trucindex}
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>value_expansion<end;6>
  |EXTRA
  |element_node:[E1]
  |index_entry:I{truc,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {index truc}
  {empty_line:\\n}
  *3 index_entry_command@codeidxindex C1 l27
  |INFO
  |command_name:{codeidxindex}
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>value_expansion<start;7><p:1>{a @var{index entry} t@\'e @^{@dotless{i}}}
    |>*@value C1
     |>*brace_container C1
      |>{defcodeindex_entry}
  |EXTRA
  |element_node:[E1]
  |index_entry:I{codeidx,1}
   *line_arg C6
   |INFO
   |spaces_after_argument:
    |{\\n}
    {a }
    *4 @var C1 l27
     *brace_container C1
      {index entry}
    { t}
    *5 @\' C1 l27
     *following_arg C1
      {e}
    { }
    *6 @^ C1 l27
    >SOURCEMARKS
    >value_expansion<end;7>
     *brace_container C1
      *7 @dotless C1 l27
       *brace_container C1
        {i}
  {empty_line:\\n}
  *8 index_entry_command@kindex C1 l29
  |INFO
  |command_name:{kindex}
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>value_expansion<start;8><p:1>{truc}
    |>*@value C1
     |>*brace_container C1
      |>{truc}
  |EXTRA
  |element_node:[E1]
  |index_entry:I{ky,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {truc kindex}
    >SOURCEMARKS
    >value_expansion<end;8><p:4>
  *9 index_entry_command@pindex C1 l30
  |INFO
  |command_name:{pindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E1]
  |index_entry:I{pg,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {pindex codeidx}
    >SOURCEMARKS
    >value_expansion<start;9><p:7>{codeidx}
     >*@value C1
      >*brace_container C1
       >{codeidx}
    >value_expansion<end;9><p:14>
  {empty_line:\\n}
  *paragraph C1
   {value truc\\n}
  *@printindex C1 l33
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>value_expansion<start;10><p:1>{truc}
    |>*@value C1
     |>*brace_container C1
      |>{truc}
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{truc}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {truc}
    >SOURCEMARKS
    >value_expansion<end;10><p:4>
  {empty_line:\\n}
  *paragraph C1
   {value cp\\n}
  *@printindex C1 l36
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>value_expansion<start;11><p:1>{cp}
    |>*@value C1
     |>*brace_container C1
      |>{cp}
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
    >SOURCEMARKS
    >value_expansion<end;11><p:2>
';


$result_texis{'value_in_index_commands'} = '@set cp cp
@set fn fn
@set syncodeindex_command @syncodeindex

@syncodeindex cp fn
@syncodeindex cp fn

@set truc truc

definedx truc
@defindex truc
after

@set trucindex_command @trucindex

@set codeidx codeidx

@defcodeindex codeidx

@set defcodeindex_entry a @var{index entry} t@\'e @^{@dotless{i}}

@node Top
@node chap

@trucindex index truc

@codeidxindex a @var{index entry} t@\'e @^{@dotless{i}}

@kindex truc kindex
@pindex pindex codeidx

value truc
@printindex truc

value cp
@printindex cp
';


$result_texts{'value_in_index_commands'} = '


definedx truc
after









value truc

value cp
';

$result_errors{'value_in_index_commands'} = [
  {
    'error_line' => 'warning: printing an index `cp\' merged in another one, `fn\'
',
    'line_nr' => 36,
    'text' => 'printing an index `cp\' merged in another one, `fn\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 23,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_indices{'value_in_index_commands'} = 'codeidx C
cp C ->fn
fn C
ky C
pg C
tp C
truc
vr C
';

$result_indices_sort_strings{'value_in_index_commands'} = 'codeidx:
 a index entry té î
ky:
 truc kindex
pg:
 pindex codeidx
truc:
 index truc
';

1;
