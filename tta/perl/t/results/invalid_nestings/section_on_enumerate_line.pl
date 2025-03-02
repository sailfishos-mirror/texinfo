use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'section_on_enumerate_line'} = '*document_root C3
 *before_node_section C1
  *0 @enumerate C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |enumerate_specification:{1}
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{ }
     {something}
 *1 @section C3 l1 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E3]
 |section_level:{2}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E3]
  ||section_level:{1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
  {empty_line:\\n}
  *2 @enumerate C1 l3
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |enumerate_specification:{4}
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{ }
     {4}
 *3 @section C1 l3 {second}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E1]
 |section_level:{2}
 |section_number:{2}
 |toplevel_directions:D[prev->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {second}
';


$result_texis{'section_on_enumerate_line'} = '@enumerate something @section first

@enumerate 4 @section second
';


$result_texts{'section_on_enumerate_line'} = '1 first
=======

2 second
========
';

$result_errors{'section_on_enumerate_line'} = [
  {
    'error_line' => 'warning: @section should only appear at the beginning of a line
',
    'line_nr' => 1,
    'text' => '@section should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @section should not appear on @enumerate line
',
    'line_nr' => 1,
    'text' => '@section should not appear on @enumerate line',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @enumerate
',
    'line_nr' => 1,
    'text' => 'bad argument to @enumerate',
    'type' => 'error'
  },
  {
    'error_line' => '@section seen before @end enumerate
',
    'line_nr' => 1,
    'text' => '@section seen before @end enumerate',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @section should only appear at the beginning of a line
',
    'line_nr' => 3,
    'text' => '@section should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @section should not appear on @enumerate line
',
    'line_nr' => 3,
    'text' => '@section should not appear on @enumerate line',
    'type' => 'warning'
  },
  {
    'error_line' => '@section seen before @end enumerate
',
    'line_nr' => 3,
    'text' => '@section seen before @end enumerate',
    'type' => 'error'
  }
];


$result_floats{'section_on_enumerate_line'} = {};



$result_converted{'plaintext'}->{'section_on_enumerate_line'} = '1 first
=======

2 second
========

';


$result_converted{'xml'}->{'section_on_enumerate_line'} = '<enumerate first="1" spaces=" "><enumeratefirst>something </enumeratefirst>
</enumerate>
<section spaces=" "><sectiontitle>first</sectiontitle>

<enumerate first="4" spaces=" "><enumeratefirst>4 </enumeratefirst>
</enumerate>
</section>
<section spaces=" "><sectiontitle>second</sectiontitle>
</section>
';

1;
