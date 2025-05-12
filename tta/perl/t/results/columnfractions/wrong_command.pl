use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'wrong_command'} = '*document_root C1
 *before_node_section C1
  *@multitable C2 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |max_columns:{0}
   *arguments_line C1
    *block_line_arg C1
     *@columnfractions C1 l1
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{ \\n}
       *@b C1 l1
        *brace_container C1
         {3.4}
   *@end C1 l2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{multitable}
    *line_arg C1
     {multitable}
';


$result_texis{'wrong_command'} = '@multitable @columnfractions @b{3.4} 
@end multitable';


$result_texts{'wrong_command'} = '';

$result_errors{'wrong_command'} = [
  {
    'error_line' => 'warning: @b should not appear in @columnfractions
',
    'line_nr' => 1,
    'text' => '@b should not appear in @columnfractions',
    'type' => 'warning'
  },
  {
    'error_line' => 'superfluous argument to @columnfractions
',
    'line_nr' => 1,
    'text' => 'superfluous argument to @columnfractions',
    'type' => 'error'
  }
];


$result_nodes_list{'wrong_command'} = '';

$result_sections_list{'wrong_command'} = '';


$result_converted{'html_text'}->{'wrong_command'} = '';


$result_converted{'xml'}->{'wrong_command'} = '<multitable spaces=" " endspaces=" "><columnfractions spaces=" " line="@b{3.4} "></columnfractions>
</multitable>';


$result_converted{'latex_text'}->{'wrong_command'} = '\\begin{tabular}{}%
\\end{tabular}%
';

1;
