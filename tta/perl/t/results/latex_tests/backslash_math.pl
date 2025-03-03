use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'backslash_math'} = '*document_root C1
 *before_node_section C2
  *preamble_before_content
  *paragraph C2
   *0 @math C1 l1
    *brace_command_context C5
     {a }
     *@\\
     { b }
     *1 @backslashchar C1 l1
      *brace_container
     { c}
   {.\\n}
';


$result_texis{'backslash_math'} = '@math{a @\\ b @backslashchar{} c}.
';


$result_texts{'backslash_math'} = 'a \\ b \\ c.
';

$result_errors{'backslash_math'} = [];



$result_converted{'latex_text'}->{'backslash_math'} = '\\begin{document}
$a \\backslash{} b \\mathtt{\\backslash{}} c$.
';

1;
