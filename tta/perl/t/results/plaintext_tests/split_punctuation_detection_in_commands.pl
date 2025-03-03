use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'split_punctuation_detection_in_commands'} = '*document_root C1
 *before_node_section C1
  *paragraph C8
   {Before }
   *0 @asis C1 l1
    *brace_container C1
     {B}
   *1 @asis C1 l1
    *brace_container C1
     {)}
   *2 @asis C1 l1
    *brace_container C1
     {.}
   {]]? Afte}
   *3 @strong C1 l1
    *brace_container C1
     {R}
   *4 @emph C1 l1
    *brace_container C1
     {"!}
   {\'? Last}
';


$result_texis{'split_punctuation_detection_in_commands'} = 'Before @asis{B}@asis{)}@asis{.}]]? Afte@strong{R}@emph{"!}\'? Last';


$result_texts{'split_punctuation_detection_in_commands'} = 'Before B).]]? AfteR"!\'? Last';

$result_errors{'split_punctuation_detection_in_commands'} = [];



$result_converted{'plaintext'}->{'split_punctuation_detection_in_commands'} = 'Before B).]]? Afte*R*_"!_\'? Last
';

1;
