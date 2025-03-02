use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'thischapter_in_math_in_evenfooting'} = '*document_root C1
 *before_node_section C2
  {empty_line:\\n}
  *@evenfooting C1 l2
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *0 @math C1 l2
     *brace_command_context C2
      {aa }
      *@thischapter
';


$result_texis{'thischapter_in_math_in_evenfooting'} = '
@evenfooting @math{aa @thischapter}
';


$result_texts{'thischapter_in_math_in_evenfooting'} = '
';

$result_errors{'thischapter_in_math_in_evenfooting'} = [];


$result_floats{'thischapter_in_math_in_evenfooting'} = {};


1;
