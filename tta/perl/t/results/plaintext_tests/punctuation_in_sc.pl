use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'punctuation_in_sc'} = '*document_root C1
 *before_node_section C1
  *paragraph C5
   {one }
   *0 @sc C1 l1
    *brace_container C1
     {two.}
   { three }
   *1 @sc C1 l1
    *brace_container C1
     {FOUR.}
   { five}
';


$result_texis{'punctuation_in_sc'} = 'one @sc{two.} three @sc{FOUR.} five';


$result_texts{'punctuation_in_sc'} = 'one TWO. three FOUR. five';

$result_errors{'punctuation_in_sc'} = [];


$result_floats{'punctuation_in_sc'} = {};



$result_converted{'plaintext'}->{'punctuation_in_sc'} = 'one TWO.  three FOUR. five
';

1;
