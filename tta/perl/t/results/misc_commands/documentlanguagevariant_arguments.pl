use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'documentlanguagevariant_arguments'} = '*document_root C1
 *before_node_section C5
  *@documentlanguagevariant C1 l1
  |EXTRA
  |global_command_number:{1}
   *line_arg C3
    {spaces_before_argument: }
    {arg}
    {spaces_after_argument:\\n}
  *@documentlanguagevariant C2 l2
  |EXTRA
  |global_command_number:{2}
   *line_arg C2
    {spaces_before_argument: }
    {one}
   *line_arg C3
    {spaces_before_argument: }
    {two}
    {spaces_after_argument:\\n}
  *@documentlanguagevariant C2 l3
  |EXTRA
  |global_command_number:{3}
   *line_arg C3
    {spaces_before_argument: }
    {before comma}
    {spaces_after_argument: }
   *line_arg C1
    {spaces_before_argument:\\n}
  *@documentlanguagevariant C5 l4
  |EXTRA
  |global_command_number:{4}
   *line_arg C3
    {spaces_before_argument: }
    {first}
    {spaces_after_argument: }
   *line_arg C2
    {spaces_before_argument: }
    {second}
   *line_arg C3
    {spaces_before_argument: }
    {third}
    {spaces_after_argument: }
   *line_arg C1
    {fourth}
   *line_arg C1
    {spaces_before_argument:   \\n}
  *@documentlanguagevariant C1 l5
  |EXTRA
  |global_command_number:{5}
   *line_arg C1
    {spaces_before_argument:\\n}
';


$result_texis{'documentlanguagevariant_arguments'} = '@documentlanguagevariant arg
@documentlanguagevariant one, two
@documentlanguagevariant before comma ,
@documentlanguagevariant first , second, third ,fourth,   
@documentlanguagevariant
';


$result_texts{'documentlanguagevariant_arguments'} = '';

$result_errors{'documentlanguagevariant_arguments'} = '';

$result_nodes_list{'documentlanguagevariant_arguments'} = '';

$result_sections_list{'documentlanguagevariant_arguments'} = '';

$result_sectioning_root{'documentlanguagevariant_arguments'} = '';

$result_headings_list{'documentlanguagevariant_arguments'} = '';

1;
