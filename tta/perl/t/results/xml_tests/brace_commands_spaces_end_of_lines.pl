use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'brace_commands_spaces_end_of_lines'} = '*document_root C1
 *before_node_section C17
  *0 @image C1 l1
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
   |INFO
   |spaces_before_argument:
    |{\\n}
    {a}
  {\\n}
  {empty_line:\\n}
  *1 @image C1 l4
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
   |INFO
   |spaces_before_argument:
    |{ \\n}
    {a}
  {\\n}
  {empty_line:\\n}
  *2 @image C2 l7
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {a}
   *brace_arg C1
   |INFO
   |spaces_before_argument:
    |{\\n}
    {b}
  {\\n}
  {empty_line:\\n}
  *3 @image C2 l10
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {a}
   *brace_arg C1
   |INFO
   |spaces_before_argument:
    |{ \\n}
    {b}
  {\\n}
  {empty_line:\\n}
  *4 @image C2 l13
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {a}
   *brace_arg C1
   |INFO
   |spaces_before_argument:
    |{\\n}
    { b}
  {\\n}
  {empty_line:\\n}
  *5 @image C2 l16
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {a}
   *brace_arg C1
   |INFO
   |spaces_before_argument:
    |{ \\n}
    { b}
  {\\n}
';


$result_texis{'brace_commands_spaces_end_of_lines'} = '@image{
a}

@image{ 
a}

@image{a,
b}

@image{a, 
b}

@image{a,
 b}

@image{a, 
 b}
';


$result_texts{'brace_commands_spaces_end_of_lines'} = 'a

a

a

a

a

a
';

$result_errors{'brace_commands_spaces_end_of_lines'} = [];



$result_converted{'xml'}->{'brace_commands_spaces_end_of_lines'} = '<image><imagefile spaces="\\n">a</imagefile></image>

<image><imagefile spaces=" \\n">a</imagefile></image>

<image><imagefile>a</imagefile><imagewidth spaces="\\n">b</imagewidth></image>

<image><imagefile>a</imagefile><imagewidth spaces=" \\n">b</imagewidth></image>

<image><imagefile>a</imagefile><imagewidth spaces="\\n"> b</imagewidth></image>

<image><imagefile>a</imagefile><imagewidth spaces=" \\n"> b</imagewidth></image>
';

1;
