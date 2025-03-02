use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'spaces_after_macro_linemacro_commands_in_call'} = '*document_root C1
 *before_node_section C10
  *0 @linemacro C5 l1
  |EXTRA
  |macro_name:{mylinecommand}
  |misc_args:A{first|second|rest}
   *arguments_line C1
    {macro_line: mylinecommand {first, second, rest}\\n}
   {raw:@defblock\\n}
   {raw:@defline category {\\first\\} A \\second\\ B \\rest\\\\n}
   {raw:@end defblock\\n}
   *@end C1 l5
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{linemacro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {linemacro}
  {empty_line:\\n}
  *1 @macro C3 l7
  |EXTRA
  |macro_name:{mymac}
  |misc_args:A{arg1}
   *arguments_line C1
    {macro_line: mymac {arg1}\\n}
   {raw:@samp{arg1}\\n}
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
  {empty_line:\\n}
  *2 @linemacro C3 l11
  |EXTRA
  |macro_name:{mylinemac}
  |misc_args:A{name|rest}
   *arguments_line C1
    {macro_line: mylinemac {name, rest}\\n}
   {raw:{\\name\\} \\rest\\\\n}
   *@end C1 l13
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{linemacro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {linemacro}
  {empty_line:\\n}
  >SOURCEMARKS
  >linemacro_expansion<start;1><p:1>
   >*linemacro_call C3
   >|INFO
   >|command_name:{mylinecommand}
   >|spaces_before_argument:
    >|{ }
    >*line_arg C1
     >{@mymac}
    >*line_arg C1
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >{bracketed_linemacro_arg:aa}
    >*line_arg C1
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >{@mymac {bb}}
  *3 @defblock C3 l15:@mylinecommand
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *@defline C1 l15:@mylinecommand
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |def_command:{defline}
   |def_index_element:
    |*def_name C1
     |*bracketed_arg C2
     ||INFO
     ||spaces_after_argument:
      ||{\\n}
      |{}
      |*6 @samp C1
       |*brace_container C1
        |{arg1}
   |original_def_cmdname:{defline}
    *line_arg C3
     *def_category C1
      *def_line_arg C1
       {category}
     {spaces: }
     *def_name C1
      *bracketed_arg C2 l15:@mylinecommand
      |INFO
      |spaces_after_argument:
       |{\\n}
       {}
       >SOURCEMARKS
       >macro_expansion<start;1>
        >*macro_call_line C1
        >|INFO
        >|command_name:{mymac}
         >*line_arg C1
          >{} A aa B @mymac {bb}}
       *4 @samp C1 l15:@mymac
       >SOURCEMARKS
       >macro_expansion<end;1>
        *brace_container C1
         {arg1}
   *@end C1 l15:@mylinecommand
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{defblock}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {defblock}
     >SOURCEMARKS
     >linemacro_expansion<end;1><p:8>
  {empty_line:\\n}
  >SOURCEMARKS
  >linemacro_expansion<start;2><p:1>
   >*linemacro_call C3
   >|INFO
   >|command_name:{mylinecommand}
   >|spaces_before_argument:
    >|{ }
    >*line_arg C1
     >{@mylinemac}
    >*line_arg C1
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >{bracketed_linemacro_arg:Fun}
    >*line_arg C1
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >{{other} and remaining}
  *5 @defblock C3 l17:@mylinecommand
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *@defline C1 l17:@mylinecommand
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |def_command:{defline}
   |original_def_cmdname:{defline}
    *line_arg C15
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {category}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l17:@mylinecommand
       {}
       >SOURCEMARKS
       >linemacro_expansion<start;3>
        >*linemacro_call C2
        >|INFO
        >|command_name:{mylinemac}
         >*line_arg C1
          >{}}
         >*line_arg C1
         >|INFO
         >|spaces_before_argument:
          >|{ }
          >{A Fun B {other} and remaining}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {A}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {Fun}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {B}
     {spaces: }
     *def_arg C1
      *bracketed_arg C1 l17:@mylinemac
       {other}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {and}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {remaining}
       >SOURCEMARKS
       >linemacro_expansion<end;3><p:9>
   *@end C1 l17:@mylinecommand
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{defblock}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {defblock}
     >SOURCEMARKS
     >linemacro_expansion<end;2><p:8>
  {empty_line:\\n}
';


$result_texis{'spaces_after_macro_linemacro_commands_in_call'} = '@linemacro mylinecommand {first, second, rest}
@defblock
@defline category {\\first\\} A \\second\\ B \\rest\\
@end defblock
@end linemacro

@macro mymac {arg1}
@samp{arg1}
@end macro

@linemacro mylinemac {name, rest}
{\\name\\} \\rest\\
@end linemacro

@defblock
@defline category {@samp{arg1}
}@end defblock

@defblock
@defline category {} A Fun B {other} and remaining
@end defblock

';


$result_texts{'spaces_after_macro_linemacro_commands_in_call'} = '


category: arg1

category:  A Fun B other and remaining

';

$result_errors{'spaces_after_macro_linemacro_commands_in_call'} = [
  {
    'error_line' => 'misplaced { (possibly involving @mylinecommand)
',
    'line_nr' => 15,
    'macro' => 'mylinecommand',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced { (possibly involving @mylinemac)
',
    'line_nr' => 17,
    'macro' => 'mylinemac',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced } (possibly involving @mylinemac)
',
    'line_nr' => 17,
    'macro' => 'mylinemac',
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: missing name for @defline (possibly involving @mylinecommand)
',
    'line_nr' => 17,
    'macro' => 'mylinecommand',
    'text' => 'missing name for @defline',
    'type' => 'warning'
  }
];


$result_floats{'spaces_after_macro_linemacro_commands_in_call'} = {};


1;
