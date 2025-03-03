use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'blockitem_no_item'} = '*document_root C1
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
  *1 @itemize C3 l5
  |EXTRA
  |command_as_argument:[E2]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *2 @bullet
     |INFO
     |inserted:{1}
   *before_item C1
    *paragraph C3
     {AA\\n}
     {d, e f }
     >SOURCEMARKS
     >linemacro_expansion<start;1>
      >*linemacro_call C3
      >|INFO
      >|command_name:{mycommand}
      >|spaces_before_argument:
       >|{ }
       >*line_arg C1
        >{d}
       >*line_arg C1
       >|INFO
       >|spaces_before_argument:
        >|{ }
        >{e}
       >*line_arg C1
       >|INFO
       >|spaces_before_argument:
        >|{ }
        >{f @\\n@end itemize}
     *@\\n
   *@end C1 l8:@mycommand
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{itemize}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {itemize}
     >SOURCEMARKS
     >linemacro_expansion<end;1><p:7>
';


$result_texis{'blockitem_no_item'} = '@linemacro mycommand {a, b, c}
\\a\\, \\b\\ \\c\\
@end linemacro

@itemize
AA
d, e f @
@end itemize
';


$result_texts{'blockitem_no_item'} = '
AA
d, e f  ';

$result_errors{'blockitem_no_item'} = [
  {
    'error_line' => 'warning: @itemize has text but no @item
',
    'line_nr' => 5,
    'text' => '@itemize has text but no @item',
    'type' => 'warning'
  }
];


1;
