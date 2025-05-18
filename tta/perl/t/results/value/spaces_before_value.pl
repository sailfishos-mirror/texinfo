use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'spaces_before_value'} = '*document_root C1
 *before_node_section C3
  *@set C2
  |INFO
  |arg_line:{ var val\\n}
   {rawline_arg:var}
   {rawline_arg:val}
  {empty_line:\\n}
  *paragraph C1
   {val\\n}
   >SOURCEMARKS
   >value_expansion<start;1>{val}
    >*@value C1
    >|INFO
    >|spaces_after_cmd_before_arg:
     >|{  }
     >*brace_container C1
      >{var}
   >value_expansion<end;1><p:3>
';


$result_texis{'spaces_before_value'} = '@set var val

val
';


$result_texts{'spaces_before_value'} = '
val
';

$result_errors{'spaces_before_value'} = [];


$result_nodes_list{'spaces_before_value'} = '';

$result_sections_list{'spaces_before_value'} = '';

$result_sectioning_root{'spaces_before_value'} = '';

$result_headings_list{'spaces_before_value'} = '';

1;
