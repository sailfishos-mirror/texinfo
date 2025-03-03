use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'macro_in_invalid_documentencoding'} = '*document_root C1
 *before_node_section C2
  *0 @macro C3 l1
  |EXTRA
  |macro_name:{badmacro}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: badmacro\\n}
   {raw:badm\\n}
   *@end C1 l3
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
  *@documentencoding C1 l4
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<start;1><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{badmacro}
     |>*brace_arg
  |EXTRA
  |global_command_number:{1}
  |text_arg:{badm}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {badm}
    >SOURCEMARKS
    >macro_expansion<end;1><p:4>
';


$result_texis{'macro_in_invalid_documentencoding'} = '@macro badmacro
badm
@end macro
@documentencoding badm
';


$result_texts{'macro_in_invalid_documentencoding'} = '';

$result_errors{'macro_in_invalid_documentencoding'} = [
  {
    'error_line' => 'warning: encoding `badm\' is not a canonical texinfo encoding
',
    'line_nr' => 4,
    'text' => 'encoding `badm\' is not a canonical texinfo encoding',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: unhandled encoding name `badm\'
',
    'line_nr' => 4,
    'text' => 'unhandled encoding name `badm\'',
    'type' => 'warning'
  }
];


1;
