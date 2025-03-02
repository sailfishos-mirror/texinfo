use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_nodes_with_commands'} = '*document_root C5
 *before_node_section C1
  {empty_line:\\n}
 *0 @node C2 l2
 |INFO
 |spaces_before_argument:
  |{ }
  *arguments_line C1
   *line_arg
   |INFO
   |comment_at_end:
    |*@c C1
     |{rawline_arg: comment\\n}
  {empty_line:\\n}
 *1 @node C1 l4
 |INFO
 |spaces_before_argument:
  |{ }
  *arguments_line C1
   *line_arg C1
    *@\\n
 *2 @node C1 l5
 |INFO
 |spaces_before_argument:
  |{ }
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@:
 *3 @node C1 l6
 |INFO
 |spaces_before_argument:
  |{ }
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *4 @asis C1 l6
     *brace_container C1
      { }
';


$result_texis{'empty_nodes_with_commands'} = '
@node @c comment

@node @
@node @:
@node @asis{ }
';


$result_texts{'empty_nodes_with_commands'} = '

';

$result_errors{'empty_nodes_with_commands'} = [
  {
    'error_line' => 'empty argument in @node
',
    'line_nr' => 2,
    'text' => 'empty argument in @node',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @ should not occur at end of argument to line command
',
    'line_nr' => 4,
    'text' => '@ should not occur at end of argument to line command',
    'type' => 'warning'
  },
  {
    'error_line' => 'empty node name after expansion `@
\'
',
    'line_nr' => 4,
    'text' => 'empty node name after expansion `@
\'',
    'type' => 'error'
  },
  {
    'error_line' => 'empty node name after expansion `@:\'
',
    'line_nr' => 5,
    'text' => 'empty node name after expansion `@:\'',
    'type' => 'error'
  },
  {
    'error_line' => 'empty node name after expansion `@asis{ }\'
',
    'line_nr' => 6,
    'text' => 'empty node name after expansion `@asis{ }\'',
    'type' => 'error'
  }
];


$result_floats{'empty_nodes_with_commands'} = {};


1;
