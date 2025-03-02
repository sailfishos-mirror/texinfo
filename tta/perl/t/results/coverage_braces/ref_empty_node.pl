use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'ref_empty_node'} = '*document_root C1
 *before_node_section C2
  {empty_line:\\n}
  *paragraph C8
   *0 @ref C4 l2
    *brace_arg
    *brace_arg
    *brace_arg
    *brace_arg C1
     {manual}
   { }
   *1 @ref C5 l2
    *brace_arg
    *brace_arg
    *brace_arg
    *brace_arg
    |INFO
    |spaces_before_argument:
     |{ }
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {Manual}
   { }
   *2 @inforef C3 l2
    *brace_arg
    *brace_arg
    *brace_arg C1
     {imanual}
   {\\n}
   *3 @xref C5 l3
    *brace_arg
    |INFO
    |spaces_before_argument:
     |{ }
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {Bidule}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {Truc}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {file}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {Printed}
   {.\\n}
';


$result_texis{'ref_empty_node'} = '
@ref{,,,manual} @ref{,,, , Manual} @inforef{,,imanual}
@xref{ , Bidule, Truc, file, Printed}.
';


$result_texts{'ref_empty_node'} = '
  
.
';

$result_errors{'ref_empty_node'} = [
  {
    'error_line' => 'warning: @inforef is obsolete
',
    'line_nr' => 2,
    'text' => '@inforef is obsolete',
    'type' => 'warning'
  }
];


$result_floats{'ref_empty_node'} = {};


1;
