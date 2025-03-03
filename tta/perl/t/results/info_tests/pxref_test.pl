use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'pxref_test'} = '*document_root C2
 *before_node_section
 *0 @node C3 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *paragraph C9
   {Hey (}
   *1 @pxref C1 l3
    *brace_arg C5
    |EXTRA
    |manual_content:{m}
    |node_content:{in pxref}
     {(}
     {m}
     {)}
     { }
     {in pxref}
   {) and continue (}
   *2 @pxref C2 l3
    *brace_arg C5
    |EXTRA
    |manual_content:{m}
    |node_content:{in pxref}
     {(}
     {m}
     {)}
     { }
     {in pxref}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {name}
   {) and end.\\n}
   *3 @pxref C1 l4
    *brace_arg C5
    |EXTRA
    |manual_content:{m}
    |node_content:{n}
     {(}
     {m}
     {)}
     { }
     {n}
   {. }
   *4 @pxref C2 l4
    *brace_arg C5
    |EXTRA
    |manual_content:{m}
    |node_content:{n}
     {(}
     {m}
     {)}
     { }
     {n}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {name}
   {.\\n}
';


$result_texis{'pxref_test'} = '@node Top

Hey (@pxref{(m) in pxref}) and continue (@pxref{(m) in pxref, name}) and end.
@pxref{(m) n}. @pxref{(m) n, name}.
';


$result_texts{'pxref_test'} = '
Hey ((m) in pxref) and continue ((m) in pxref) and end.
(m) n. (m) n.
';

$result_errors{'pxref_test'} = [];



$result_converted{'info'}->{'pxref_test'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

Hey (*note (m) in pxref::) and continue (*note name: (m) in pxref.) and
end.  *note (m) n::.  *note name: (m) n.


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
