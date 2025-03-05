use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'macro_alias_definfoenclose_defindex'} = '*document_root C5
 *before_node_section
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3]
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
    {top}
  {empty_line:\\n}
 *2 @node C1 l4 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C42 l5 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *4 @macro C3 l7
  |EXTRA
  |macro_name:{phooindex}
  |misc_args:A{arg}
   *arguments_line C1
    {macro_line: phooindex {arg}\\n}
   {raw:||\\arg\\||\\n}
   *@end C1 l9
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
  *paragraph C1
   {||maa||\\n}
   >SOURCEMARKS
   >macro_expansion<start;1>
    >*macro_call C1
    >|INFO
    >|command_name:{phooindex}
     >*brace_arg C1
      >{maa}
   >macro_expansion<end;1><p:7>
  {empty_line:\\n}
  *@definfoenclose C1 l12
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{phooindex|;|:}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {phooindex,;,:}
  *paragraph C2
   *5 definfoenclose_command@phooindex C1 l13
   |INFO
   |command_name:{phooindex}
   |EXTRA
   |begin:{;}
   |end:{:}
    *brace_container C1
     {dbb}
   {\\n}
  {empty_line:\\n}
  *@alias C1 l15
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{phooindex|strong}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {phooindex = strong}
  *paragraph C2
   *6 @strong C1 l16
   |INFO
   |alias_of:{phooindex}
    *brace_container C1
     {acc}
   {\\n}
  {empty_line:\\n}
  *@defindex C1 l18
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{phoo}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {phoo}
  *7 index_entry_command@phooindex C1 l19
  |INFO
  |command_name:{phooindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{phoo,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {idd}
  {empty_line:\\n}
  *@definfoenclose C1 l21
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{phooindex|;|:}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {phooindex,;,:}
  *paragraph C2
   *8 definfoenclose_command@phooindex C1 l22
   |INFO
   |command_name:{phooindex}
   |EXTRA
   |begin:{;}
   |end:{:}
    *brace_container C1
     {dee}
   {\\n}
  {empty_line:\\n}
  *9 @macro C3 l24
  |EXTRA
  |macro_name:{phooindex}
  |misc_args:A{arg}
   *arguments_line C1
    {macro_line: phooindex {arg}\\n}
   {raw:!!\\arg\\!!\\n}
   *@end C1 l26
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
  *paragraph C1
   {!!mff!!\\n}
   >SOURCEMARKS
   >macro_expansion<start;2>
    >*macro_call_line C1
    >|INFO
    >|command_name:{phooindex}
    >|spaces_before_argument:
     >|{ }
     >*line_arg C1
      >{mff}
   >macro_expansion<end;2><p:7>
  {empty_line:\\n}
  *@defindex C1 l29
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{phoo}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {phoo}
  *10 index_entry_command@phooindex C1 l30
  |INFO
  |command_name:{phooindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{phoo,2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {igg}
  {empty_line:\\n}
  *11 @macro C3 l32
  |EXTRA
  |macro_name:{phooindex}
  |misc_args:A{arg}
   *arguments_line C1
    {macro_line: phooindex {arg}\\n}
   {raw:!!\\arg\\!!\\n}
   *@end C1 l34
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
  *paragraph C1
   {!!mhh!!\\n}
   >SOURCEMARKS
   >macro_expansion<start;3>
    >*macro_call_line C1
    >|INFO
    >|command_name:{phooindex}
    >|spaces_before_argument:
     >|{ }
     >*line_arg C1
      >{mhh}
   >macro_expansion<end;3><p:7>
  {empty_line:\\n}
  *@alias C1 l37
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{phooindex|strong}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {phooindex = strong}
  *paragraph C2
   *12 @strong C1 l38
   |INFO
   |alias_of:{phooindex}
    *brace_container C1
     {aii}
   {\\n}
  {empty_line:\\n}
  *@definfoenclose C1 l40
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{phoo|;|:}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {phoo,;,:}
  *paragraph C2
   *13 definfoenclose_command@phoo C1 l41
   |INFO
   |command_name:{phoo}
   |EXTRA
   |begin:{;}
   |end:{:}
    *brace_container C1
     {djj}
   {\\n}
  {empty_line:\\n}
  *@defindex C1 l43
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{phoo}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {phoo}
  *14 index_entry_command@phooindex C1 l44
  |INFO
  |command_name:{phooindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{phoo,3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ikk}
  {empty_line:\\n}
  *@alias C1 l46
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{phooindex|strong}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {phooindex = strong}
  *paragraph C2
   *15 @strong C1 l47
   |INFO
   |alias_of:{phooindex}
    *brace_container C1
     {all}
   {\\n}
  {empty_line:\\n}
  *16 @macro C3 l49
  |EXTRA
  |macro_name:{phooindex}
  |misc_args:A{arg}
   *arguments_line C1
    {macro_line: phooindex {arg}\\n}
   {raw:%%\\arg\\%%\\n}
   *@end C1 l51
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
  *paragraph C1
   {%%mmm%%\\n}
   >SOURCEMARKS
   >macro_expansion<start;4>
    >*macro_call C1
    >|INFO
    >|command_name:{phooindex}
     >*brace_arg C1
      >{mmm}
   >macro_expansion<end;4><p:7>
  {empty_line:\\n}
  *@printindex C1 l54
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{phoo}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {phoo}
';


$result_texis{'macro_alias_definfoenclose_defindex'} = '@node Top
@top top

@node chap
@chapter chap

@macro phooindex {arg}
||\\arg\\||
@end macro
||maa||

@definfoenclose phooindex,;,:
@phooindex{dbb}

@alias phooindex = strong
@strong{acc}

@defindex phoo
@phooindex idd

@definfoenclose phooindex,;,:
@phooindex{dee}

@macro phooindex {arg}
!!\\arg\\!!
@end macro
!!mff!!

@defindex phoo
@phooindex igg

@macro phooindex {arg}
!!\\arg\\!!
@end macro
!!mhh!!

@alias phooindex = strong
@strong{aii}

@definfoenclose phoo,;,:
@phoo{djj}

@defindex phoo
@phooindex ikk

@alias phooindex = strong
@strong{all}

@macro phooindex {arg}
%%\\arg\\%%
@end macro
%%mmm%%

@printindex phoo
';


$result_texts{'macro_alias_definfoenclose_defindex'} = 'top
***

1 chap
******

||maa||

dbb

acc


dee

!!mff!!


!!mhh!!

aii

djj


all

%%mmm%%

';

$result_errors{'macro_alias_definfoenclose_defindex'} = [
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 12,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 21,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 40,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  }
];


$result_indices{'macro_alias_definfoenclose_defindex'} = 'cp
fn C
ky C
pg C
phoo
tp C
vr C
';

$result_indices_sort_strings{'macro_alias_definfoenclose_defindex'} = 'phoo:
 idd
 igg
 ikk
';


$result_converted{'plaintext'}->{'macro_alias_definfoenclose_defindex'} = 'top
***

1 chap
******

||maa||

   ;dbb:

   *acc*

   ;dee:

   !!mff!!

   !!mhh!!

   *aii*

   ;djj:

   *all*

   %%mmm%%

* Menu:

* idd:                                   chap.                 (line 12)
* igg:                                   chap.                 (line 16)
* ikk:                                   chap.                 (line 22)

';

1;
