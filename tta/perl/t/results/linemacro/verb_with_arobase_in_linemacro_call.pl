use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'verb_with_arobase_in_linemacro_call'} = '*document_root C1
 *before_node_section C3
  *0 @linemacro C3 l1
  |EXTRA
  |macro_name:{mycommand}
  |misc_args:A{a|b|c}
   *arguments_line C1
    {macro_line: mycommand {a, b, c}\\n}
   {raw:\\a\\, \\b\\ \\c\\\\n}
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
  >SOURCEMARKS
  >linemacro_expansion<start;1><p:1>
   >*linemacro_call C1
   >|INFO
   >|command_name:{mycommand}
   >|spaces_before_argument:
    >|{ }
    >*line_arg C1
     >{@verb{@ in verb @} and next\\n}
  *paragraph C3
   *1 @verb C1 l5:@mycommand
   |INFO
   |delimiter:{@}
    *brace_container C1
     {raw: in verb }
   { and next\\n}
   {,  }
   >SOURCEMARKS
   >linemacro_expansion<end;1><p:3>
';


$result_texis{'verb_with_arobase_in_linemacro_call'} = '@linemacro mycommand {a, b, c}
\\a\\, \\b\\ \\c\\
@end linemacro

@verb{@ in verb @} and next
,  ';


$result_texts{'verb_with_arobase_in_linemacro_call'} = '
 in verb  and next
,  ';

$result_errors{'verb_with_arobase_in_linemacro_call'} = [
  {
    'error_line' => '@mycommand missing closing brace
',
    'line_nr' => 5,
    'text' => '@mycommand missing closing brace',
    'type' => 'error'
  }
];


1;
