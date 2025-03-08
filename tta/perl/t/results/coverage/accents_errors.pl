use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'accents_errors'} = '*document_root C1
 *before_node_section C3
  *paragraph C10
   {accent at end of line }
   *0 @ringaccent C1 l1
   |INFO
   |spaces_after_cmd_before_arg:
    |{\\n}
    *following_arg C1
     {a}
   {ccent at end of line and spaces }
   *1 @ringaccent C1 l2
   |INFO
   |spaces_after_cmd_before_arg:
    |{  \\n}
    *following_arg C1
     {a}
   {ccent followed by }
   *@@
   { }
   *2 @ringaccent l3
   *@.
   {\\n}
  {empty_line:\\n}
  *paragraph C11
   {accent character with spaces }
   *3 @~ C1 l5
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
    *following_arg C1
     {f}
   {ollowing.\\n}
   {accent character at end of line }
   *4 @~ C1 l6
   |INFO
   |spaces_after_cmd_before_arg:
    |{\\n}
    *following_arg C1
     {a}
   {ccent character followed by }
   *@@
   { }
   *5 @~ l7
   *@.
   {\\n}
';


$result_texis{'accents_errors'} = 'accent at end of line @ringaccent
accent at end of line and spaces @ringaccent  
accent followed by @@ @ringaccent@.

accent character with spaces @~ following.
accent character at end of line @~
accent character followed by @@ @~@.
';


$result_texts{'accents_errors'} = 'accent at end of line a*ccent at end of line and spaces a*ccent followed by @ *.

accent character with spaces f~ollowing.
accent character at end of line a~ccent character followed by @ ~.
';

$result_errors{'accents_errors'} = [
  {
    'error_line' => 'warning: command `@ringaccent\' must not be followed by new line
',
    'line_nr' => 1,
    'text' => 'command `@ringaccent\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: command `@ringaccent\' must not be followed by new line
',
    'line_nr' => 2,
    'text' => 'command `@ringaccent\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => '@ringaccent expected braces
',
    'line_nr' => 3,
    'text' => '@ringaccent expected braces',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: command `@~\' must not be followed by new line
',
    'line_nr' => 6,
    'text' => 'command `@~\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => '@~ expected braces
',
    'line_nr' => 7,
    'text' => '@~ expected braces',
    'type' => 'error'
  }
];


1;
