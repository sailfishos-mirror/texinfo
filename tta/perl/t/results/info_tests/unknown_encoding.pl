use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'unknown_encoding'} = '*document_root C2
 *before_node_section C3
  {empty_line:\\n}
  *@documentencoding C1 l2
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |text_arg:{ggg}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ggg}
  {empty_line:\\n}
 *0 @node C2 l4 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
';


$result_texis{'unknown_encoding'} = '
@documentencoding ggg

@node Top

';


$result_texts{'unknown_encoding'} = '


';

$result_errors{'unknown_encoding'} = [
  {
    'error_line' => 'warning: encoding `ggg\' is not a canonical texinfo encoding
',
    'line_nr' => 2,
    'text' => 'encoding `ggg\' is not a canonical texinfo encoding',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: unhandled encoding name `ggg\'
',
    'line_nr' => 2,
    'text' => 'unhandled encoding name `ggg\'',
    'type' => 'warning'
  }
];



$result_converted{'info'}->{'unknown_encoding'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
