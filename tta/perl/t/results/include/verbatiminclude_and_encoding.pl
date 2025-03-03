use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'verbatiminclude_and_encoding'} = '*document_root C1
 *before_node_section C3
  *@documentencoding C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |input_encoding_name:{utf-8}
  |text_arg:{utf-8}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {utf-8}
  {empty_line:\\n}
  *@verbatiminclude C1 l3
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |input_encoding_name:{utf-8}
  |text_arg:{verbatim_encoded.texi}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {verbatim_encoded.texi}
';


$result_texis{'verbatiminclude_and_encoding'} = '@documentencoding utf-8

@verbatiminclude verbatim_encoded.texi
';


$result_texts{'verbatiminclude_and_encoding'} = '
';

$result_errors{'verbatiminclude_and_encoding'} = [];



$result_converted{'plaintext'}->{'verbatiminclude_and_encoding'} = 'é
';

1;
