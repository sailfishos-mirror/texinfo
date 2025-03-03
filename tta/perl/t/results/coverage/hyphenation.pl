use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'hyphenation'} = '*document_root C1
 *before_node_section C4
  {empty_line:\\n}
  *0 @hyphenation C1 l2
  |EXTRA
  |global_command_number:{1}
   *brace_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {some-where}
  {spaces_after_close_brace:\\n}
  {empty_line:\\n}
';


$result_texis{'hyphenation'} = '
@hyphenation{some-where }

';


$result_texts{'hyphenation'} = '

';

$result_errors{'hyphenation'} = [];



$result_converted{'plaintext'}->{'hyphenation'} = '';


$result_converted{'html_text'}->{'hyphenation'} = '

';


$result_converted{'xml'}->{'hyphenation'} = '
<hyphenation>some-where </hyphenation>

';


$result_converted{'latex_text'}->{'hyphenation'} = '
\\hyphenation{some-where}
';


$result_converted{'docbook'}->{'hyphenation'} = '

';

1;
