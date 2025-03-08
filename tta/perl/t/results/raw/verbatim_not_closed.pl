use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'verbatim_not_closed'} = '*document_root C1
 *before_node_section C1
  *0 @verbatim C6 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {raw:\\n}
   {raw:some verbatim @\\n}
   {raw:\\n}
   {raw:@macro\\n}
   {raw:\\n}
';


$result_texis{'verbatim_not_closed'} = '@verbatim

some verbatim @

@macro

';


$result_texts{'verbatim_not_closed'} = '
some verbatim @

@macro

';

$result_errors{'verbatim_not_closed'} = [
  {
    'error_line' => 'no matching `@end verbatim\'
',
    'line_nr' => 6,
    'text' => 'no matching `@end verbatim\'',
    'type' => 'error'
  }
];


1;
