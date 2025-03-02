use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'call_macro_in_linemacro_call'} = '*document_root C1
 *before_node_section C5
  *0 @linemacro C4 l1
  |EXTRA
  |macro_name:{lm}
  |misc_args:A{a|b}
   *arguments_line C1
    {macro_line: lm {a, b}\\n}
   {raw:@quotation \\a\\\\n}
   {raw:now second arg: \\b\\\\n}
   *@end C1 l4
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
  *1 @macro C5 l6
  |EXTRA
  |macro_name:{mymacro}
  |misc_args:A{c|d}
   *arguments_line C1
    {macro_line: mymacro {c, d}\\n}
   {raw:@table \\c\\\\n}
   {raw:@item \\d\\\\n}
   {raw:@end table\\n}
   *@end C1 l10
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
  >linemacro_expansion<start;1><p:1>
   >*linemacro_call C2
   >|INFO
   >|command_name:{lm}
   >|spaces_before_argument:
    >|{ }
    >*line_arg C1
     >{bracketed_linemacro_arg:aa\\n  @mymacro{@emph ,\\n   ggg} }
    >*line_arg C1
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >{jj @var{T}}
  *2 @quotation C7 l14:@lm
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {aa}
   {spaces_before_paragraph:  }
   >SOURCEMARKS
   >macro_expansion<start;1><p:2>
    >*macro_call C2
    >|INFO
    >|command_name:{mymacro}
     >*brace_arg C1
      >{@emph }
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{\\n}
      >{   ggg}
   *3 @table C3 l14:@mymacro
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |command_as_argument:[E4]
    *arguments_line C1
     *block_line_arg C1
     |INFO
     |spaces_after_argument:
      |{ \\n}
      *4 @emph l14:@mymacro
    *table_entry C1
     *table_term C1
      *@item C1 l14:@mymacro
      |INFO
      |spaces_before_argument:
       |{    }
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {ggg}
    *@end C1 l14:@mymacro
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{table}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{ \\n}
      {table}
      >SOURCEMARKS
      >macro_expansion<end;1><p:5>
   *paragraph C3
    {now second arg: jj }
    *5 @var C1 l14:@lm
    >SOURCEMARKS
    >linemacro_expansion<end;1>
     *brace_container C1
      {T}
    {\\n}
   {empty_line: \\n}
   {empty_line:\\n}
   *@end C1 l17
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{quotation}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {quotation}
';


$result_texis{'call_macro_in_linemacro_call'} = '@linemacro lm {a, b}
@quotation \\a\\
now second arg: \\b\\
@end linemacro

@macro mymacro {c, d}
@table \\c\\
@item \\d\\
@end table
@end macro

@quotation aa
  @table @emph 
@item    ggg
@end table 
now second arg: jj @var{T}
 

@end quotation
';


$result_texts{'call_macro_in_linemacro_call'} = '

aa
ggg
now second arg: jj T
 

';

$result_errors{'call_macro_in_linemacro_call'} = [];


$result_floats{'call_macro_in_linemacro_call'} = {};


1;
