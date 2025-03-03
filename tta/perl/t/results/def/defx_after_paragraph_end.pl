use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'defx_after_paragraph_end'} = '*document_root C1
 *before_node_section C1
  *0 @deffn C4 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l1
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |*2 @var C1
       |*brace_container C1
        |{i}
   |index_entry:I{fn,1}
   |original_def_cmdname:{deffn}
    *block_line_arg C7
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {fset}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *1 @var C1 l1
        *brace_container C1
         {i}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {a}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {g}
   *inter_def_item C2
    *paragraph C1
     {Text in paragraph.\\n}
    {empty_line:\\n}
   *@deffnx C1 l4
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{bidulr}
   |index_entry:I{fn,2}
   |not_after_command:{1}
   |original_def_cmdname:{deffnx}
    *line_arg C5
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *bracketed_arg C1 l4
       {truc}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {bidulr}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {machin...}
   *@end C1 l5
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deffn}
    *line_arg C1
     {deffn}
';


$result_texis{'defx_after_paragraph_end'} = '@deffn fset @var{i} a g
Text in paragraph.

@deffnx {truc} bidulr machin...
@end deffn';


$result_texts{'defx_after_paragraph_end'} = 'fset: i a g
Text in paragraph.

truc: bidulr machin...
';

$result_errors{'defx_after_paragraph_end'} = [
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 1,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'must be after `@deffn\' to use `@deffnx\'
',
    'line_nr' => 4,
    'text' => 'must be after `@deffn\' to use `@deffnx\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 4,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'defx_after_paragraph_end'} = {
  'fn' => [
    'bidulr',
    'i'
  ]
};


1;
