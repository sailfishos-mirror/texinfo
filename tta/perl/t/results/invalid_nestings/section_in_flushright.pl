use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'section_in_flushright'} = '*document_root C2
 *before_node_section C1
  *0 @flushright C4 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {empty_line:\\n}
   *paragraph C1
    {text flushed right\\n}
   {empty_line:\\n}
 *1 @section C1 l5 {a section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_level:{2}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {a section}
';


$result_texis{'section_in_flushright'} = '@flushright

text flushed right

@section a section
';


$result_texts{'section_in_flushright'} = '
text flushed right

1 a section
===========
';

$result_errors{'section_in_flushright'} = [
  {
    'error_line' => '@section seen before @end flushright
',
    'line_nr' => 5,
    'text' => '@section seen before @end flushright',
    'type' => 'error'
  }
];


1;
