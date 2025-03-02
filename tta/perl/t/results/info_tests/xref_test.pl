use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'xref_test'} = '*document_root C2
 *before_node_section C1
  {empty_line:\\n}
 *0 @node C3 l2
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
  *paragraph C10
   *1 @xref C1 l4
    *brace_arg C4
    |EXTRA
    |manual_content:{m}
    |node_content:{in xref}
     {(}
     {m}
     {)}
     {in xref}
   {. }
   *2 @xref C1 l4
    *brace_arg C4
    |EXTRA
    |manual_content:{m}
    |node_content:{bad xref}
     {(}
     {m}
     {)}
     {bad xref}
   { after xref.\\n}
   *3 @code C1 l5
    *brace_container C1
     *4 @xref C1 l5
      *brace_arg C4
      |EXTRA
      |manual_content:{m}
      |node_content:{bad nested xref}
       {(}
       {m}
       {)}
       {bad nested xref}
   {.\\n}
   *5 @xref C2 l6
    *brace_arg C4
    |EXTRA
    |manual_content:{m}
    |node_content:{in ref ending with a dot.}
     {(}
     {m}
     {)}
     {in ref ending with a dot.}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {name}
   { ! after xref and dot inside.\\n}
   *6 @xref C1 l7
    *brace_arg C4
    |EXTRA
    |manual_content:{m}
    |node_content:{in ref followed by symbol}
     {(}
     {m}
     {)}
     {in ref followed by symbol}
   {# g.\\n}
';


$result_texis{'xref_test'} = '
@node Top

@xref{(m)in xref}. @xref{(m)bad xref} after xref.
@code{@xref{(m)bad nested xref}}.
@xref{(m)in ref ending with a dot., name} ! after xref and dot inside.
@xref{(m)in ref followed by symbol}# g.
';


$result_texts{'xref_test'} = '

(m)in xref. (m)bad xref after xref.
(m)bad nested xref.
(m)in ref ending with a dot. ! after xref and dot inside.
(m)in ref followed by symbol# g.
';

$result_nodes{'xref_test'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_menus{'xref_test'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'xref_test'} = [];


$result_floats{'xref_test'} = {};



$result_converted{'info'}->{'xref_test'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

*Note (m)in xref::.  *Note (m)bad xref:: after xref.  ‘*Note (m)bad
nested xref::’.  *Note name: (m)in ref ending with a dot.. !  after xref
and dot inside.  *Note (m)in ref followed by symbol::# g.


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'xref_test'} = [
  {
    'error_line' => 'warning: @xref node name should not contain `.\'
',
    'line_nr' => 6,
    'text' => '@xref node name should not contain `.\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: `.\' or `,\' must follow @xref, not !
',
    'line_nr' => 6,
    'text' => '`.\' or `,\' must follow @xref, not !',
    'type' => 'warning'
  }
];


1;
