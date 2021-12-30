use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'ifnotinfo_exception'} = {
  'contents' => [
    {
      'contents' => [],
      'parent' => {},
      'type' => 'text_root'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'ifnotinfo_exception'}{'contents'}[0]{'parent'} = $result_trees{'ifnotinfo_exception'};

$result_texis{'ifnotinfo_exception'} = '';


$result_texts{'ifnotinfo_exception'} = '';

$result_errors{'ifnotinfo_exception'} = [];


$result_floats{'ifnotinfo_exception'} = {};


1;
