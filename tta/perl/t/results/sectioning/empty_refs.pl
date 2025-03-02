use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_refs'} = '*document_root C1
 *before_node_section C1
  *paragraph C4
   *0 @xref C1 l1
    *brace_arg C1
    |EXTRA
    |node_content:{@:}
     *@:
   {.\\n}
   *1 @xref C1 l2
    *brace_arg C1
    |EXTRA
    |node_content:{@asis{ }}
    |normalized:{-}
     *2 @asis C1 l2
      *brace_container C1
       { }
   {.\\n}
';


$result_texis{'empty_refs'} = '@xref{@:}.
@xref{@asis{ }}.
';


$result_texts{'empty_refs'} = '.
 .
';

$result_errors{'empty_refs'} = [
  {
    'error_line' => '@xref reference to nonexistent node `@:\'
',
    'line_nr' => 1,
    'text' => '@xref reference to nonexistent node `@:\'',
    'type' => 'error'
  },
  {
    'error_line' => '@xref reference to nonexistent node `@asis{ }\'
',
    'line_nr' => 2,
    'text' => '@xref reference to nonexistent node `@asis{ }\'',
    'type' => 'error'
  }
];


$result_floats{'empty_refs'} = {};


1;
