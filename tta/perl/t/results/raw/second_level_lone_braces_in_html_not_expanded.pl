use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'second_level_lone_braces_in_html_not_expanded'} = '*document_root C1
 *before_node_section C3
  *0 @html C3 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *elided_rawpreformatted C2
    {raw:{a@code{{\\n}
    {raw:}}\\n}
   *@end C1 l4
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{html}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {html}
  {empty_line:\\n}
  *1 @html C3 l6
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *elided_rawpreformatted C3
    {raw:{b@code{\\n}
    {raw:{c d}\\n}
    {raw:}\\n}
   *@end C1 l10
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{html}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {html}
';


$result_texis{'second_level_lone_braces_in_html_not_expanded'} = '@html
{a@code{{
}}
@end html

@html
{b@code{
{c d}
}
@end html
';


$result_texts{'second_level_lone_braces_in_html_not_expanded'} = '
';

$result_errors{'second_level_lone_braces_in_html_not_expanded'} = [];



$result_converted{'plaintext'}->{'second_level_lone_braces_in_html_not_expanded'} = '';


$result_converted{'xml'}->{'second_level_lone_braces_in_html_not_expanded'} = '<html endspaces=" ">
{a@code{{
}}
</html>

<html endspaces=" ">
{b@code{
{c d}
}
</html>
';

1;
