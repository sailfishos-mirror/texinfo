use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'heading_separator_in_accent_command'} = '*document_root C1
 *before_node_section C3
  *paragraph C2
   *@, C1 l1
    *brace_container C1
     *@|
   {\\n}
  {empty_line:\\n}
  *@oddfooting C1 l3
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *line_arg C7
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {a }
    *@|
    { }
    *@^ C1 l3
     *brace_container C1
      *@|
    { }
    *@|
    { b}
';


$result_texis{'heading_separator_in_accent_command'} = '@,{@|}

@oddfooting a @| @^{@|} @| b
';


$result_texts{'heading_separator_in_accent_command'} = ',

';

$result_errors{'heading_separator_in_accent_command'} = [
  {
    'error_line' => 'warning: @| should not appear in @,
',
    'line_nr' => 1,
    'text' => '@| should not appear in @,',
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
    'error_line' => 'warning: @| should not appear in @^
',
    'line_nr' => 3,
    'text' => '@| should not appear in @^',
    'type' => 'warning'
  }
];


$result_nodes_list{'heading_separator_in_accent_command'} = '';

$result_sections_list{'heading_separator_in_accent_command'} = '';

$result_sectioning_root{'heading_separator_in_accent_command'} = '';

$result_headings_list{'heading_separator_in_accent_command'} = '';

1;
