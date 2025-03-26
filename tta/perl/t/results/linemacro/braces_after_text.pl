use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'braces_after_text'} = '*document_root C1
 *before_node_section C3
  *@linemacro C3 l1
  |EXTRA
  |macro_name:{mymacro}
  |misc_args:A{a|b|c}
   *arguments_line C1
    {macro_line: mymacro {a, b, c}\\n}
   {raw:@defline \\a\\ \\b\\ \\c\\\\n}
   *@end C1 l3
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
  *@defblock C3 l5
   *arguments_line C1
   >SOURCEMARKS
   >linemacro_expansion<start;1>
    >*linemacro_call C3
    >|INFO
    >|command_name:{mymacro}
    >|spaces_before_argument:
     >|{ }
     >*line_arg C1
      >{text{in paren}}
     >*line_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{rest{in paren}}
     >*line_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{bracketed_linemacro_arg:}
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *@defline C1 l6:@mymacro
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |def_command:{defline}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C2
      |{rest}
      |*bracketed_arg C1
       |{in paren}
   |original_def_cmdname:{defline}
    *line_arg C3
    |INFO
    |spaces_after_argument:
     |{ \\n}
     |>SOURCEMARKS
     |>linemacro_expansion<end;1><p:1>
     *def_category C1
      *def_line_arg C2
       {text}
       *bracketed_arg C1 l6:@mymacro
        {in paren}
     {spaces: }
     *def_name C1
      *def_line_arg C2
       {rest}
       *bracketed_arg C1 l6:@mymacro
        {in paren}
   *@end C1 l7
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
';


$result_texis{'braces_after_text'} = '@linemacro mymacro {a, b, c}
@defline \\a\\ \\b\\ \\c\\
@end linemacro

@defblock
@defline text{in paren} rest{in paren} 
@end defblock
';


$result_texts{'braces_after_text'} = '
textin paren: restin paren
';

$result_errors{'braces_after_text'} = [];


1;
