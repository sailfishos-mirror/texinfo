use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'setfilename_in_paragraph'} = '*document_root C1
 *before_node_section C2
  *paragraph C1
   {Some text\\n}
  *@setfilename C1 l2
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |text_arg:{setfilename_in_paragraph.info}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {setfilename_in_paragraph.info}
';


$result_texis{'setfilename_in_paragraph'} = 'Some text
@setfilename setfilename_in_paragraph.info
';


$result_texts{'setfilename_in_paragraph'} = 'Some text
';

$result_errors{'setfilename_in_paragraph'} = [];



$result_converted{'plaintext'}->{'setfilename_in_paragraph'} = 'Some text
';


$result_converted{'html_text'}->{'setfilename_in_paragraph'} = '<p>Some text
</p>';


$result_converted{'xml'}->{'setfilename_in_paragraph'} = '<para>Some text
</para><setfilename file="setfilename_in_paragraph.info" spaces=" ">setfilename_in_paragraph.info</setfilename>
';


$result_converted{'latex_text'}->{'setfilename_in_paragraph'} = 'Some text
';


$result_converted{'docbook'}->{'setfilename_in_paragraph'} = '<para>Some text
</para>';

1;
