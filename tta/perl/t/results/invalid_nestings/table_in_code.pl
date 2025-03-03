use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'table_in_code'} = '*document_root C1
 *before_node_section C3
  *paragraph C1
   *0 @code C1 l1
    *brace_container C2
     {\\n}
     {in code\\n}
  *1 @table C3 l3
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E2]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *2 @emph l3
   *table_entry C2
    *table_term C1
     *@item C1 l4
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {line}
    *table_definition C1
     *paragraph C1
      {text\\n}
   *@end C1 l6
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
';


$result_texis{'table_in_code'} = '@code{
in code
}@table @emph
@item line
text
@end table

';


$result_texts{'table_in_code'} = '
in code
line
text

';

$result_errors{'table_in_code'} = [
  {
    'error_line' => '@code missing closing brace
',
    'line_nr' => 1,
    'text' => '@code missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 7,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];



$result_converted{'plaintext'}->{'table_in_code'} = '‘ in code ’
_line_
     text

';


$result_converted{'xml'}->{'table_in_code'} = '<para><code>
in code
</code></para><table commandarg="emph" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="emph">line</itemformat></item>
</tableterm><tableitem><para>text
</para></tableitem></tableentry></table>

';

1;
