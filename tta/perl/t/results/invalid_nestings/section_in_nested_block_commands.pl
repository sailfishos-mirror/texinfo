use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'section_in_nested_block_commands'} = '*document_root C2
 *before_node_section C1
  *0 @table C2 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E1]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *1 @strong l1
   *table_entry C2
    *table_term C1
     *@item C1 l2
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {item}
    *table_definition C3
     *paragraph C1
      {table line\\n}
     {empty_line:\\n}
     *2 @quotation C4 l5
      *arguments_line C1
       *block_line_arg
       |INFO
       |spaces_after_argument:
        |{\\n}
      {empty_line:\\n}
      *paragraph C1
       {in quotation\\n}
      {empty_line:\\n}
 *3 @section C1 l9 {a section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_level:{2}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E3]
  ||section_level:{1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {a section}
';


$result_texis{'section_in_nested_block_commands'} = '@table @strong
@item item
table line

@quotation

in quotation

@section a section
';


$result_texts{'section_in_nested_block_commands'} = 'item
table line


in quotation

1 a section
===========
';

$result_errors{'section_in_nested_block_commands'} = [
  {
    'error_line' => '@section seen before @end quotation
',
    'line_nr' => 9,
    'text' => '@section seen before @end quotation',
    'type' => 'error'
  },
  {
    'error_line' => '@section seen before @end table
',
    'line_nr' => 9,
    'text' => '@section seen before @end table',
    'type' => 'error'
  }
];


$result_floats{'section_in_nested_block_commands'} = {};



$result_converted{'plaintext'}->{'section_in_nested_block_commands'} = '*item*
     table line

          in quotation

1 a section
===========

';


$result_converted{'xml'}->{'section_in_nested_block_commands'} = '<table commandarg="strong" spaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="strong">item</itemformat></item>
</tableterm><tableitem><para>table line
</para>
<quotation>

<para>in quotation
</para>
</quotation>
</tableitem></tableentry></table>
<section spaces=" "><sectiontitle>a section</sectiontitle>
</section>
';

1;
