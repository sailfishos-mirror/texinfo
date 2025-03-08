use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'value_in_invalid_documentencoding'} = '*document_root C1
 *before_node_section C2
  *@set C2
  |INFO
  |arg_line:{ badvalue bad\\n}
   {rawline_arg:badvalue}
   {rawline_arg:bad}
  *@documentencoding C1 l2
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>value_expansion<start;1><p:1>{bad}
    |>*@value C1
     |>*brace_container C1
      |>{badvalue}
  |EXTRA
  |global_command_number:{1}
  |text_arg:{bad}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {bad}
    >SOURCEMARKS
    >value_expansion<end;1><p:3>
';


$result_texis{'value_in_invalid_documentencoding'} = '@set badvalue bad
@documentencoding bad
';


$result_texts{'value_in_invalid_documentencoding'} = '';

$result_errors{'value_in_invalid_documentencoding'} = [
  {
    'error_line' => 'warning: encoding `bad\' is not a canonical texinfo encoding
',
    'line_nr' => 2,
    'text' => 'encoding `bad\' is not a canonical texinfo encoding',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: unhandled encoding name `bad\'
',
    'line_nr' => 2,
    'text' => 'unhandled encoding name `bad\'',
    'type' => 'warning'
  }
];


1;
