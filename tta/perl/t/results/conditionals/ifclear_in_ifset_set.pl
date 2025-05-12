use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'ifclear_in_ifset_set'} = '*document_root C1
 *before_node_section C5
  {empty_line:\\n}
  *@set C2
  |INFO
  |arg_line:{ a\\n}
   {rawline_arg:a}
   {rawline_arg:}
  {empty_line:\\n}
  >SOURCEMARKS
  >expanded_conditional_command<start;1><p:1>
   >*@ifset C1 l4
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{a}
  >expanded_conditional_command<start;2><p:1>
   >*@ifclear C1 l5
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|comment_at_end:
      >|*@c C1
       >|{rawline_arg: - ok, ignored\\n}
     >|spaces_after_argument:
      >|{ }
      >{ok}
  *@end C1 l6
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |text_arg:{junky   - ok, ignored}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {junky   - ok, ignored}
  *@c C1
   {rawline_arg: WRONG - missing @end ifset.\\n}
';


$result_texis{'ifclear_in_ifset_set'} = '
@set a

@end junky   - ok, ignored
@c WRONG - missing @end ifset.
';


$result_texts{'ifclear_in_ifset_set'} = '

';

$result_errors{'ifclear_in_ifset_set'} = [
  {
    'error_line' => 'warning: unknown @end junky
',
    'line_nr' => 6,
    'text' => 'unknown @end junky',
    'type' => 'warning'
  },
  {
    'error_line' => 'unmatched `@end ifset\'
',
    'line_nr' => 7,
    'text' => 'unmatched `@end ifset\'',
    'type' => 'error'
  },
  {
    'error_line' => 'expected @end ifclear
',
    'line_nr' => 8,
    'text' => 'expected @end ifclear',
    'type' => 'error'
  },
  {
    'error_line' => 'expected @end ifset
',
    'line_nr' => 8,
    'text' => 'expected @end ifset',
    'type' => 'error'
  }
];


$result_nodes_list{'ifclear_in_ifset_set'} = '';

$result_sections_list{'ifclear_in_ifset_set'} = '';

1;
