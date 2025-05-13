use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'spaces_after_command_in_call'} = '*document_root C1
 *before_node_section C3
  *@linemacro C5 l1
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
   >*linemacro_call C3
   >|INFO
   >|command_name:{mylinecommand}
   >|spaces_before_argument:
    >|{ }
    >*line_arg C1
     >{@code {d}}
    >*line_arg C1
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >{@ringaccent b}
    >*line_arg C1
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >{rest}
  *@defblock C3 l7:@mylinecommand
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
     |*def_line_arg C1
      |*@code C1
      ||INFO
      ||spaces_after_cmd_before_arg:
       ||{ }
       |*brace_container C1
        |{d}
   |original_def_cmdname:{defline}
    *line_arg C11
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {category}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *@code C1 l7:@mylinecommand
       |INFO
       |spaces_after_cmd_before_arg:
        |{ }
        *brace_container C1
         {d}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {A}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *@ringaccent C1 l7:@mylinecommand
       |INFO
       |spaces_after_cmd_before_arg:
        |{ }
        *following_arg C1
         {b}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {B}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {rest}
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


$result_texis{'spaces_after_command_in_call'} = '@linemacro mylinecommand {first, second, rest}
@defblock
@defline category \\first\\ A \\second\\ B \\rest\\
@end defblock
@end linemacro

@defblock
@defline category @code {d} A @ringaccent b B rest
@end defblock
';


$result_texts{'spaces_after_command_in_call'} = '
category: d A b* B rest
';

$result_errors{'spaces_after_command_in_call'} = [];


$result_nodes_list{'spaces_after_command_in_call'} = '';

$result_sections_list{'spaces_after_command_in_call'} = '';

$result_headings_list{'spaces_after_command_in_call'} = '';

1;
