use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'prototype_no_brace'} = '*document_root C1
 *before_node_section C1
  *0 @multitable C2 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |max_columns:{0}
   *arguments_line C1
    *block_line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     {aa}
     *1 @var C1 l1
      *brace_container C1
       {FF}
     { b    cc}
   *@end C1 l2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{multitable}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {multitable}
';


$result_texis{'prototype_no_brace'} = '@multitable aa@var{FF} b    cc
@end multitable
';


$result_texts{'prototype_no_brace'} = '';

$result_errors{'prototype_no_brace'} = [
  {
    'error_line' => 'warning: unexpected argument on @multitable line: @var{FF}
',
    'line_nr' => 1,
    'text' => 'unexpected argument on @multitable line: @var{FF}',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty multitable
',
    'line_nr' => 1,
    'text' => 'empty multitable',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'prototype_no_brace'} = '';


$result_converted{'html_text'}->{'prototype_no_brace'} = '';


$result_converted{'xml'}->{'prototype_no_brace'} = '<multitable spaces=" " endspaces=" "><columnprototypes>aa<var>FF</var> b    cc</columnprototypes>
</multitable>
';

1;
