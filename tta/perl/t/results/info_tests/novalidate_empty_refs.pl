use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'novalidate_empty_refs'} = '*document_root C5
 *before_node_section C3
  {empty_line:\\n}
  *@novalidate C1 l2
   {rawline_arg:\\n}
  {empty_line:\\n}
 *0 @node C4 l4 {Top}
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
  *paragraph C4
   *1 @xref C1 l6
    *brace_arg C1
    |EXTRA
    |node_content:{@:}
     *@:
   {.\\n}
   *2 @xref C1 l7
    *brace_arg C1
    |EXTRA
    |node_content:{@asis{ }}
    |normalized:{-}
     *3 @asis C1 l7
      *brace_container C1
       { }
   {.\\n}
  {empty_line:\\n}
 *4 @node C1 l9 {@
}
 |INFO
 |spaces_before_argument:
  |{ }
  *arguments_line C1
   *line_arg C1
    *@\\n
 *5 @node C1 l10 {@:}
 |INFO
 |spaces_before_argument:
  |{ }
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@:
 *6 @node C1 l11 {@asis{ }}
 |INFO
 |spaces_before_argument:
  |{ }
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *7 @asis C1 l11
     *brace_container C1
      { }
';


$result_texis{'novalidate_empty_refs'} = '
@novalidate

@node Top

@xref{@:}.
@xref{@asis{ }}.

@node @
@node @:
@node @asis{ }
';


$result_texts{'novalidate_empty_refs'} = '


.
 .

';

$result_nodes{'novalidate_empty_refs'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_menus{'novalidate_empty_refs'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'novalidate_empty_refs'} = [
  {
    'error_line' => 'warning: @ should not occur at end of argument to line command
',
    'line_nr' => 9,
    'text' => '@ should not occur at end of argument to line command',
    'type' => 'warning'
  },
  {
    'error_line' => 'empty node name after expansion `@
\'
',
    'line_nr' => 9,
    'text' => 'empty node name after expansion `@
\'',
    'type' => 'error'
  },
  {
    'error_line' => 'empty node name after expansion `@:\'
',
    'line_nr' => 10,
    'text' => 'empty node name after expansion `@:\'',
    'type' => 'error'
  },
  {
    'error_line' => 'empty node name after expansion `@asis{ }\'
',
    'line_nr' => 11,
    'text' => 'empty node name after expansion `@asis{ }\'',
    'type' => 'error'
  }
];


$result_floats{'novalidate_empty_refs'} = {};



$result_converted{'info'}->{'novalidate_empty_refs'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

*Note ::.  *Note ::.





Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
