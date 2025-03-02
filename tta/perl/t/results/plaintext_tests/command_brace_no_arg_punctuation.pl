use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'command_brace_no_arg_punctuation'} = '*document_root C1
 *before_node_section C1
  *paragraph C8
   *0 @TeX C1 l1
    *brace_container
   {. And }
   *1 @LaTeX C1 l1
    *brace_container
   {. }
   *2 @copyright C1 l1
    *brace_container
   {. }
   *3 @registeredsymbol C1 l1
    *brace_container
   {. End.\\n}
';


$result_texis{'command_brace_no_arg_punctuation'} = '@TeX{}. And @LaTeX{}. @copyright{}. @registeredsymbol{}. End.
';


$result_texts{'command_brace_no_arg_punctuation'} = 'TeX. And LaTeX. (C). (R). End.
';

$result_errors{'command_brace_no_arg_punctuation'} = [];


$result_floats{'command_brace_no_arg_punctuation'} = {};



$result_converted{'plaintext'}->{'command_brace_no_arg_punctuation'} = 'TeX.  And LaTeX.  ©.  ®.  End.
';

1;
