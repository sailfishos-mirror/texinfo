use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'user_defined_txiinternalvalue'} = '*document_root C1
 *before_node_section C3
  *0 @macro C3 l1
  |EXTRA
  |macro_name:{txiinternalvalue}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: txiinternalvalue\\n}
   {raw:user internalvalue\\n}
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
  *paragraph C1
   {user internalvalue\\n}
   >SOURCEMARKS
   >macro_expansion<start;1>
    >*macro_call
    >|INFO
    >|command_name:{txiinternalvalue}
   >macro_expansion<end;1><p:18>
';


$result_texis{'user_defined_txiinternalvalue'} = '@macro txiinternalvalue
user internalvalue
@end macro

user internalvalue
';


$result_texts{'user_defined_txiinternalvalue'} = '
user internalvalue
';

$result_errors{'user_defined_txiinternalvalue'} = [];


1;
