use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'set_flag_command_equivalent'} = '*document_root C1
 *before_node_section C5
  *@codequoteundirected C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{on}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {on}
  {empty_line:\\n}
  *paragraph C1
   {.\\n}
   >SOURCEMARKS
   >value_expansion<start;1>{}
    >*@value C1
     >*brace_container C1
      >{txicodequoteundirected}
   >value_expansion<end;1>
  {empty_line:\\n}
  *@codequoteundirected C1 l5
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{off}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {off}
';


$result_texis{'set_flag_command_equivalent'} = '@codequoteundirected on

.

@codequoteundirected off
';


$result_texts{'set_flag_command_equivalent'} = '
.

';

$result_errors{'set_flag_command_equivalent'} = [];


1;
