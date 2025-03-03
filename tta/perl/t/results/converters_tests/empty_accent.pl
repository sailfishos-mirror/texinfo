use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_accent'} = '*document_root C1
 *before_node_section C1
  *paragraph C2
   *0 @` C1 l1
    *brace_container
   {\\n}
';


$result_texis{'empty_accent'} = '@`{}
';


$result_texts{'empty_accent'} = '`
';

$result_errors{'empty_accent'} = [];



$result_converted{'plaintext'}->{'empty_accent'} = '̀
';


$result_converted{'html_text'}->{'empty_accent'} = '<p>&#768;
</p>';


$result_converted{'xml'}->{'empty_accent'} = '<para><accent type="grave"></accent>
</para>';


$result_converted{'docbook'}->{'empty_accent'} = '<para>&#768;
</para>';


$result_converted{'latex_text'}->{'empty_accent'} = '\\`{}
';

1;
