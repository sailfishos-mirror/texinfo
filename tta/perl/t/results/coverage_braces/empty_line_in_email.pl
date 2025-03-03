use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_line_in_email'} = '*document_root C1
 *before_node_section C4
  *paragraph C1
   *0 @email C1 l1
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ \\n}
     {empty_line:\\n}
  *paragraph C1
   {mail,\\n}
  {empty_line:\\n}
  *paragraph C1
   {text\\n}
';


$result_texis{'empty_line_in_email'} = '@email{ 

}mail,

text
';


$result_texts{'empty_line_in_email'} = '
mail,

text
';

$result_errors{'empty_line_in_email'} = [
  {
    'error_line' => '@email missing closing brace
',
    'line_nr' => 1,
    'text' => '@email missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 6,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];



$result_converted{'plaintext'}->{'empty_line_in_email'} = '<>
   mail,

   text
';


$result_converted{'html_text'}->{'empty_line_in_email'} = '<p>mail,
</p>
<p>text
</p>';


$result_converted{'latex_text'}->{'empty_line_in_email'} = '\\href{mailto:
}{\\nolinkurl{
}}mail,

text
';


$result_converted{'docbook'}->{'empty_line_in_email'} = '<para><email>
</email></para><para>mail,
</para>
<para>text
</para>';

1;
