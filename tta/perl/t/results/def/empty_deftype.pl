use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_deftype'} = '*document_root C1
 *before_node_section C7
  *0 @deftypefun C3 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l1
   |EXTRA
   |def_command:{deftypefun}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{f}
   |index_entry:I{fn,1}
   |original_def_cmdname:{deftypefun}
    *block_line_arg C13
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
     |INFO
     |inserted:{1}
      *def_line_arg C1
       {Function}
     (i){spaces: }
     *def_type C1
      *bracketed_arg l1
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {f}
     {spaces: }
     {delimiter:(}
     *def_typearg C1
      *def_line_arg C1
       {const}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {type&}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {x}
     {delimiter:)}
   *def_item C1
    *paragraph C1
     {Deftypefun.\\n}
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypefun}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypefun}
  {empty_line:\\n}
  *1 @defun C3 l5
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l5
   |EXTRA
   |def_command:{defun}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{f}
   |index_entry:I{fn,2}
   |original_def_cmdname:{defun}
    *block_line_arg C11
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
     |INFO
     |inserted:{1}
      *def_line_arg C1
       {Function}
     (i){spaces: }
     *def_name C1
      *def_line_arg C1
       {f}
     {spaces: }
     {delimiter:(}
     *def_arg C1
      *def_line_arg C1
       {const}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {type&}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {x}
     {delimiter:)}
   *def_item C1
    *paragraph C1
     {Defun.\\n}
   *@end C1 l7
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{defun}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {defun}
  {empty_line:\\n}
  *2 @deftypemethod C3 l9
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l9
   |EXTRA
   |def_command:{deftypemethod}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{f}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{c}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{f}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{c}
   |index_entry:I{fn,3}
   |original_def_cmdname:{deftypemethod}
    *block_line_arg C15
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
     |INFO
     |inserted:{1}
      *def_line_arg C1
       {Method}
     (i){spaces: }
     *def_class C1
      *def_line_arg C1
       {c}
     {spaces: }
     *def_type C1
      *bracketed_arg l9
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {f}
     {spaces: }
     {delimiter:(}
     *def_typearg C1
      *def_line_arg C1
       {const}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {type&}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {x}
     {delimiter:)}
   *def_item C1
    *paragraph C1
     {Deftypemethod.\\n}
   *@end C1 l11
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypemethod}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypemethod}
  {empty_line:\\n}
  *3 @defmethod C3 l13
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l13
   |EXTRA
   |def_command:{defmethod}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{f}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{c}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{f}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{c}
   |index_entry:I{fn,4}
   |original_def_cmdname:{defmethod}
    *block_line_arg C13
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
     |INFO
     |inserted:{1}
      *def_line_arg C1
       {Method}
     (i){spaces: }
     *def_class C1
      *def_line_arg C1
       {c}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {f}
     {spaces: }
     {delimiter:(}
     *def_arg C1
      *def_line_arg C1
       {const}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {type&}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {x}
     {delimiter:)}
   *def_item C1
    *paragraph C1
     {Defmethod.\\n}
   *@end C1 l15
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{defmethod}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {defmethod}
';


$result_texis{'empty_deftype'} = '@deftypefun {} f (const type& x)
Deftypefun.
@end deftypefun

@defun f (const type& x)
Defun.
@end defun

@deftypemethod c {} f (const type& x)
Deftypemethod.
@end deftypemethod

@defmethod c f (const type& x)
Defmethod.
@end defmethod
';


$result_texts{'empty_deftype'} = 'Function:  f (const type& x)
Deftypefun.

Function: f (const type& x)
Defun.

Method on c:  f (const type& x)
Deftypemethod.

Method on c: f (const type& x)
Defmethod.
';

$result_errors{'empty_deftype'} = [
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
    'line_nr' => 5,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 9,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 13,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'empty_deftype'} = {};


$result_indices_sort_strings{'empty_deftype'} = {
  'fn' => [
    'f',
    'f',
    'f on c',
    'f on c'
  ]
};


1;
