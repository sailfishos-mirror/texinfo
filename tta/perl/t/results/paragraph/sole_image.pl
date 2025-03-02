use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'sole_image'} = '*document_root C1
 *before_node_section C4
  *0 @image C1 l1
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {aa}
  {\\n}
  {empty_line:\\n}
  *paragraph C1
   {next para\\n}
';


$result_texis{'sole_image'} = '@image{aa}

next para
';


$result_texts{'sole_image'} = 'aa

next para
';

$result_errors{'sole_image'} = [];


$result_floats{'sole_image'} = {};



$result_converted{'plaintext'}->{'sole_image'} = 'Text for image out of paragraph.

next para
';


$result_converted{'html_text'}->{'sole_image'} = '<img class="image" src="aa.jpg" alt="aa">

<p>next para
</p>';

$result_converted_errors{'html_text'}->{'sole_image'} = [
  {
    'error_line' => 'warning: @image file `aa\' (for HTML) not found, using `aa.jpg\'
',
    'line_nr' => 1,
    'text' => '@image file `aa\' (for HTML) not found, using `aa.jpg\'',
    'type' => 'warning'
  }
];


1;
