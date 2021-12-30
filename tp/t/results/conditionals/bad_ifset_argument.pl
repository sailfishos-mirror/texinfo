use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'bad_ifset_argument'} = {
  'contents' => [
    {
      'contents' => [],
      'parent' => {},
      'type' => 'text_root'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'bad_ifset_argument'}{'contents'}[0]{'parent'} = $result_trees{'bad_ifset_argument'};

$result_texis{'bad_ifset_argument'} = '';


$result_texts{'bad_ifset_argument'} = '';

$result_errors{'bad_ifset_argument'} = [
  {
    'error_line' => ':1: bad name for @ifset
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'bad name for @ifset',
    'type' => 'error'
  }
];


$result_floats{'bad_ifset_argument'} = {};


1;
