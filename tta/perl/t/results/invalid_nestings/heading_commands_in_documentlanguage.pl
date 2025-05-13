use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'heading_commands_in_documentlanguage'} = '*document_root C1
 *before_node_section C1
  *@documentlanguage C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |text_arg:{    b}
   *line_arg C8
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@code C1 l1
     *brace_container C2
      {aaa }
      *@thischapter
    { }
    *@|
    { }
    *@thissection
    { }
    *@|
    { b}
';


$result_texis{'heading_commands_in_documentlanguage'} = '@documentlanguage @code{aaa @thischapter} @| @thissection @| b
';


$result_texts{'heading_commands_in_documentlanguage'} = '';

$result_errors{'heading_commands_in_documentlanguage'} = [
  {
    'error_line' => 'warning: @code should not appear in @documentlanguage
',
    'line_nr' => 1,
    'text' => '@code should not appear in @documentlanguage',
    'type' => 'warning'
  },
  {
    'error_line' => '@thischapter should only appear in heading or footing
',
    'line_nr' => 1,
    'text' => '@thischapter should only appear in heading or footing',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @| should not appear in @documentlanguage
',
    'line_nr' => 1,
    'text' => '@| should not appear in @documentlanguage',
    'type' => 'warning'
  },
  {
    'error_line' => '@| should only appear in heading or footing
',
    'line_nr' => 1,
    'text' => '@| should only appear in heading or footing',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @thissection should not appear in @documentlanguage
',
    'line_nr' => 1,
    'text' => '@thissection should not appear in @documentlanguage',
    'type' => 'warning'
  },
  {
    'error_line' => '@thissection should only appear in heading or footing
',
    'line_nr' => 1,
    'text' => '@thissection should only appear in heading or footing',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @| should not appear in @documentlanguage
',
    'line_nr' => 1,
    'text' => '@| should not appear in @documentlanguage',
    'type' => 'warning'
  },
  {
    'error_line' => '@| should only appear in heading or footing
',
    'line_nr' => 1,
    'text' => '@| should only appear in heading or footing',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @documentlanguage: @code{aaa @thischapter} @| @thissection @| b
',
    'line_nr' => 1,
    'text' => 'bad argument to @documentlanguage: @code{aaa @thischapter} @| @thissection @| b',
    'type' => 'error'
  }
];


$result_nodes_list{'heading_commands_in_documentlanguage'} = '';

$result_sections_list{'heading_commands_in_documentlanguage'} = '';

$result_headings_list{'heading_commands_in_documentlanguage'} = '';

1;
