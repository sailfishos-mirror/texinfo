use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'utf8_enable_encoding_no_use_iso'} = '*document_root C1
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
  *paragraph C3
   {AA }
   *0 @^ C1 l3
    *following_arg C1
     {e}
   { --- -- \'` \'\' ``}
';


$result_texis{'utf8_enable_encoding_no_use_iso'} = '@documentencoding utf-8

AA @^e --- -- \'` \'\' ``';


$result_texts{'utf8_enable_encoding_no_use_iso'} = '
AA e^ -- - \'` " "';

$result_errors{'utf8_enable_encoding_no_use_iso'} = [];


$result_floats{'utf8_enable_encoding_no_use_iso'} = {};



$result_converted{'html_text'}->{'utf8_enable_encoding_no_use_iso'} = '
<p>AA ê — – ’‘ ” “</p>';

1;
