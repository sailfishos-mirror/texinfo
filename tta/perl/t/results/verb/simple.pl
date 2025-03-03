use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'simple'} = '*document_root C1
 *before_node_section C1
  *paragraph C1
   *0 @verb C1 l1
   |INFO
   |delimiter:{.}
    *brace_container C1
     {raw:  }   .  }
';


$result_texis{'simple'} = '@verb{.  }   .  .}';


$result_texts{'simple'} = '  }   .  ';

$result_errors{'simple'} = [];


1;
