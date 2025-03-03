use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'sc_with_utf8_enable_encoding'} = '*document_root C1
 *before_node_section C2
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
  *paragraph C2
   *0 @sc C1 l2
    *brace_container C1
     {in sc}
   {.\\n}
';


$result_texis{'sc_with_utf8_enable_encoding'} = '@documentencoding utf-8
@sc{in sc}.
';


$result_texts{'sc_with_utf8_enable_encoding'} = 'IN SC.
';

$result_errors{'sc_with_utf8_enable_encoding'} = [];



$result_converted{'plaintext'}->{'sc_with_utf8_enable_encoding'} = 'IN SC.
';

1;
