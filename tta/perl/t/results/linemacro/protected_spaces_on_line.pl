use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'protected_spaces_on_line'} = '*document_root C1
 *before_node_section C10
  *0 @linemacro C5 l1
  |EXTRA
  |macro_name:{test}
  |misc_args:A{first|rest}
   *arguments_line C1
    {macro_line: test {first, rest}\\n}
   {raw:@deffn Function \\first\\ \\rest\\\\n}
   {raw:something\\n}
   {raw:@end deffn\\n}
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
   >*linemacro_call C2
   >|INFO
   >|command_name:{test}
   >|spaces_before_argument:
    >|{ }
    >*line_arg C1
     >{foo}
    >*line_arg C1
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >{(bar, baz)@\\n continuation line}
  *1 @deffn C3 l8:@test
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l8:@test
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{foo}
   |index_entry:I{fn,1}
   |original_def_cmdname:{deffn}
    *block_line_arg C14
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {Function}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {foo}
     {spaces: }
     {delimiter:(}
     *def_arg C1
      *def_line_arg C1
       {bar}
     {delimiter:,}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {baz}
     {delimiter:)}
     >SOURCEMARKS
     >defline_continuation<1><p:1>
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {continuation}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {line}
   *def_item C1
    *paragraph C1
     {something\\n}
   *@end C1 l8:@test
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deffn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deffn}
     >SOURCEMARKS
     >linemacro_expansion<end;1><p:5>
  {empty_line:\\n}
  >SOURCEMARKS
  >linemacro_expansion<start;2><p:1>
   >*linemacro_call C2
   >|INFO
   >|command_name:{test}
   >|spaces_before_argument:
    >|{ }
    >*line_arg C1
     >{foo@ b}
    >*line_arg C1
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >{(bar, baz) rest@ and more}
  *2 @deffn C3 l10:@test
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l10:@test
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C3
      |{foo}
      |*@ 
      |{b}
   |index_entry:I{fn,2}
   |original_def_cmdname:{deffn}
    *block_line_arg C16
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {Function}
     {spaces: }
     *def_name C1
      *def_line_arg C3
       {foo}
       *@ 
       {b}
     {spaces: }
     {delimiter:(}
     *def_arg C1
      *def_line_arg C1
       {bar}
     {delimiter:,}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {baz}
     {delimiter:)}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {rest}
     *def_arg C1
      *def_line_arg C1
       *@ 
     *def_arg C1
      *def_line_arg C1
       {and}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {more}
   *def_item C1
    *paragraph C1
     {something\\n}
   *@end C1 l10:@test
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deffn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deffn}
     >SOURCEMARKS
     >linemacro_expansion<end;2><p:5>
  {empty_line:\\n}
  >SOURCEMARKS
  >linemacro_expansion<start;3><p:1>
   >*linemacro_call C2
   >|INFO
   >|command_name:{test}
   >|spaces_before_argument:
    >|{ }
    >*line_arg C1
     >{foo}
    >*line_arg C1
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >{(bar, baz)@@}
  *3 @deffn C3 l12:@test
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l12:@test
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{foo}
   |index_entry:I{fn,3}
   |original_def_cmdname:{deffn}
    *block_line_arg C11
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {Function}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {foo}
     {spaces: }
     {delimiter:(}
     *def_arg C1
      *def_line_arg C1
       {bar}
     {delimiter:,}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {baz}
     {delimiter:)}
     *def_arg C1
      *def_line_arg C1
       *@@
   *def_item C1
    *paragraph C1
     {something\\n}
   *@end C1 l12:@test
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deffn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deffn}
     >SOURCEMARKS
     >linemacro_expansion<end;3><p:5>
  {spaces_before_paragraph: }
  *paragraph C1
   {another with double at\\n}
  {empty_line:\\n}
';


$result_texis{'protected_spaces_on_line'} = '@linemacro test {first, rest}
@deffn Function \\first\\ \\rest\\
something
@end deffn
@end linemacro

@deffn Function foo (bar, baz) continuation line
something
@end deffn

@deffn Function foo@ b (bar, baz) rest@ and more
something
@end deffn

@deffn Function foo (bar, baz)@@
something
@end deffn
 another with double at

';


$result_texts{'protected_spaces_on_line'} = '
Function: foo (bar, baz) continuation line
something

Function: foo b (bar, baz) rest and more
something

Function: foo (bar, baz)@
something
another with double at

';

$result_errors{'protected_spaces_on_line'} = [
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node (possibly involving @test)
',
    'line_nr' => 8,
    'macro' => 'test',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node (possibly involving @test)
',
    'line_nr' => 10,
    'macro' => 'test',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node (possibly involving @test)
',
    'line_nr' => 12,
    'macro' => 'test',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'protected_spaces_on_line'} = {
  'fn' => [
    'foo',
    'foo',
    'foo b'
  ]
};


1;
