use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'node_line_arguments'} = '*document_root C8
 *before_node_section C1
  {empty_line:\\n}
 *0 @node C1 l2 {one arg1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{one-arg1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ \\n}
    {one arg1}
 *1 @node C1 l3 {one arg2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{one-arg2}
  *arguments_line C2
   *line_arg C1
    {one arg2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{two arg}
   |normalized:{two-arg}
    {two arg}
 *2 @node C1 l4 {one arg3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{one-arg3}
  *arguments_line C3
   *line_arg C1
    {one arg3}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{two arg}
   |normalized:{two-arg}
    {two arg}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{three arg}
   |normalized:{three-arg}
    {three arg}
 *3 @node C1 l5 {one arg4}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{one-arg4}
  *arguments_line C4
   *line_arg C1
    {one arg4}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{two arg}
   |normalized:{two-arg}
    {two arg}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{three arg}
   |normalized:{three-arg}
    {three arg}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{four arg}
   |normalized:{four-arg}
    {four arg}
 *4 @node C2 l6 {one arg5}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{one-arg5}
  *arguments_line C4
   *line_arg C1
    {one arg5}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{two arg}
   |normalized:{two-arg}
    {two arg}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{three arg}
   |normalized:{three-arg}
    {three arg}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{four arg five arg}
   |normalized:{four-arg-five-arg}
    {four arg five arg}
  {empty_line:\\n}
 *5 @node C2 l8 {comment}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{comment}
  *arguments_line C1
   *line_arg C1
   |INFO
   |comment_at_end:
    |*@comment C1
     |{rawline_arg:\\n}
   |spaces_after_argument:
    |{ }
    {comment}
  {empty_line:\\n}
 *6 @node C1 l10 {arg1 @comma{} arg2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{arg1-_002c-arg2}
  *arguments_line C3
   *line_arg C3
    {arg1 }
    *7 @comma C1 l10
     *brace_container
    { arg2}
   *line_arg C2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{@,cedilla}
   |normalized:{_00e7edilla}
    *8 @, C1 l10
     *following_arg C1
      {c}
    {edilla}
   *line_arg C1
   |INFO
   |comment_at_end:
    |*@c C1
     |{rawline_arg: comma , end\\n}
   |spaces_after_argument:
    |{ }
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{@strong{comma in strong,}}
   |normalized:{comma-in-strong_002c}
    *9 @strong C1 l10
     *brace_container C1
      {comma in strong,}
';


$result_texis{'node_line_arguments'} = '
@node one arg1 
@node one arg2, two arg
@node one arg3, two arg, three arg
@node one arg4, two arg, three arg, four arg
@node one arg5, two arg, three arg, four arg five arg

@node comment @comment

@node arg1 @comma{} arg2, @,cedilla, @strong{comma in strong,} @c comma , end
';


$result_texts{'node_line_arguments'} = '


';

$result_errors{'node_line_arguments'} = [
  {
    'error_line' => 'warning: superfluous arguments for node
',
    'line_nr' => 6,
    'text' => 'superfluous arguments for node',
    'type' => 'warning'
  },
  {
    'error_line' => 'Next reference to nonexistent `two arg\'
',
    'line_nr' => 3,
    'text' => 'Next reference to nonexistent `two arg\'',
    'type' => 'error'
  },
  {
    'error_line' => 'Next reference to nonexistent `two arg\'
',
    'line_nr' => 4,
    'text' => 'Next reference to nonexistent `two arg\'',
    'type' => 'error'
  },
  {
    'error_line' => 'Prev reference to nonexistent `three arg\'
',
    'line_nr' => 4,
    'text' => 'Prev reference to nonexistent `three arg\'',
    'type' => 'error'
  },
  {
    'error_line' => 'Next reference to nonexistent `two arg\'
',
    'line_nr' => 5,
    'text' => 'Next reference to nonexistent `two arg\'',
    'type' => 'error'
  },
  {
    'error_line' => 'Prev reference to nonexistent `three arg\'
',
    'line_nr' => 5,
    'text' => 'Prev reference to nonexistent `three arg\'',
    'type' => 'error'
  },
  {
    'error_line' => 'Up reference to nonexistent `four arg\'
',
    'line_nr' => 5,
    'text' => 'Up reference to nonexistent `four arg\'',
    'type' => 'error'
  },
  {
    'error_line' => 'Next reference to nonexistent `two arg\'
',
    'line_nr' => 6,
    'text' => 'Next reference to nonexistent `two arg\'',
    'type' => 'error'
  },
  {
    'error_line' => 'Prev reference to nonexistent `three arg\'
',
    'line_nr' => 6,
    'text' => 'Prev reference to nonexistent `three arg\'',
    'type' => 'error'
  },
  {
    'error_line' => 'Up reference to nonexistent `four arg five arg\'
',
    'line_nr' => 6,
    'text' => 'Up reference to nonexistent `four arg five arg\'',
    'type' => 'error'
  },
  {
    'error_line' => 'Next reference to nonexistent `@,cedilla\'
',
    'line_nr' => 10,
    'text' => 'Next reference to nonexistent `@,cedilla\'',
    'type' => 'error'
  },
  {
    'error_line' => 'Prev reference to nonexistent `@strong{comma in strong,}\'
',
    'line_nr' => 10,
    'text' => 'Prev reference to nonexistent `@strong{comma in strong,}\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: node `one arg1\' not in menu
',
    'line_nr' => 2,
    'text' => 'node `one arg1\' not in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `one arg2\' unreferenced
',
    'line_nr' => 3,
    'text' => 'node `one arg2\' unreferenced',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `one arg3\' unreferenced
',
    'line_nr' => 4,
    'text' => 'node `one arg3\' unreferenced',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `one arg4\' unreferenced
',
    'line_nr' => 5,
    'text' => 'node `one arg4\' unreferenced',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `one arg5\' unreferenced
',
    'line_nr' => 6,
    'text' => 'node `one arg5\' unreferenced',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `comment\' unreferenced
',
    'line_nr' => 8,
    'text' => 'node `comment\' unreferenced',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `arg1 @comma{} arg2\' unreferenced
',
    'line_nr' => 10,
    'text' => 'node `arg1 @comma{} arg2\' unreferenced',
    'type' => 'warning'
  }
];


$result_floats{'node_line_arguments'} = {};


1;
