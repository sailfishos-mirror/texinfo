use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'macro_in_early_commands'} = '*document_root C4
 *before_node_section C13
  *0 @macro C3 l1
  |EXTRA
  |macro_name:{begin-file}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: begin-file\\n}
   {raw:macro_in_pass\\n}
   *@end C1 l3
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
  *1 @macro C3 l4
  |EXTRA
  |macro_name:{end-file-name}
  |misc_args:A{ext}
   *arguments_line C1
    {macro_line: end-file-name {ext}\\n}
   {raw:texi_commands.\\ext\\\\n}
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
  *@setfilename C1 l8
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<start;1><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{begin-file}
     |>*brace_arg
  |EXTRA
  |text_arg:{macro_in_passtexi_commands.info}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {macro_in_passtexi_commands.info}
    >SOURCEMARKS
    >macro_expansion<end;1><p:13>
    >macro_expansion<start;2><p:13>
     >*macro_call C1
     >|INFO
     >|command_name:{end-file-name}
      >*brace_arg C1
       >{info}
    >macro_expansion<end;2><p:31>
  {empty_line:\\n}
  *2 @macro C3 l10
  |EXTRA
  |macro_name:{latin1}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: latin1 \\n}
   {raw:ISO-8859-1\\n}
   *@end C1 l12
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
  *3 @macro C3 l14
  |EXTRA
  |macro_name:{documentencoding-command}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: documentencoding-command\\n}
   {raw:@documentencoding\\n}
   *@end C1 l16
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
  >SOURCEMARKS
  >macro_expansion<start;3><p:1>
   >*macro_call
   >|INFO
   >|command_name:{documentencoding-command}
  *@documentencoding C1 l18:@documentencoding-command
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<end;3>
   |>macro_expansion<start;4><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{latin1}
     |>*brace_arg
  |EXTRA
  |global_command_number:{1}
  |input_encoding_name:{iso-8859-1}
  |text_arg:{ISO-8859-1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ISO-8859-1}
    >SOURCEMARKS
    >macro_expansion<end;4><p:10>
  {empty_line:\\n}
  *4 @macro C4 l20
  |EXTRA
  |macro_name:{multiinclude}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: multiinclude\\n}
   {raw:macro_included.texi\\n}
   {raw:@include inc_file.texi\\n}
   *@end C1 l23
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
 *5 @node C1 l25 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
 |is_target:{1}
 |node_directions:D[next->E7]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *6 @top C2 l26 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E5]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E6]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *7 @node C8 l28 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[prev->E5]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  >SOURCEMARKS
  >include<start;1><p:1>
   >*@include C1 l30
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >|>SOURCEMARKS
    >|>macro_expansion<start;5><p:1>
     >|>*macro_call
     >|>|INFO
     >|>|command_name:{multiinclude}
   >|EXTRA
   >|text_arg:{macro_included.texi}
    >*line_arg C1
    >|INFO
    >|spaces_after_argument:
     >|{\\n}
     >{macro_included.texi}
  *8 @macro C3 macro_included.texi:l1
  |EXTRA
  |macro_name:{themacro}
  |misc_args:A{}
  >SOURCEMARKS
  >include<end;1>
  >include<start;2>
   >*@include C1 l30:@multiinclude
   >|INFO
   >|spaces_before_argument:
    >|{ }
   >|EXTRA
   >|text_arg:{inc_file.texi}
    >*line_arg C1
    >|INFO
    >|spaces_after_argument:
     >|{\\n}
     >{inc_file.texi}
     >>SOURCEMARKS
     >>macro_expansion<end;5><p:13>
   *arguments_line C1
    {macro_line: themacro\\n}
   {raw:in themacro\\n}
   *@end C1 macro_included.texi:l3
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
   {In included file.\\n}
   >SOURCEMARKS
   >include<end;2><p:18>
  {empty_line:\\n}
  *paragraph C1
   {in themacro\\n}
   >SOURCEMARKS
   >macro_expansion<start;6>
    >*macro_call C1
    >|INFO
    >|command_name:{themacro}
     >*brace_arg
   >macro_expansion<end;6><p:11>
  {empty_line:\\n}
  *paragraph C6
   {macro_in_pass_texi_commands}
   *@{
   {info}
   *@}
   {\\n}
   {texi_commands.info\\n}
   >SOURCEMARKS
   >macro_expansion<start;7>
    >*macro_call C1
    >|INFO
    >|command_name:{end-file-name}
     >*brace_arg C1
      >{info}
   >macro_expansion<end;7><p:18>
';


$result_texis{'macro_in_early_commands'} = '@macro begin-file
macro_in_pass
@end macro
@macro end-file-name {ext}
texi_commands.\\ext\\
@end macro

@setfilename macro_in_passtexi_commands.info

@macro latin1 
ISO-8859-1
@end macro

@macro documentencoding-command
@documentencoding
@end macro

@documentencoding ISO-8859-1

@macro multiinclude
macro_included.texi
@include inc_file.texi
@end macro

@node Top
@top top

@node chap

@macro themacro
in themacro
@end macro
In included file.

in themacro

macro_in_pass_texi_commands@{info@}
texi_commands.info
';


$result_texts{'macro_in_early_commands'} = '





top
***


In included file.

in themacro

macro_in_pass_texi_commands{info}
texi_commands.info
';

$result_sectioning{'macro_in_early_commands'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_level' => 0,
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'macro_in_early_commands'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'macro_in_early_commands'};

$result_nodes{'macro_in_early_commands'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'node_directions' => {
              'prev' => {}
            },
            'normalized' => 'chap'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'macro_in_early_commands'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'macro_in_early_commands'}[0];
$result_nodes{'macro_in_early_commands'}[1] = $result_nodes{'macro_in_early_commands'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'macro_in_early_commands'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap'
    }
  }
];

$result_errors{'macro_in_early_commands'} = [
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 28,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_floats{'macro_in_early_commands'} = {};


1;
