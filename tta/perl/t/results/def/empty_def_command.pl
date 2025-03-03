use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_def_command'} = '*document_root C1
 *before_node_section C3
  *0 @deffn C2 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l1
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{deffn}
   |index_entry:I{fn,1}
   |original_def_cmdname:{deffn}
    *block_line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {empty}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {deffn}
   *@end C1 l2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deffn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deffn}
  {empty_line:\\n}
  *1 @deffn C3 l4
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l4
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{deffn}
   |index_entry:I{fn,2}
   |original_def_cmdname:{deffn}
    *block_line_arg C7
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {empty}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {deffn}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {with}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {deffnx}
   *@deffnx C1 l5
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{deffnx}
   |index_entry:I{fn,3}
   |original_def_cmdname:{deffnx}
    *line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {empty}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {deffnx}
   *@end C1 l6
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deffn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deffn}
';


$result_texis{'empty_def_command'} = '@deffn empty deffn
@end deffn

@deffn empty deffn with deffnx
@deffnx empty deffnx
@end deffn
';


$result_texts{'empty_def_command'} = 'empty: deffn

empty: deffn with deffnx
empty: deffnx
';

$result_errors{'empty_def_command'} = [
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 1,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 4,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 5,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'empty_def_command'} = {
  'fn' => [
    'deffn',
    'deffn',
    'deffnx'
  ]
};



$result_converted{'plaintext'}->{'empty_def_command'} = ' -- empty: deffn

 -- empty: deffn with deffnx
 -- empty: deffnx
';

1;
