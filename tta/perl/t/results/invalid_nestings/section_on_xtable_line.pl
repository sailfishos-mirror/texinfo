use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'section_on_xtable_line'} = '*document_root C5
 *before_node_section C1
  *0 @vtable C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
     *1 @asis
     |INFO
     |inserted:{1}
 *2 @section C3 l1 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E6]
 |section_level:{2}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E2|E6|E9|E13]
  ||section_level:{1}
 |toplevel_directions:D[next->E6]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
  {empty_line:\\n}
  *3 @table C1 l3
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{ }
     *4 @asis
     |INFO
     |inserted:{1}
     *5 @TeX l3
 *6 @section C3 l3 {second}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E9|prev->E2]
 |section_level:{2}
 |section_number:{2}
 |toplevel_directions:D[next->E9|prev->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {second}
  {empty_line:\\n}
  *7 @table C1 l5
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{ }
     *8 @code l5
 *9 @section C3 l5 {third}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E13|prev->E6]
 |section_level:{2}
 |section_number:{3}
 |toplevel_directions:D[next->E13|prev->E6]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {third}
  {empty_line:\\n}
  *10 @ftable C1 l7
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C2
     *11 @asis
     |INFO
     |inserted:{1}
     *12 @ringaccent l7
     |INFO
     |spaces_after_cmd_before_arg:
      |{ }
 *13 @section C1 l7 {fourth}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E9]
 |section_level:{2}
 |section_number:{4}
 |toplevel_directions:D[prev->E9]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fourth}
';


$result_texis{'section_on_xtable_line'} = '@vtable @section first

@table @TeX @section second

@table @code @section third

@ftable @ringaccent @section fourth
';


$result_texts{'section_on_xtable_line'} = '1 first
=======

2 second
========

3 third
=======

4 fourth
========
';

$result_errors{'section_on_xtable_line'} = [
  {
    'error_line' => 'warning: @section should only appear at the beginning of a line
',
    'line_nr' => 1,
    'text' => '@section should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @section should not appear on @vtable line
',
    'line_nr' => 1,
    'text' => '@section should not appear on @vtable line',
    'type' => 'warning'
  },
  {
    'error_line' => 'missing @vtable argument
',
    'line_nr' => 1,
    'text' => 'missing @vtable argument',
    'type' => 'error'
  },
  {
    'error_line' => '@section seen before @end vtable
',
    'line_nr' => 1,
    'text' => '@section seen before @end vtable',
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
    'error_line' => 'warning: @section should not appear on @table line
',
    'line_nr' => 3,
    'text' => '@section should not appear on @table line',
    'type' => 'warning'
  },
  {
    'error_line' => 'command @TeX not accepting argument in brace should not be on @table line
',
    'line_nr' => 3,
    'text' => 'command @TeX not accepting argument in brace should not be on @table line',
    'type' => 'error'
  },
  {
    'error_line' => '@section seen before @end table
',
    'line_nr' => 3,
    'text' => '@section seen before @end table',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @section should only appear at the beginning of a line
',
    'line_nr' => 5,
    'text' => '@section should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @section should not appear on @table line
',
    'line_nr' => 5,
    'text' => '@section should not appear on @table line',
    'type' => 'warning'
  },
  {
    'error_line' => '@section seen before @end table
',
    'line_nr' => 5,
    'text' => '@section seen before @end table',
    'type' => 'error'
  },
  {
    'error_line' => '@ringaccent expected braces
',
    'line_nr' => 7,
    'text' => '@ringaccent expected braces',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @section should only appear at the beginning of a line
',
    'line_nr' => 7,
    'text' => '@section should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @section should not appear on @ftable line
',
    'line_nr' => 7,
    'text' => '@section should not appear on @ftable line',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @ftable: @ringaccent 
',
    'line_nr' => 7,
    'text' => 'bad argument to @ftable: @ringaccent ',
    'type' => 'error'
  },
  {
    'error_line' => '@section seen before @end ftable
',
    'line_nr' => 7,
    'text' => '@section seen before @end ftable',
    'type' => 'error'
  }
];



$result_converted{'plaintext'}->{'section_on_xtable_line'} = '1 first
=======

2 second
========

3 third
=======

4 fourth
========

';


$result_converted{'xml'}->{'section_on_xtable_line'} = '<vtable commandarg="asis" automaticcommandarg="on" spaces=" ">
</vtable>
<section spaces=" "><sectiontitle>first</sectiontitle>

<table commandarg="asis" automaticcommandarg="on" spaces=" "> 
</table>
</section>
<section spaces=" "><sectiontitle>second</sectiontitle>

<table commandarg="code" spaces=" "> 
</table>
</section>
<section spaces=" "><sectiontitle>third</sectiontitle>

<ftable commandarg="asis" automaticcommandarg="on" spaces=" ">
</ftable>
</section>
<section spaces=" "><sectiontitle>fourth</sectiontitle>
</section>
';

1;
