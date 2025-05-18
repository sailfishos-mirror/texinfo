use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'nested_linemacro_calls'} = '*document_root C1
 *before_node_section C5
  *@linemacro C3 l1
  |EXTRA
  |macro_name:{inside}
  |misc_args:A{a|b}
   *arguments_line C1
    {macro_line: inside {a, b}\\n}
   {raw:inside {\\a\\ operator \\b\\}\\n}
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
  *@linemacro C4 l5
  |EXTRA
  |macro_name:{outside}
  |misc_args:A{one|two|three}
   *arguments_line C1
    {macro_line: outside {one, two, three}\\n}
   {raw:@defline \\one\\ {\\two\\} \\three\\\\n}
   {raw:@cindex \\two\\\\n}
   *@end C1 l8
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
  *@defblock C4 l10
   *arguments_line C1
   >SOURCEMARKS
   >linemacro_expansion<start;1>
    >*linemacro_call C3
    >|INFO
    >|command_name:{outside}
    >|spaces_before_argument:
     >|{ }
     >*line_arg C1
      >{bracketed_linemacro_arg:type}
     >*line_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{bracketed_linemacro_arg:@inside {X} {Y}}
     >*line_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{( remaining, type typed )}
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *@defline C1 l11:@outside
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |def_command:{defline}
   |def_index_element:
    |*def_name C1
     |*bracketed_arg C1
      |{inside X operator Y}
   |original_def_cmdname:{defline}
    *line_arg C14
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {type}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l11:@outside
       {inside X operator Y}
       >SOURCEMARKS
       >linemacro_expansion<start;2>
        >*linemacro_call C2
        >|INFO
        >|command_name:{inside}
        >|spaces_before_argument:
         >|{ }
         >*line_arg C1
          >{bracketed_linemacro_arg:X}
         >*line_arg C1
         >|INFO
         >|spaces_before_argument:
          >|{ }
          >{{Y}} ( remaining, type typed )}
     {spaces: }
     {delimiter:(}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {remaining}
     {delimiter:,}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {type}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {typed}
     {spaces: }
     {delimiter:)}
     >SOURCEMARKS
     >linemacro_expansion<end;2><p:1>
   *def_item C1
    *index_entry_command@cindex C1 l11:@outside
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
     |>SOURCEMARKS
     |>linemacro_expansion<start;3><p:1>
      |>*linemacro_call C2
      |>|INFO
      |>|command_name:{inside}
      |>|spaces_before_argument:
       |>|{ }
       |>*line_arg C1
        |>{bracketed_linemacro_arg:X}
       |>*line_arg C1
       |>|INFO
       |>|spaces_before_argument:
        |>|{ }
        |>{bracketed_linemacro_arg:Y}
        |>>SOURCEMARKS
        |>>linemacro_expansion<end;1><p:3>
    |EXTRA
    |index_entry:I{cp,1}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {inside X operator Y}
      >SOURCEMARKS
      >linemacro_expansion<end;3><p:19>
   *@end C1 l12
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


$result_texis{'nested_linemacro_calls'} = '@linemacro inside {a, b}
inside {\\a\\ operator \\b\\}
@end linemacro

@linemacro outside {one, two, three}
@defline \\one\\ {\\two\\} \\three\\
@cindex \\two\\
@end linemacro

@defblock
@defline type {inside X operator Y} ( remaining, type typed )
@cindex inside X operator Y
@end defblock
';


$result_texts{'nested_linemacro_calls'} = '

type: inside X operator Y ( remaining, type typed )
';

$result_errors{'nested_linemacro_calls'} = [
  {
    'error_line' => 'misplaced { (possibly involving @inside)
',
    'line_nr' => 11,
    'macro' => 'inside',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced { (possibly involving @inside)
',
    'line_nr' => 11,
    'macro' => 'inside',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced } (possibly involving @inside)
',
    'line_nr' => 11,
    'macro' => 'inside',
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced } (possibly involving @inside)
',
    'line_nr' => 11,
    'macro' => 'inside',
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced { (possibly involving @inside)
',
    'line_nr' => 11,
    'macro' => 'inside',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced } (possibly involving @inside)
',
    'line_nr' => 11,
    'macro' => 'inside',
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'line_nr' => 11,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


$result_nodes_list{'nested_linemacro_calls'} = '';

$result_sections_list{'nested_linemacro_calls'} = '';

$result_sectioning_root{'nested_linemacro_calls'} = '';

$result_headings_list{'nested_linemacro_calls'} = '';

$result_indices_sort_strings{'nested_linemacro_calls'} = 'cp:
 inside X operator Y
';

1;
