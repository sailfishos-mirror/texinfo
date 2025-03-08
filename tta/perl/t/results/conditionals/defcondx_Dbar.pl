use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'defcondx_Dbar'} = '*document_root C3
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo\\n}
   {text_before_beginning:\\n}
  *preamble_before_content C5
   *@c C1
    {rawline_arg: test def*x in a conditional\\n}
   {empty_line:\\n}
   *@c C1
    {rawline_arg: set this from the command line.\\n}
   *@c C1
    {rawline_arg: set bar\\n}
   {empty_line:\\n}
 *0 @top C4 defxcond.texi:l8 {deffnx inside conditional}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {deffnx inside conditional}
  {empty_line:\\n}
  *1 @deffn C5 defxcond.texi:l10
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 defxcond.texi:l10
   |EXTRA
   |def_command:{deffn}
   |original_def_cmdname:{deffn}
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {foo}
   *inter_def_item C1
    {empty_line:\\n}
    >SOURCEMARKS
    >expanded_conditional_command<start;1><p:1>
     >*@ifset C1 defxcond.texi:l12
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >*arguments_line C1
       >*block_line_arg C1
       >|INFO
       >|spaces_after_argument:
        >|{\\n}
        >{bar}
   *@deffnx C1 defxcond.texi:l13
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |def_command:{deffn}
   |original_def_cmdname:{deffnx}
   >SOURCEMARKS
   >expanded_conditional_command<end;1>
    >*@end C1 defxcond.texi:l14
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{ifset}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{ifset}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {bar}
   *def_item C3
    {empty_line:\\n}
    *paragraph C1
     {Documentation.\\n}
    {empty_line:\\n}
   *@end C1 defxcond.texi:l18
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
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'defcondx_Dbar'} = '\\input texinfo

@c test def*x in a conditional

@c set this from the command line.
@c set bar

@top deffnx inside conditional

@deffn foo

@deffnx bar

Documentation.

@end deffn

@bye
';


$result_texts{'defcondx_Dbar'} = '

deffnx inside conditional
*************************

foo: 

bar: 

Documentation.


';

$result_errors{'defcondx_Dbar'} = [
  {
    'error_line' => 'warning: missing name for @deffn
',
    'file_name' => 'defxcond.texi',
    'line_nr' => 10,
    'text' => 'missing name for @deffn',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: missing name for @deffnx
',
    'file_name' => 'defxcond.texi',
    'line_nr' => 13,
    'text' => 'missing name for @deffnx',
    'type' => 'warning'
  }
];


1;
