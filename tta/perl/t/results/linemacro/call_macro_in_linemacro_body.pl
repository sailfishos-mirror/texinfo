use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'call_macro_in_linemacro_body'} = '*document_root C1
 *before_node_section C5
  *0 @linemacro C5 l1
  |EXTRA
  |macro_name:{lm}
  |misc_args:A{a|b}
   *arguments_line C1
    {macro_line: lm {a, b}\\n}
   {raw:@mymacro{@code{}\\n}
   {raw:@var{\\a\\}\\n}
   {raw:now second arg: \\b\\}\\n}
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
  *1 @macro C5 l7
  |EXTRA
  |macro_name:{mymacro}
  |misc_args:A{c|d}
   *arguments_line C1
    {macro_line: mymacro {c, d}\\n}
   {raw:@table \\c\\\\n}
   {raw:@item \\d\\\\n}
   {raw:@end table\\n}
   *@end C1 l11
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
     >{bracketed_linemacro_arg:something}
    >*line_arg C1
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >{bracketed_linemacro_arg:gg , yy \\n  zz}
  >macro_expansion<start;1><p:1>
   >*macro_call C2
   >|INFO
   >|command_name:{mymacro}
    >*brace_arg C1
     >{@code{}\\n@var{something}\\nnow second arg: gg }
    >*brace_arg C1
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >{yy \\n  zz}
     >>SOURCEMARKS
     >>linemacro_expansion<end;1><p:4>
  *2 @table C4 l14:@mymacro
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *3 @code C1 l14:@mymacro
      *brace_container
   *before_item C1
    *paragraph C3
     *4 @var C1 l14:@mymacro
      *brace_container C1
       {something}
     {\\n}
     {now second arg: gg \\n}
   *table_entry C2
    *table_term C1
     *@item C1 l14:@mymacro
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{ \\n}
       {yy}
    *table_definition C2
     {spaces_before_paragraph:  }
     *paragraph C1
      {zz\\n}
   *@end C1 l14:@mymacro
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
     >SOURCEMARKS
     >macro_expansion<end;1><p:5>
';


$result_texis{'call_macro_in_linemacro_body'} = '@linemacro lm {a, b}
@mymacro{@code{}
@var{\\a\\}
now second arg: \\b\\}
@end linemacro

@macro mymacro {c, d}
@table \\c\\
@item \\d\\
@end table
@end macro

@table @code{}
@var{something}
now second arg: gg 
@item yy 
  zz
@end table
';


$result_texts{'call_macro_in_linemacro_body'} = '

something
now second arg: gg 
yy
zz
';

$result_errors{'call_macro_in_linemacro_body'} = [];


1;
