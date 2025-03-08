use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'closing_brace_in_value_in_ignored_inline'} = '*document_root C1
 *before_node_section C5
  *@set C2
  |INFO
  |arg_line:{ closebrace }\\n}
   {rawline_arg:closebrace}
   {rawline_arg:}}
  {empty_line:\\n}
  *paragraph C3
   *0 @inlinefmt C2 l3
   |EXTRA
   |expand_index:{1}
   |format:{html}
   >SOURCEMARKS
   >value_expansion<end;1>
    *brace_arg C1
     {html}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{\\n}
     {truc }
     >SOURCEMARKS
     >value_expansion<start;1><p:5>{}}
      >*@value C1
       >*brace_container C1
        >{closebrace}
   {\\n}
   {machin\\n}
  {empty_line:\\n}
  *paragraph C1
   *1 @inlinefmt C2 l7
   |EXTRA
   |format:{tex}
    *brace_arg C1
     {tex}
    *elided_brace_command_arg C1
     {raw:\\nbidule @value{closebrace}\\nafter\\n}
';


$result_texis{'closing_brace_in_value_in_ignored_inline'} = '@set closebrace }

@inlinefmt{html,
truc }
machin

@inlinefmt{tex,
bidule @value{closebrace}
after
}';


$result_texts{'closing_brace_in_value_in_ignored_inline'} = '
truc 
machin

';

$result_errors{'closing_brace_in_value_in_ignored_inline'} = [
  {
    'error_line' => '@inlinefmt missing closing brace
',
    'line_nr' => 7,
    'text' => '@inlinefmt missing closing brace',
    'type' => 'error'
  }
];


1;
