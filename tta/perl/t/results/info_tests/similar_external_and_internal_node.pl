use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'similar_external_and_internal_node'} = '*document_root C2
 *before_node_section
 *0 @node C3 l1 {aa}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->MISSING: (line_arg)[C4]]
 |normalized:{aa}
  *arguments_line C2
   *line_arg C1
    {aa}
   *line_arg C4
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |manual_content:{toto}
   |node_content:{bb}
   |normalized:{bb}
    {(}
    {toto}
    {)}
    {bb}
  {empty_line:\\n}
  *paragraph C8
   *1 @xref C4 l3
    *brace_arg C1
    |EXTRA
    |node_content:{@emph{aa}}
     *2 @emph C1 l3
      *brace_container C1
       {aa}
    *brace_arg
    *brace_arg
    *brace_arg C1
     {ext}
   {.\\n}
   *3 @xref C5 l4
    *brace_arg C1
    |EXTRA
    |node_content:{@var{aa}}
     *4 @var C1 l4
      *brace_container C1
       {aa}
    *brace_arg
    *brace_arg
    *brace_arg
    *brace_arg C1
     {Book}
   {.\\n}
   *5 @xref C1 l5
    *brace_arg C1
    |EXTRA
    |node_content:{@emph{aa}}
    |normalized:{aa}
     *6 @emph C1 l5
      *brace_container C1
       {aa}
   {.\\n}
   *7 @xref C1 l6
    *brace_arg C1
    |EXTRA
    |node_content:{@var{aa}}
    |normalized:{aa}
     *8 @var C1 l6
      *brace_container C1
       {aa}
   {.\\n}
';


$result_texis{'similar_external_and_internal_node'} = '@node aa, (toto)bb

@xref{@emph{aa},,,ext}.
@xref{@var{aa},,,,Book}.
@xref{@emph{aa}}.
@xref{@var{aa}}.
';


$result_texts{'similar_external_and_internal_node'} = '
aa.
aa.
aa.
aa.
';

$result_nodes{'similar_external_and_internal_node'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'extra' => {
            'manual_content' => {},
            'normalized' => 'bb'
          },
          'type' => 'line_arg'
        }
      },
      'normalized' => 'aa'
    }
  }
];

$result_menus{'similar_external_and_internal_node'} = [
  {
    'extra' => {
      'normalized' => 'aa'
    }
  }
];

$result_errors{'similar_external_and_internal_node'} = [
  {
    'error_line' => 'warning: @xref to `@emph{aa}\', different from node name `aa\'
',
    'line_nr' => 5,
    'text' => '@xref to `@emph{aa}\', different from node name `aa\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @xref to `@var{aa}\', different from node name `aa\'
',
    'line_nr' => 6,
    'text' => '@xref to `@var{aa}\', different from node name `aa\'',
    'type' => 'warning'
  }
];


$result_floats{'similar_external_and_internal_node'} = {};



$result_converted{'info'}->{'similar_external_and_internal_node'} = 'This is , produced from .


File: ,  Node: aa,  Next: (toto)bb

*Note (ext)_aa_::.  *Note ()AA::.  *Note aa::.  *Note aa::.


Tag Table:
Node: aa27

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'similar_external_and_internal_node'} = [
  {
    'error_line' => 'warning: document without Top node
',
    'text' => 'document without Top node',
    'type' => 'warning'
  }
];


1;
