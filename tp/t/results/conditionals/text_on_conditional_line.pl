use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'text_on_conditional_line'} = {
  'contents' => [
    {
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'text_on_conditional_line'} = '';


$result_texts{'text_on_conditional_line'} = '';

$result_errors{'text_on_conditional_line'} = [];


$result_floats{'text_on_conditional_line'} = {};


1;
