use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'too_much_args'} = '*document_root C1
 *before_node_section C1
  *paragraph C1
   *0 @abbr C2 l1
    *brace_arg C1
     {AZE}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {A truc Z b, E eep}
';


$result_texis{'too_much_args'} = '@abbr{AZE, A truc Z b, E eep}';


$result_texts{'too_much_args'} = 'AZE (A truc Z b, E eep)';

$result_errors{'too_much_args'} = [];



$result_converted{'plaintext'}->{'too_much_args'} = 'AZE (A truc Z b, E eep)
';


$result_converted{'html_text'}->{'too_much_args'} = '<p><abbr class="abbr" title="A truc Z b, E eep">AZE</abbr> (A truc Z b, E eep)</p>';


$result_converted{'latex_text'}->{'too_much_args'} = 'AZE (A truc Z b, E eep)';


$result_converted{'docbook'}->{'too_much_args'} = '<para><abbrev>AZE</abbrev> (A truc Z b, E eep)</para>';

1;
