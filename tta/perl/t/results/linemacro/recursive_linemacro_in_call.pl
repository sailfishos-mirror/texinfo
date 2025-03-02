use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'recursive_linemacro_in_call'} = '*document_root C1
 *before_node_section C3
  *0 @linemacro C3 l1
  |EXTRA
  |macro_name:{anorecurse}
  |misc_args:A{arg|other}
   *arguments_line C1
    {macro_line: anorecurse {arg, other}\\n}
   {raw:\\arg\\ d \\other\\\\n}
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
  {empty_line:\\n}
  >SOURCEMARKS
  >linemacro_expansion<start;1>
   >*linemacro_call C2
   >|INFO
   >|command_name:{anorecurse}
   >|spaces_before_argument:
    >|{ }
    >*line_arg C1
     >{bracketed_linemacro_arg:@anorecurse a b}
    >*line_arg C1
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >{c}
';


$result_texis{'recursive_linemacro_in_call'} = '@linemacro anorecurse {arg, other}
\\arg\\ d \\other\\
@end linemacro


';


$result_texts{'recursive_linemacro_in_call'} = '

';

$result_errors{'recursive_linemacro_in_call'} = [
  {
    'error_line' => 'recursive call of macro anorecurse is not allowed; use @rmacro if needed (possibly involving @anorecurse)
',
    'line_nr' => 5,
    'macro' => 'anorecurse',
    'text' => 'recursive call of macro anorecurse is not allowed; use @rmacro if needed',
    'type' => 'error'
  }
];


$result_floats{'recursive_linemacro_in_call'} = {};


1;
