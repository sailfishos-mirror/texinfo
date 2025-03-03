use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'macro_call_in_ignored_inlinefmtifelse'} = '*document_root C1
 *before_node_section C3
  *0 @macro C3 l1
  |EXTRA
  |macro_name:{commafmt}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: commafmt\\n}
   {raw:before comma, after\\n}
   *@end C1 l3
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
  *paragraph C3
   {Toto }
   *1 @inlinefmtifelse C2 l5
   |EXTRA
   |expand_index:{2}
   |format:{tex}
    *brace_arg C1
     {tex}
    *elided_brace_command_arg C1
     {raw: here @commafmt{} finish}
   { done.\\n}
';


$result_texis{'macro_call_in_ignored_inlinefmtifelse'} = '@macro commafmt
before comma, after
@end macro

Toto @inlinefmtifelse{tex, here @commafmt{} finish} done.
';


$result_texts{'macro_call_in_ignored_inlinefmtifelse'} = '
Toto  done.
';

$result_errors{'macro_call_in_ignored_inlinefmtifelse'} = [];


1;
