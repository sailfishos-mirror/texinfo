use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'comment_between_text'} = '*document_root C1
 *before_node_section C1
  *paragraph C3
   {text\\n}
   *@c C1
    {rawline_arg: comment\\n}
   {end para}
';


$result_texis{'comment_between_text'} = 'text
@c comment
end para';


$result_texts{'comment_between_text'} = 'text
end para';

$result_errors{'comment_between_text'} = [];



$result_converted{'plaintext'}->{'comment_between_text'} = 'text end para
';


$result_converted{'html_text'}->{'comment_between_text'} = '<p>text
end para</p>';

1;
