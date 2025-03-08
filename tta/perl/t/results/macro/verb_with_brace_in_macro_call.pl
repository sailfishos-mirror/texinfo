use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'verb_with_brace_in_macro_call'} = '*document_root C1
 *before_node_section C4
  {empty_line:\\n}
  *0 @macro C3 l2
  |EXTRA
  |macro_name:{mycommand}
  |misc_args:A{a|b|c}
   *arguments_line C1
    {macro_line: mycommand {a, b, c}\\n}
   {raw:\\a\\|\\b\\|\\c\\\\n}
   *@end C1 l4
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{macro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {macro}
  {empty_line:\\n}
  >SOURCEMARKS
  >macro_expansion<start;1><p:1>
   >*macro_call C2
   >|INFO
   >|command_name:{mycommand}
   >|spaces_after_cmd_before_arg:
    >|{ }
    >*brace_arg C1
     >{@verb{: in }}
    >*brace_arg C1
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >{verb :}
  *paragraph C1
   *1 @verb C1 l6:@mycommand
   |INFO
   |delimiter:{:}
    *brace_container C3
     {raw: in }|verb :|}
     >SOURCEMARKS
     >macro_expansion<end;1><p:13>
     {raw:, other, last}\\n}
     {raw:\\n}
';


$result_texis{'verb_with_brace_in_macro_call'} = '
@macro mycommand {a, b, c}
\\a\\|\\b\\|\\c\\
@end macro

@verb{: in }|verb :|, other, last}

:}';


$result_texts{'verb_with_brace_in_macro_call'} = '

 in }|verb :|, other, last}

';

$result_errors{'verb_with_brace_in_macro_call'} = [
  {
    'error_line' => '@verb missing closing delimiter sequence: :} (possibly involving @mycommand)
',
    'line_nr' => 6,
    'macro' => 'mycommand',
    'text' => '@verb missing closing delimiter sequence: :}',
    'type' => 'error'
  }
];


1;
