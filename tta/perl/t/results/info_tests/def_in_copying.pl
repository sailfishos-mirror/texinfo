use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'def_in_copying'} = '*document_root C3
 *before_node_section C2
  *0 @macro C6 l1
  |EXTRA
  |macro_name:{mymacro}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: mymacro\\n}
   {raw:@deffn aa bb cc\\n}
   {raw:@deffnx aax bbx ccx\\n}
   {raw:deffnx lines\\n}
   {raw:@end deffn\\n}
   *@end C1 l6
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{macro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {macro}
  {empty_line:\\n}
 *1 @node C1 l8 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E2]
 |associated_title_command:[E2]
 |is_target:{1}
 |isindex:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *2 @top C8 l9 {Test for definition commands}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E1]
 |associated_node:[E1]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E2]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Test for definition commands}
  {empty_line:\\n}
  *3 @copying C4 l11
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C1
    {In copying\\n}
    >SOURCEMARKS
    >macro_expansion<start;1><p:11>
     >*macro_call C1
     >|INFO
     >|command_name:{mymacro}
      >*brace_arg
   *4 @deffn C4 l13:@mymacro
   |INFO
   |spaces_before_argument:
    |{ }
    *def_line C1 l13:@mymacro
    |EXTRA
    |def_command:{deffn}
    |def_index_element:
     |*def_name C1
      |*def_line_arg C1
       |{bb}
    |element_region:{copying}
    |index_entry:I{fn,1}
    |original_def_cmdname:{deffn}
     *block_line_arg C5
     |INFO
     |spaces_after_argument:
      |{\\n}
      *def_category C1
       *def_line_arg C1
        {aa}
      {spaces: }
      *def_name C1
       *def_line_arg C1
        {bb}
      {spaces: }
      *def_arg C1
       *def_line_arg C1
        {cc}
    *@deffnx C1 l13:@mymacro
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |def_command:{deffn}
    |def_index_element:
     |*def_name C1
      |*def_line_arg C1
       |{bbx}
    |element_region:{copying}
    |index_entry:I{fn,2}
    |original_def_cmdname:{deffnx}
     *line_arg C5
     |INFO
     |spaces_after_argument:
      |{\\n}
      *def_category C1
       *def_line_arg C1
        {aax}
      {spaces: }
      *def_name C1
       *def_line_arg C1
        {bbx}
      {spaces: }
      *def_arg C1
       *def_line_arg C1
        {ccx}
    *def_item C1
     *paragraph C1
      {deffnx lines\\n}
    *@end C1 l13:@mymacro
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
      >SOURCEMARKS
      >macro_expansion<end;1><p:5>
   *@end C1 l14
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{copying}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {copying}
  {empty_line:\\n}
  *paragraph C1
   {In text\\n}
   >SOURCEMARKS
   >macro_expansion<start;2><p:8>
    >*macro_call C1
    >|INFO
    >|command_name:{mymacro}
     >*brace_arg
  *5 @deffn C4 l17:@mymacro
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l17:@mymacro
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{bb}
   |element_node:[E1]
   |index_entry:I{fn,3}
   |original_def_cmdname:{deffn}
    *block_line_arg C5
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {aa}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {bb}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {cc}
   *@deffnx C1 l17:@mymacro
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{bbx}
   |element_node:[E1]
   |index_entry:I{fn,4}
   |original_def_cmdname:{deffnx}
    *line_arg C5
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {aax}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {bbx}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {ccx}
   *def_item C1
    *paragraph C1
     {deffnx lines\\n}
   *@end C1 l17:@mymacro
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
     >SOURCEMARKS
     >macro_expansion<end;2><p:5>
  {empty_line:\\n}
  *@printindex C1 l19
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
';


$result_texis{'def_in_copying'} = '@macro mymacro
@deffn aa bb cc
@deffnx aax bbx ccx
deffnx lines
@end deffn
@end macro

@node Top
@top Test for definition commands

@copying
In copying
@deffn aa bb cc
@deffnx aax bbx ccx
deffnx lines
@end deffn
@end copying

In text
@deffn aa bb cc
@deffnx aax bbx ccx
deffnx lines
@end deffn

@printindex fn
';


$result_texts{'def_in_copying'} = '
Test for definition commands
****************************


In text
aa: bb cc
aax: bbx ccx
deffnx lines

';

$result_errors{'def_in_copying'} = [];


$result_indices_sort_strings{'def_in_copying'} = 'fn:
 bb
 bb
 bbx
 bbx
';


$result_converted{'info'}->{'def_in_copying'} = 'This is , produced from .

In copying
 -- aa: bb cc
 -- aax: bbx ccx
     deffnx lines


File: ,  Node: Top,  Up: (dir)

Test for definition commands
****************************

In text
 -- aa: bb cc
 -- aax: bbx ccx
     deffnx lines

 [index ]
* Menu:

* bb:                                    Top.                   (line 7)
* bbx:                                   Top.                   (line 8)


Tag Table:
Node: Top88

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
