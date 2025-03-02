use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'out_of_multitable'} = '*document_root C1
 *before_node_section C1
  *0 @columnfractions C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{0.6|0.4}
   *line_arg C1
    {0.6 0.4 aaa}
';


$result_texis{'out_of_multitable'} = '@columnfractions 0.6 0.4 aaa';


$result_texts{'out_of_multitable'} = '';

$result_errors{'out_of_multitable'} = [
  {
    'error_line' => 'column fraction not a number: aaa
',
    'line_nr' => 1,
    'text' => 'column fraction not a number: aaa',
    'type' => 'error'
  },
  {
    'error_line' => '@columnfractions only meaningful on a @multitable line
',
    'line_nr' => 1,
    'text' => '@columnfractions only meaningful on a @multitable line',
    'type' => 'error'
  }
];


$result_floats{'out_of_multitable'} = {};



$result_converted{'html_text'}->{'out_of_multitable'} = '';


$result_converted{'xml'}->{'out_of_multitable'} = '<columnfractions spaces=" " line="0.6 0.4 aaa"><columnfraction value="0.6"></columnfraction><columnfraction value="0.4"></columnfraction></columnfractions>';


$result_converted{'latex_text'}->{'out_of_multitable'} = '';

1;
