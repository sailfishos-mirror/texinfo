use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'commands_and_punctuation'} = '*document_root C1
 *before_node_section C1
  *paragraph C9
   {SomthingA}
   *@.
   {   and now inhibit.}
   *@:
   { Now dots }
   *0 @dots C1 l1
    *brace_container
   { and enddots }
   *1 @enddots C1 l1
    *brace_container
   { and}
';


$result_texis{'commands_and_punctuation'} = 'SomthingA@.   and now inhibit.@: Now dots @dots{} and enddots @enddots{} and';


$result_texts{'commands_and_punctuation'} = 'SomthingA.   and now inhibit. Now dots ... and enddots ... and';

$result_errors{'commands_and_punctuation'} = [];


$result_floats{'commands_and_punctuation'} = {};



$result_converted{'plaintext'}->{'commands_and_punctuation'} = 'SomthingA.  and now inhibit. Now dots ... and enddots ...  and
';

1;
