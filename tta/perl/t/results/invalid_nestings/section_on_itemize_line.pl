use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'section_on_itemize_line'} = '*document_root C5
 *before_node_section C1
  *@itemize C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{ }
     *@minus C1 l1
      *brace_container
 *0 @section C3 l1 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E1]
 |section_level:{2}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0|E1|E2|E3]
  ||section_level:{1}
 |toplevel_directions:D[next->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
  {empty_line:\\n}
  *@itemize C1 l3
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{ }
     *@minus C1 l3
      *brace_container
     { aa}
 *1 @section C3 l3 {second}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E2|prev->E0]
 |section_level:{2}
 |section_number:{2}
 |toplevel_directions:D[next->E2|prev->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {second}
  {empty_line:\\n}
  *@itemize C1 l5
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg
 *2 @section C3 l5 {third}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E3|prev->E1]
 |section_level:{2}
 |section_number:{3}
 |toplevel_directions:D[next->E3|prev->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {third}
  {empty_line:\\n}
  *@itemize C1 l7
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
     *@ringaccent l7
     |INFO
     |spaces_after_cmd_before_arg:
      |{ }
 *3 @section C1 l7 {fourth}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E2]
 |section_level:{2}
 |section_number:{4}
 |toplevel_directions:D[prev->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fourth}
';


$result_texis{'section_on_itemize_line'} = '@itemize @minus{} @section first

@itemize @minus{} aa @section second

@itemize @section third

@itemize @ringaccent @section fourth
';


$result_texts{'section_on_itemize_line'} = '1 first
=======

2 second
========

3 third
=======

4 fourth
========
';

$result_errors{'section_on_itemize_line'} = [
  {
    'error_line' => 'warning: @section should only appear at the beginning of a line
',
    'line_nr' => 1,
    'text' => '@section should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @section should not appear on @itemize line
',
    'line_nr' => 1,
    'text' => '@section should not appear on @itemize line',
    'type' => 'warning'
  },
  {
    'error_line' => '@section seen before @end itemize
',
    'line_nr' => 1,
    'text' => '@section seen before @end itemize',
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
    'error_line' => 'warning: @section should not appear on @itemize line
',
    'line_nr' => 3,
    'text' => '@section should not appear on @itemize line',
    'type' => 'warning'
  },
  {
    'error_line' => '@section seen before @end itemize
',
    'line_nr' => 3,
    'text' => '@section seen before @end itemize',
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
    'error_line' => 'warning: @section should not appear on @itemize line
',
    'line_nr' => 5,
    'text' => '@section should not appear on @itemize line',
    'type' => 'warning'
  },
  {
    'error_line' => '@section seen before @end itemize
',
    'line_nr' => 5,
    'text' => '@section seen before @end itemize',
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
    'error_line' => 'warning: @section should not appear on @itemize line
',
    'line_nr' => 7,
    'text' => '@section should not appear on @itemize line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: accent command `@ringaccent\' not allowed as @itemize argument
',
    'line_nr' => 7,
    'text' => 'accent command `@ringaccent\' not allowed as @itemize argument',
    'type' => 'warning'
  },
  {
    'error_line' => '@section seen before @end itemize
',
    'line_nr' => 7,
    'text' => '@section seen before @end itemize',
    'type' => 'error'
  }
];



$result_converted{'plaintext'}->{'section_on_itemize_line'} = '1 first
=======

2 second
========

3 third
=======

4 fourth
========

';


$result_converted{'xml'}->{'section_on_itemize_line'} = '<itemize commandarg="minus" spaces=" "><itemprepend>&minus; </itemprepend>
</itemize>
<section spaces=" "><sectiontitle>first</sectiontitle>

<itemize spaces=" "><itemprepend>&minus; aa </itemprepend>
</itemize>
</section>
<section spaces=" "><sectiontitle>second</sectiontitle>

<itemize spaces=" ">
</itemize>
</section>
<section spaces=" "><sectiontitle>third</sectiontitle>

<itemize spaces=" "><itemprepend><accent type="ring"></accent></itemprepend>
</itemize>
</section>
<section spaces=" "><sectiontitle>fourth</sectiontitle>
</section>
';

1;
