use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'spaces_in_call'} = '*document_root C1
 *before_node_section C3
  *0 @linemacro C5 l1
  |EXTRA
  |macro_name:{mylinecommand}
  |misc_args:A{first|second|rest}
   *arguments_line C1
    {macro_line: mylinecommand {first, second, rest}\\n}
   {raw:@defblock\\n}
   {raw:@defline category \\first\\ A \\second\\ B \\rest\\\\n}
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
  >SOURCEMARKS
  >linemacro_expansion<start;1><p:1>
   >*linemacro_call C1
   >|INFO
   >|command_name:{mylinecommand}
    >*line_arg C1
     >{{a b}{c d}{rest}}
  *1 @defblock C3 l7:@mylinecommand
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *@defline C1 l7:@mylinecommand
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |def_command:{defline}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C3
      |*bracketed_arg C1
       |{a b}
      |*bracketed_arg C1
       |{c d}
      |*bracketed_arg C1
       |{rest}
   |original_def_cmdname:{defline}
    *line_arg C7
    |INFO
    |spaces_after_argument:
     |{ \\n}
     *def_category C1
      *def_line_arg C1
       {category}
     {spaces: }
     *def_name C1
      *def_line_arg C3
       *bracketed_arg C1 l7:@mylinecommand
        {a b}
       *bracketed_arg C1 l7:@mylinecommand
        {c d}
       *bracketed_arg C1 l7:@mylinecommand
        {rest}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {A}
     {spaces:  }
     *def_arg C1
      *def_line_arg C1
       {B}
   *@end C1 l7:@mylinecommand
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
';


$result_texis{'spaces_in_call'} = '@linemacro mylinecommand {first, second, rest}
@defblock
@defline category \\first\\ A \\second\\ B \\rest\\
@end defblock
@end linemacro

@defblock
@defline category {a b}{c d}{rest} A  B 
@end defblock
';


$result_texts{'spaces_in_call'} = '
category: a bc drest A  B
';

$result_errors{'spaces_in_call'} = [];


$result_floats{'spaces_in_call'} = {};


1;
