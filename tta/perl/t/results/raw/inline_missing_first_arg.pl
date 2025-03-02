use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'inline_missing_first_arg'} = '*document_root C1
 *before_node_section C1
  *paragraph C4
   *0 @inlinefmt C2 l1
    *brace_arg
    |INFO
    |spaces_before_argument:
     |{ }
    *elided_brace_command_arg C1
     {raw: aaa}
   {. }
   *1 @inlineraw C2 l1
    *brace_arg
    *elided_brace_command_arg C1
     {raw: bbb}
   {.\\n}
';


$result_texis{'inline_missing_first_arg'} = '@inlinefmt{ , aaa}. @inlineraw{, bbb}.
';


$result_texts{'inline_missing_first_arg'} = '. .
';

$result_errors{'inline_missing_first_arg'} = [
  {
    'error_line' => 'warning: @inlinefmt missing first argument
',
    'line_nr' => 1,
    'text' => '@inlinefmt missing first argument',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @inlineraw missing first argument
',
    'line_nr' => 1,
    'text' => '@inlineraw missing first argument',
    'type' => 'warning'
  }
];


$result_floats{'inline_missing_first_arg'} = {};


1;
