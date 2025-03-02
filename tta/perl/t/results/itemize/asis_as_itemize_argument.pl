use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'asis_as_itemize_argument'} = '*document_root C1
 *before_node_section C1
  *0 @itemize C3 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E1]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *1 @asis l1
   *@item C2 l2
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {as is\\n}
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{itemize}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {itemize}
';


$result_texis{'asis_as_itemize_argument'} = '@itemize @asis
@item as is
@end itemize
';


$result_texts{'asis_as_itemize_argument'} = 'as is
';

$result_errors{'asis_as_itemize_argument'} = [
  {
    'error_line' => 'warning: @asis expected braces
',
    'line_nr' => 1,
    'text' => '@asis expected braces',
    'type' => 'warning'
  }
];


$result_floats{'asis_as_itemize_argument'} = {};



$result_converted{'plaintext'}->{'asis_as_itemize_argument'} = '     as is
';


$result_converted{'html_text'}->{'asis_as_itemize_argument'} = '<ul class="itemize">
<li>as is
</li></ul>
';


$result_converted{'xml'}->{'asis_as_itemize_argument'} = '<itemize commandarg="asis" spaces=" " endspaces=" ">
<listitem><prepend></prepend> <para>as is
</para></listitem></itemize>
';

1;
