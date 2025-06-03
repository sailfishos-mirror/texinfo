use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'block_not_matching'} = '*document_root C1
 *before_node_section C15
  *@quotation C2 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
   *paragraph C1
    {A quotation\\n}
  {empty_line:\\n}
  *@deffn C2 l5
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *def_line C1 l5
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{print_navigation}
   |index_entry:I{fn,1}
   |original_def_cmdname:{deffn}
    *block_line_arg C5
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     *def_category C1
      *bracketed_arg C1 l5
       {Function Reference}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {print_navigation}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {$filehandle}
   *def_item C1
    *paragraph C1
     {Text\\n}
  {empty_line:\\n}
  *@table C2 l9
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     *@asis l9
   *table_entry C2
    *table_term C1
     *@item C1 l10
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument:\\n}
       {item}
    *table_definition C1
     *paragraph C1
      {line\\n}
  {empty_line:\\n}
  *@table C2 l14
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     *@emph l14
   *table_entry C2
    *table_term C1
     *@item C1 l15
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument:\\n}
       {ref}
    *table_definition C1
     *@example C2 l16
      *arguments_line C1
       *block_line_arg
       |INFO
       |spaces_after_argument:
        |{spaces_after_argument:\\n}
      *preformatted C1
       {example\\n}
  {empty_line:\\n}
  *@group C2 l21
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
   *paragraph C1
    {in group\\n}
  {empty_line:\\n}
  *@group C2 l25
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
   *paragraph C1
    {in group 2\\n}
  {empty_line:\\n}
  *@cartouche C2 l29
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
   *paragraph C1
    {cartouche\\n}
  {empty_line:\\n}
  *@cartouche C2 l33
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
   *paragraph C1
    {carouche\\n}
';


$result_texis{'block_not_matching'} = '@quotation
A quotation

@deffn {Function Reference} print_navigation $filehandle
Text

@table @asis
@item item
line

@table @emph
@item ref
@example
example

@group
in group

@group
in group 2

@cartouche
cartouche

@cartouche
carouche
';


$result_texts{'block_not_matching'} = 'A quotation

Function Reference: print_navigation $filehandle
Text

item
line

ref
example

in group

in group 2

cartouche

carouche
';

$result_errors{'block_not_matching'} = [
  {
    'error_line' => '`@end\' expected `quotation\', but saw `cartouche\'
',
    'line_nr' => 3,
    'text' => '`@end\' expected `quotation\', but saw `cartouche\'',
    'type' => 'error'
  },
  {
    'error_line' => 'unmatched `@end cartouche\'
',
    'line_nr' => 3,
    'text' => 'unmatched `@end cartouche\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 5,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => '`@end\' expected `deffn\', but saw `deftypefun\'
',
    'line_nr' => 7,
    'text' => '`@end\' expected `deffn\', but saw `deftypefun\'',
    'type' => 'error'
  },
  {
    'error_line' => 'unmatched `@end deftypefun\'
',
    'line_nr' => 7,
    'text' => 'unmatched `@end deftypefun\'',
    'type' => 'error'
  },
  {
    'error_line' => '`@end\' expected `table\', but saw `vtable\'
',
    'line_nr' => 12,
    'text' => '`@end\' expected `table\', but saw `vtable\'',
    'type' => 'error'
  },
  {
    'error_line' => 'unmatched `@end vtable\'
',
    'line_nr' => 12,
    'text' => 'unmatched `@end vtable\'',
    'type' => 'error'
  },
  {
    'error_line' => '`@end\' expected `example\', but saw `display\'
',
    'line_nr' => 18,
    'text' => '`@end\' expected `example\', but saw `display\'',
    'type' => 'error'
  },
  {
    'error_line' => '`@end\' expected `table\', but saw `display\'
',
    'line_nr' => 18,
    'text' => '`@end\' expected `table\', but saw `display\'',
    'type' => 'error'
  },
  {
    'error_line' => 'unmatched `@end display\'
',
    'line_nr' => 18,
    'text' => 'unmatched `@end display\'',
    'type' => 'error'
  },
  {
    'error_line' => 'unmatched `@end table\'
',
    'line_nr' => 19,
    'text' => 'unmatched `@end table\'',
    'type' => 'error'
  },
  {
    'error_line' => '`@end\' expected `group\', but saw `table\'
',
    'line_nr' => 23,
    'text' => '`@end\' expected `group\', but saw `table\'',
    'type' => 'error'
  },
  {
    'error_line' => 'unmatched `@end table\'
',
    'line_nr' => 23,
    'text' => 'unmatched `@end table\'',
    'type' => 'error'
  },
  {
    'error_line' => '`@end\' expected `group\', but saw `cartouche\'
',
    'line_nr' => 27,
    'text' => '`@end\' expected `group\', but saw `cartouche\'',
    'type' => 'error'
  },
  {
    'error_line' => 'unmatched `@end cartouche\'
',
    'line_nr' => 27,
    'text' => 'unmatched `@end cartouche\'',
    'type' => 'error'
  },
  {
    'error_line' => '`@end\' expected `cartouche\', but saw `group\'
',
    'line_nr' => 31,
    'text' => '`@end\' expected `cartouche\', but saw `group\'',
    'type' => 'error'
  },
  {
    'error_line' => 'unmatched `@end group\'
',
    'line_nr' => 31,
    'text' => 'unmatched `@end group\'',
    'type' => 'error'
  },
  {
    'error_line' => '`@end\' expected `cartouche\', but saw `float\'
',
    'line_nr' => 35,
    'text' => '`@end\' expected `cartouche\', but saw `float\'',
    'type' => 'error'
  },
  {
    'error_line' => 'unmatched `@end float\'
',
    'line_nr' => 35,
    'text' => 'unmatched `@end float\'',
    'type' => 'error'
  }
];


$result_nodes_list{'block_not_matching'} = '';

$result_sections_list{'block_not_matching'} = '';

$result_sectioning_root{'block_not_matching'} = '';

$result_headings_list{'block_not_matching'} = '';

$result_indices_sort_strings{'block_not_matching'} = 'fn:
 print_navigation
';

1;
