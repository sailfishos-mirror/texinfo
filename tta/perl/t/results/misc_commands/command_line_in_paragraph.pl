use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'command_line_in_paragraph'} = '*document_root C1
 *before_node_section C1
  *paragraph C3
   {documentlanguage on its line\\n}
   *@documentlanguage C1 l2
   |INFO
   |spaces_before_argument:
    |{  }
   |EXTRA
   |global_command_number:{1}
   |text_arg:{en}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{  \\n}
     {en}
   {line following documentlanguage\\n}
';


$result_texis{'command_line_in_paragraph'} = 'documentlanguage on its line
@documentlanguage  en  
line following documentlanguage
';


$result_texts{'command_line_in_paragraph'} = 'documentlanguage on its line
line following documentlanguage
';

$result_errors{'command_line_in_paragraph'} = [];


$result_floats{'command_line_in_paragraph'} = {};


1;
