use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'value_after_brace_command'} = '*document_root C1
 *before_node_section C4
  *@set C2
  |INFO
  |arg_line:{ bracedletter {a}\\n}
   {rawline_arg:bracedletter}
   {rawline_arg:{a}}
  *@set C2
  |INFO
  |arg_line:{ unknowncmd @unknown\\n}
   {rawline_arg:unknowncmd}
   {rawline_arg:@unknown}
  {empty_line:\\n}
  *paragraph C12
   *0 @ringaccent C1 l4
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
    |>SOURCEMARKS
    |>value_expansion<start;1><p:1>{{a}}
     |>*@value C1
      |>*brace_container C1
       |>{bracedletter}
   >SOURCEMARKS
   >value_expansion<end;1>
    *brace_container C1
     {a}
   {\\n}
   *1 @ringaccent l5
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
    |>SOURCEMARKS
    |>value_expansion<start;2><p:1>{@unknown}
     |>*@value C1
      |>*brace_container C1
       |>{unknowncmd}
   >SOURCEMARKS
   >value_expansion<end;2>
   {\\n}
   *2 @^ C1 l6
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
    |>SOURCEMARKS
    |>value_expansion<start;3><p:1>{{a}}
     |>*@value C1
      |>*brace_container C1
       |>{bracedletter}
   >SOURCEMARKS
   >value_expansion<end;3>
    *brace_container C1
     {a}
   {\\n}
   *3 @^ l7
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
    |>SOURCEMARKS
    |>value_expansion<start;4><p:1>{@unknown}
     |>*@value C1
      |>*brace_container C1
       |>{unknowncmd}
   >SOURCEMARKS
   >value_expansion<end;4>
   {\\n}
   *4 @code C1 l8
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
    |>SOURCEMARKS
    |>value_expansion<start;5><p:1>{{a}}
     |>*@value C1
      |>*brace_container C1
       |>{bracedletter}
   >SOURCEMARKS
   >value_expansion<end;5>
    *brace_container C1
     {a}
   {\\n}
   *5 @code l9
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
    |>SOURCEMARKS
    |>value_expansion<start;6><p:1>{@unknown}
     |>*@value C1
      |>*brace_container C1
       |>{unknowncmd}
   >SOURCEMARKS
   >value_expansion<end;6>
   {\\n}
';


$result_texis{'value_after_brace_command'} = '@set bracedletter {a}
@set unknowncmd @unknown

@ringaccent {a}
@ringaccent 
@^ {a}
@^ 
@code {a}
@code 
';


$result_texts{'value_after_brace_command'} = '
a*
*
a^
^
a

';

$result_errors{'value_after_brace_command'} = [
  {
    'error_line' => '@ringaccent expected braces
',
    'line_nr' => 5,
    'text' => '@ringaccent expected braces',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `unknown\'
',
    'line_nr' => 5,
    'text' => 'unknown command `unknown\'',
    'type' => 'error'
  },
  {
    'error_line' => '@^ expected braces
',
    'line_nr' => 7,
    'text' => '@^ expected braces',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `unknown\'
',
    'line_nr' => 7,
    'text' => 'unknown command `unknown\'',
    'type' => 'error'
  },
  {
    'error_line' => '@code expected braces
',
    'line_nr' => 9,
    'text' => '@code expected braces',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `unknown\'
',
    'line_nr' => 9,
    'text' => 'unknown command `unknown\'',
    'type' => 'error'
  }
];


1;
