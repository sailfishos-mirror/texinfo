use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'invalid_clickstyle'} = '*document_root C1
 *before_node_section C14
  {empty_line:\\n}
  {spaces_before_paragraph: }
  *paragraph C2
   *@result l2
   |INFO
   |spaces_after_cmd_before_arg:
    |{spaces_after_cmd_before_arg: }
   {on the same line\\n}
  {empty_line:\\n}
  *paragraph C3
   {A }
   *@click C1 l4
    *brace_container
   { (result on the same line).\\n}
  {empty_line:\\n}
  {empty_line: \\n}
  {empty_line:\\n}
  *paragraph C3
   {A }
   *@click C1 l8
    *brace_container
   { (nocmd).\\n}
  {empty_line:\\n}
  {spaces_before_paragraph: }
  *paragraph C1
   {something\\n}
  {empty_line:\\n}
  *paragraph C3
   {A }
   *@click C1 l12
    *brace_container
   { (something).\\n}
';


$result_texis{'invalid_clickstyle'} = '
 @result on the same line

A @click{} (result on the same line).

 

A @click{} (nocmd).

 something

A @click{} (something).
';


$result_texts{'invalid_clickstyle'} = '
=>on the same line

A -> (result on the same line).

 

A -> (nocmd).

something

A -> (something).
';

$result_errors{'invalid_clickstyle'} = '* E l2|unknown command `clickstyle\'
 unknown command `clickstyle\'

* E l2|@result expected braces
 @result expected braces

* E l6|unknown command `clickstyle\'
 unknown command `clickstyle\'

* E l6|unknown command `nocmd\'
 unknown command `nocmd\'

* E l10|unknown command `clickstyle\'
 unknown command `clickstyle\'

';

$result_nodes_list{'invalid_clickstyle'} = '';

$result_sections_list{'invalid_clickstyle'} = '';

$result_sectioning_root{'invalid_clickstyle'} = '';

$result_headings_list{'invalid_clickstyle'} = '';

1;
