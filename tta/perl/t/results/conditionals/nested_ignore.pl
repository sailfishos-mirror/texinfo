use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'nested_ignore'} = '*document_root C1
 *before_node_section C1
  *@ignore C14 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {raw:@ignore\\n}
   {raw:\\n}
   {raw:@end ignore\\n}
   {raw:\\n}
   {raw:@ignore\\n}
   {raw:@end iftex\\n}
   {raw:@ifinfo\\n}
   {raw:@end ignore\\n}
   {raw:\\n}
   {raw:@ignore \\n}
   {raw:@end ifclear\\n}
   {raw:@ifclear\\n}
   {raw:@end ignore\\n}
';


$result_texis{'nested_ignore'} = '@ignore
@ignore

@end ignore

@ignore
@end iftex
@ifinfo
@end ignore

@ignore 
@end ifclear
@ifclear
@end ignore
';


$result_texts{'nested_ignore'} = '';

$result_errors{'nested_ignore'} = [
  {
    'error_line' => 'no matching `@end ignore\'
',
    'line_nr' => 14,
    'text' => 'no matching `@end ignore\'',
    'type' => 'error'
  }
];


1;
