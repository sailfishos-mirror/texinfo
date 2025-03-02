use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'recursive_alias'} = '*document_root C1
 *before_node_section C9
  *@alias C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{new|strong}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {new = strong}
  {empty_line:\\n}
  *@alias C1 l3
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{other|new}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {other = new}
  {empty_line:\\n}
  *@alias C1 l5
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{strong|other}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {strong = other}
  {empty_line:\\n}
  *paragraph C2
   *0 @strong C1 l7
   |INFO
   |alias_of:{other}
    *brace_container C1
     {aa}
   {.\\n}
  {empty_line:\\n}
  *paragraph C1
   {bb.\\n}
';


$result_texis{'recursive_alias'} = '@alias new = strong

@alias other = new

@alias strong = other

@strong{aa}.

bb.
';


$result_texts{'recursive_alias'} = '


aa.

bb.
';

$result_errors{'recursive_alias'} = [
  {
    'error_line' => 'warning: recursive alias definition of strong through other ignored
',
    'line_nr' => 5,
    'text' => 'recursive alias definition of strong through other ignored',
    'type' => 'warning'
  },
  {
    'error_line' => 'unknown command `other\'
',
    'line_nr' => 9,
    'text' => 'unknown command `other\'',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 9,
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 9,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'recursive_alias'} = {};



$result_converted{'plaintext'}->{'recursive_alias'} = '*aa*.

   bb.
';

1;
