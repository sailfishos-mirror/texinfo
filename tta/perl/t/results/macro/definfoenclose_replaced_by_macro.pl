use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'definfoenclose_replaced_by_macro'} = '*document_root C1
 *before_node_section C5
  *@definfoenclose C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{phoo|;|:}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {phoo,;,:}
  {empty_line:\\n}
  *0 @macro C3 l3
  |EXTRA
  |macro_name:{phoo}
  |misc_args:A{arg}
   *arguments_line C1
    {macro_line: phoo {arg}\\n}
   {raw:||\\arg\\||\\n}
   *@end C1 l5
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
  *paragraph C1
   {||aa||\\n}
   >SOURCEMARKS
   >macro_expansion<start;1>
    >*macro_call C1
    >|INFO
    >|command_name:{phoo}
     >*brace_arg C1
      >{aa}
   >macro_expansion<end;1><p:6>
';


$result_texis{'definfoenclose_replaced_by_macro'} = '@definfoenclose phoo,;,:

@macro phoo {arg}
||\\arg\\||
@end macro

||aa||
';


$result_texts{'definfoenclose_replaced_by_macro'} = '

||aa||
';

$result_errors{'definfoenclose_replaced_by_macro'} = [
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 1,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'definfoenclose_replaced_by_macro'} = '||aa||
';

1;
