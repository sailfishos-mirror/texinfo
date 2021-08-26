use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'txiinternalvalue'} = {
  'contents' => [
    {
      'contents' => [
        {
          'parent' => {},
          'text' => '
'
        }
      ],
      'parent' => {},
      'type' => 'paragraph'
    }
  ],
  'type' => 'text_root'
};
$result_trees{'txiinternalvalue'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'txiinternalvalue'}{'contents'}[0];
$result_trees{'txiinternalvalue'}{'contents'}[0]{'parent'} = $result_trees{'txiinternalvalue'};

$result_texis{'txiinternalvalue'} = '
';


$result_texts{'txiinternalvalue'} = '
';

$result_errors{'txiinternalvalue'} = [
  {
    'error_line' => ':1: unknown command `txiinternalvalue\'
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'unknown command `txiinternalvalue\'',
    'type' => 'error'
  }
];


$result_floats{'txiinternalvalue'} = {};


1;
