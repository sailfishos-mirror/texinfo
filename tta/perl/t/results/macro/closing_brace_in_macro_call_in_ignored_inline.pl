use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'closing_brace_in_macro_call_in_ignored_inline'} = '*document_root C1
 *before_node_section C5
  *@macro C3 l1
  |EXTRA
  |macro_name:{closebrace}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: closebrace\\n}
   {raw:}\\n}
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{macro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {macro}
  {empty_line:\\n}
  *paragraph C3
   *@inlinefmt C2 l5
   |EXTRA
   |expand_index:{1}
   |format:{html}
   >SOURCEMARKS
   >macro_expansion<end;1>
    *brace_arg C1
     {html}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument:\\n}
     {truc }
     >SOURCEMARKS
     >macro_expansion<start;1><p:5>
      >*macro_call@closebrace C1
       >*brace_arg
   {\\n}
   {machin\\n}
  {empty_line:\\n}
  *paragraph C1
   *@inlinefmt C2 l9
   |EXTRA
   |format:{tex}
    *brace_arg C1
     {tex}
    *elided_brace_command_arg C1
     {raw:\\nbidule @closebrace\\nafter\\n}
';


$result_texis{'closing_brace_in_macro_call_in_ignored_inline'} = '@macro closebrace
}
@end macro

@inlinefmt{html,
truc }
machin

@inlinefmt{tex,
bidule @closebrace
after
}';


$result_texts{'closing_brace_in_macro_call_in_ignored_inline'} = '
truc 
machin

';

$result_errors{'closing_brace_in_macro_call_in_ignored_inline'} = [
  {
    'error_line' => '@inlinefmt missing closing brace
',
    'line_nr' => 9,
    'text' => '@inlinefmt missing closing brace',
    'type' => 'error'
  }
];


$result_nodes_list{'closing_brace_in_macro_call_in_ignored_inline'} = '';

$result_sections_list{'closing_brace_in_macro_call_in_ignored_inline'} = '';

$result_sectioning_root{'closing_brace_in_macro_call_in_ignored_inline'} = '';

$result_headings_list{'closing_brace_in_macro_call_in_ignored_inline'} = '';

1;
