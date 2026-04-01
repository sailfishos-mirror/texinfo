use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'clickstyle'} = '*document_root C1
 *before_node_section C5
  {spaces_before_paragraph: }
  *paragraph C5
   *@result l1
   |INFO
   |spaces_after_cmd_before_arg:
    |{spaces_after_cmd_before_arg:\\n}
   {\\n}
   {A }
   *@click C1 l3
    *brace_container
   { (result).\\n}
  {empty_line:\\n}
  *paragraph C5
   *@equiv l5
   |INFO
   |spaces_after_cmd_before_arg:
    |{spaces_after_cmd_before_arg:\\n}
   {\\n}
   {A }
   *@click C1 l7
    *brace_container
   { (equiv no space)\\n}
  {empty_line:\\n}
';


$result_texis{'clickstyle'} = ' @result

A @click{} (result).

@equiv

A @click{} (equiv no space)

';


$result_texts{'clickstyle'} = '=>
A -> (result).

==
A -> (equiv no space)

';

$result_errors{'clickstyle'} = '* E l1|unknown command `clickstyle\'
 unknown command `clickstyle\'

* W l1|command `@result\' must not be followed by new line
 warning: command `@result\' must not be followed by new line

* W l2|command `@result\' must not be followed by new line
 warning: command `@result\' must not be followed by new line

* E l2|@result expected braces
 @result expected braces

* E l5|unknown command `clickstyle\'
 unknown command `clickstyle\'

* W l5|command `@equiv\' must not be followed by new line
 warning: command `@equiv\' must not be followed by new line

* W l6|command `@equiv\' must not be followed by new line
 warning: command `@equiv\' must not be followed by new line

* E l6|@equiv expected braces
 @equiv expected braces

';

$result_nodes_list{'clickstyle'} = '';

$result_sections_list{'clickstyle'} = '';

$result_sectioning_root{'clickstyle'} = '';

$result_headings_list{'clickstyle'} = '';

1;
