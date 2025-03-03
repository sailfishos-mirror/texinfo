use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'ref_in_preformatted'} = '*document_root C3
 *before_node_section
 *0 @node C6 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E1]
 |node_directions:D[next->E4]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *1 @menu C3 l3
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l4
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chap nnn the node name}
    |normalized:{chap-nnn-the-node-name}
     {chap nnn the node name}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l5
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {menu}
  {empty_line:\\n}
  *2 @example C3 l7
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C3
    {Now }
    *3 @ref C1 l8
     *brace_arg C2
     |EXTRA
     |node_content:{chap nnn the\\nnode name}
     |normalized:{chap-nnn-the-node-name}
      {chap nnn the\\n}
      {node name}
    {\\n}
   *@end C1 l10
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{example}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {example}
  {empty_line:\\n}
 *4 @node C1 l12 {chap nnn the node name}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap-nnn-the-node-name}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap nnn the node name}
';


$result_texis{'ref_in_preformatted'} = '@node Top

@menu
* chap nnn the node name::
@end menu

@example
Now @ref{chap nnn the
node name}
@end example

@node chap nnn the node name
';


$result_texts{'ref_in_preformatted'} = '
* chap nnn the node name::

Now chap nnn the
node name

';

$result_errors{'ref_in_preformatted'} = [];



$result_converted{'html_text'}->{'ref_in_preformatted'} = '<h1 class="node" id="Top"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>


<div class="example">
<pre class="example-preformatted">Now <a class="ref" href="#chap-nnn-the-node-name">chap nnn the
node name</a>
</pre></div>

<hr>
<h4 class="node" id="chap-nnn-the-node-name"><span>chap nnn the node name<a class="copiable-link" href="#chap-nnn-the-node-name"> &para;</a></span></h4>
';

1;
