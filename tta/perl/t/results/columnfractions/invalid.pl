use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'invalid'} = '*document_root C1
 *before_node_section C1
  *0 @multitable C2 l1
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
       |{\\n}
       {2x.2 2.23x}
   *@end C1 l2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{multitable}
    *line_arg C1
     {multitable}
';


$result_texis{'invalid'} = '@multitable @columnfractions 2x.2 2.23x
@end multitable';


$result_texts{'invalid'} = '';

$result_errors{'invalid'} = [
  {
    'error_line' => 'column fraction not a number: 2x.2
',
    'line_nr' => 1,
    'text' => 'column fraction not a number: 2x.2',
    'type' => 'error'
  },
  {
    'error_line' => 'column fraction not a number: 2.23x
',
    'line_nr' => 1,
    'text' => 'column fraction not a number: 2.23x',
    'type' => 'error'
  }
];


1;
