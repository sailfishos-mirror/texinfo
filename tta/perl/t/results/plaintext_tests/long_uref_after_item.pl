use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'long_uref_after_item'} = '*document_root C1
 *before_node_section C1
  *0 @itemize C3 l1
  |EXTRA
  |command_as_argument:[E1]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *1 @bullet
     |INFO
     |inserted:{1}
   *@item C2 l2
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command:\\n}
    *paragraph C2
     *2 @uref C1 l3
      *brace_arg C1
       {http://foo.org/some/long/url/which/goes/past/eighty/columns/and/has/no/alternative/text.html}
     {\\n}
   *@end C1 l4
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


$result_texis{'long_uref_after_item'} = '@itemize
@item
@uref{http://foo.org/some/long/url/which/goes/past/eighty/columns/and/has/no/alternative/text.html}
@end itemize
';


$result_texts{'long_uref_after_item'} = 'http://foo.org/some/long/url/which/goes/past/eighty/columns/and/has/no/alternative/text.html
';

$result_errors{'long_uref_after_item'} = [];


$result_floats{'long_uref_after_item'} = {};



$result_converted{'plaintext'}->{'long_uref_after_item'} = '   • 
     <http://foo.org/some/long/url/which/goes/past/eighty/columns/and/has/no/alternative/text.html>
';

1;
