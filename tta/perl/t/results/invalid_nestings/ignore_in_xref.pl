use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'ignore_in_xref'} = '*document_root C2
 *before_node_section
 *0 @node C3 l1 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{first}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
  {empty_line:\\n}
  *paragraph C2
   *1 @xref C2 l3
    *brace_arg C1
    |EXTRA
    |node_content:{first}
    |normalized:{first}
     {first}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{\\n}
     *2 @ignore C3 l4
      *arguments_line C1
       *block_line_arg
       |INFO
       |spaces_after_argument:
        |{\\n}
      {raw:ignore me\\n}
      *@end C1 l6
      |INFO
      |spaces_before_argument:
       |{ }
      |EXTRA
      |text_arg:{ignore}
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {ignore}
   {.\\n}
';


$result_texis{'ignore_in_xref'} = '@node first

@xref{first,
@ignore
ignore me
@end ignore
}.
';


$result_texts{'ignore_in_xref'} = '
first.
';

$result_errors{'ignore_in_xref'} = [
  {
    'error_line' => 'warning: @ignore should not appear anywhere inside @xref
',
    'line_nr' => 4,
    'text' => '@ignore should not appear anywhere inside @xref',
    'type' => 'warning'
  }
];


1;
