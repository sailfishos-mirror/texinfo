use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'bad_enumerate_arguments'} = '*document_root C1
 *before_node_section C9
  *@enumerate C2 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |enumerate_specification:{1}
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {a b}
   *@end C1 l2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
  {empty_line:\\n}
  *@enumerate C2 l4
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |enumerate_specification:{1}
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {!}
   *@end C1 l5
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
  {empty_line:\\n}
  *@enumerate C2 l7
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |enumerate_specification:{1}
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@code C1 l7
      *brace_container C1
       {a}
   *@end C1 l8
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
  {empty_line:\\n}
  *@enumerate C2 l10
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |enumerate_specification:{a}
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     {a}
     *@@
   *@end C1 l11
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
  {empty_line:\\n}
  *@enumerate C2 l13
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |enumerate_specification:{1}
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {a0}
   *@end C1 l14
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
';


$result_texis{'bad_enumerate_arguments'} = '@enumerate a b
@end enumerate

@enumerate !
@end enumerate

@enumerate @code{a}
@end enumerate

@enumerate a@@
@end enumerate

@enumerate a0
@end enumerate
';


$result_texts{'bad_enumerate_arguments'} = '



';

$result_errors{'bad_enumerate_arguments'} = [
  {
    'error_line' => 'bad argument to @enumerate
',
    'line_nr' => 1,
    'text' => 'bad argument to @enumerate',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @enumerate
',
    'line_nr' => 4,
    'text' => 'bad argument to @enumerate',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @enumerate
',
    'line_nr' => 7,
    'text' => 'bad argument to @enumerate',
    'type' => 'error'
  },
  {
    'error_line' => 'superfluous argument to @enumerate
',
    'line_nr' => 10,
    'text' => 'superfluous argument to @enumerate',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @enumerate
',
    'line_nr' => 13,
    'text' => 'bad argument to @enumerate',
    'type' => 'error'
  }
];


$result_nodes_list{'bad_enumerate_arguments'} = '';

$result_sections_list{'bad_enumerate_arguments'} = '';

1;
