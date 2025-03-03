use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'block_command_alias'} = '*document_root C1
 *before_node_section C3
  *@alias C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{lang|lisp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {lang=lisp}
  {empty_line:\\n}
  *0 @lisp C2 l3
  |INFO
  |alias_of:{lang}
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C2
    {in lang\\n}
    *@end C1 l5
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{lang}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {lang}
';


$result_texis{'block_command_alias'} = '@alias lang=lisp

@lisp
in lang
@end lang
';


$result_texts{'block_command_alias'} = '
in lang
';

$result_errors{'block_command_alias'} = [
  {
    'error_line' => 'warning: environment command lisp as argument to @alias
',
    'line_nr' => 1,
    'text' => 'environment command lisp as argument to @alias',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: unknown @end lang
',
    'line_nr' => 5,
    'text' => 'unknown @end lang',
    'type' => 'warning'
  },
  {
    'error_line' => 'no matching `@end lisp\'
',
    'line_nr' => 5,
    'text' => 'no matching `@end lisp\'',
    'type' => 'error'
  }
];


1;
