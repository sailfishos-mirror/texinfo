use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'no_paragraph_commands'} = '*document_root C1
 *before_node_section C6
  *@*
  {\\n}
  *0 @titlefont C1 l2
  |EXTRA
  |global_command_number:{1}
   *brace_container C1
    {title font}
  {\\n}
  *1 @image C5 l3
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {aa}
   *brace_arg C1
    {bb}
   *brace_arg C1
    {cc}
   *brace_arg C1
    {dd}
   *brace_arg C1
    {.ee}
  {\\n}
';


$result_texis{'no_paragraph_commands'} = '@*
@titlefont{title font}
@image{aa,bb,cc,dd,.ee}
';


$result_texts{'no_paragraph_commands'} = '

title font
aa
';

$result_errors{'no_paragraph_commands'} = [];


$result_floats{'no_paragraph_commands'} = {};



$result_converted{'plaintext'}->{'no_paragraph_commands'} = '

title font
**********
Text for image out of paragraph.
';


$result_converted{'html_text'}->{'no_paragraph_commands'} = '<br>
<h1 class="titlefont">title font</h1>
<img class="image" src="aa.ee" alt="dd">
';

$result_converted_errors{'html_text'}->{'no_paragraph_commands'} = [
  {
    'error_line' => 'warning: @image file `aa\' (for HTML) not found, using `aa.ee\'
',
    'line_nr' => 3,
    'text' => '@image file `aa\' (for HTML) not found, using `aa.ee\'',
    'type' => 'warning'
  }
];


1;
