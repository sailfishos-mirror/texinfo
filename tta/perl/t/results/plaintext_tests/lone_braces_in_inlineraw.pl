use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'lone_braces_in_inlineraw'} = '*document_root C1
 *before_node_section C1
  *paragraph C2
   *0 @inlineraw C2 l1
   |EXTRA
   |expand_index:{1}
   |format:{plaintext}
    *brace_arg C1
     {plaintext}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     *balanced_braces C1 l1
      {{truc}}
   {.\\n}
';


$result_texis{'lone_braces_in_inlineraw'} = '@inlineraw{plaintext, {truc}}.
';


$result_texts{'lone_braces_in_inlineraw'} = '{truc}.
';

$result_errors{'lone_braces_in_inlineraw'} = [];



$result_converted{'plaintext'}->{'lone_braces_in_inlineraw'} = '{truc}.
';

1;
