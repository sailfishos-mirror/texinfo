use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'value_node_directions'} = '*document_root C7
 *before_node_section C2
  *@set C2
  |INFO
  |arg_line:{ a--foo bar\\n}
   {rawline_arg:a--foo}
   {rawline_arg:bar}
  {empty_line:\\n}
 *0 @node C1 l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |node_directions:D[next->E2|prev->MISSING: (line_arg)[C3]|up->MISSING: (line_arg)[C3]]
 |normalized:{Top}
  *arguments_line C4
   *line_arg C1
    {Top}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
    |>SOURCEMARKS
    |>value_expansion<start;1><p:1>{bar}
     |>*@value C1
      |>*brace_container C1
       |>{a--foo}
   |EXTRA
   |node_content:{bar}
   |normalized:{bar}
    {bar}
    >SOURCEMARKS
    >value_expansion<end;1><p:3>
   *line_arg C3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
 *1 @top C3 l4 {Var bar}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E3|E5]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Var bar}
    >SOURCEMARKS
    >value_expansion<start;2><p:4>{bar}
     >*@value C1
      >*brace_container C1
       >{a--foo}
    >value_expansion<end;2><p:7>
  *paragraph C1
   {bar\\n}
   >SOURCEMARKS
   >value_expansion<start;3>{bar}
    >*@value C1
     >*brace_container C1
      >{a--foo}
   >value_expansion<end;3><p:3>
  {empty_line:\\n}
 *2 @node C1 l7 {bar}
 |INFO
 |spaces_before_argument:
  |{ }
  |>SOURCEMARKS
  |>value_expansion<start;4><p:1>{bar}
   |>*@value C1
    |>*brace_container C1
     |>{a--foo}
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[next->E4|prev->E0|up->MISSING: (line_arg)[C3]]
 |normalized:{bar}
  *arguments_line C4
   *line_arg C1
    {bar}
    >SOURCEMARKS
    >value_expansion<end;4><p:3>
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{BarFoo}
   |normalized:{BarFoo}
    {BarFoo}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
 *3 @chapter C2 l8 {BarFoo}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_directions:D[next->E5|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E5|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {BarFoo}
  {empty_line:\\n}
 *4 @node C1 l10 {BarFoo}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |associated_title_command:[E5]
 |is_target:{1}
 |node_directions:D[prev->E2|up->MISSING: (line_arg)[C3]]
 |normalized:{BarFoo}
  *arguments_line C4
   *line_arg C1
    {BarFoo}
   *line_arg
   |INFO
   |spaces_before_argument:
    |{ }
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
    |>SOURCEMARKS
    |>value_expansion<start;5><p:1>{bar}
     |>*@value C1
      |>*brace_container C1
       |>{a--foo}
   |EXTRA
   |node_content:{bar}
   |normalized:{bar}
    {bar}
    >SOURCEMARKS
    >value_expansion<end;5><p:3>
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
 *5 @chapter C1 l11 {bar}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E4]
 |associated_node:[E4]
 |section_directions:D[prev->E3|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {bar}
';


$result_texis{'value_node_directions'} = '@set a--foo bar

@node Top, bar, (dir), (dir)
@top Var bar
bar

@node bar, BarFoo, Top, (dir)
@chapter BarFoo

@node BarFoo, , bar, (dir)
@chapter bar
';


$result_texts{'value_node_directions'} = '
Var bar
*******
bar

1 BarFoo
********

2 bar
*****
';

$result_errors{'value_node_directions'} = [
  {
    'error_line' => 'warning: node `bar\' not in menu
',
    'line_nr' => 7,
    'text' => 'node `bar\' not in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `BarFoo\' not in menu
',
    'line_nr' => 10,
    'text' => 'node `BarFoo\' not in menu',
    'type' => 'warning'
  }
];


1;
