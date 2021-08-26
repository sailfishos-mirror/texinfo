use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'user_defined_txiinternalvalue'} = {
  'contents' => [
    {
      'args' => [
        {
          'parent' => {},
          'text' => 'txiinternalvalue',
          'type' => 'macro_name'
        }
      ],
      'cmdname' => 'macro',
      'contents' => [
        {
          'parent' => {},
          'text' => 'user internalvalue',
          'type' => 'raw'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'last_raw_newline'
        }
      ],
      'extra' => {
        'arg_line' => ' txiinternalvalue
'
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'parent' => {},
      'text' => '
',
      'type' => 'empty_line_after_command'
    },
    {
      'parent' => {},
      'text' => '
',
      'type' => 'empty_line'
    },
    {
      'contents' => [
        {
          'parent' => {},
          'text' => 'user internalvalue
'
        }
      ],
      'parent' => {},
      'type' => 'paragraph'
    }
  ],
  'type' => 'text_root'
};
$result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'user_defined_txiinternalvalue'}{'contents'}[0];
$result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'user_defined_txiinternalvalue'}{'contents'}[0];
$result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'user_defined_txiinternalvalue'}{'contents'}[0];
$result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'parent'} = $result_trees{'user_defined_txiinternalvalue'};
$result_trees{'user_defined_txiinternalvalue'}{'contents'}[1]{'parent'} = $result_trees{'user_defined_txiinternalvalue'};
$result_trees{'user_defined_txiinternalvalue'}{'contents'}[2]{'parent'} = $result_trees{'user_defined_txiinternalvalue'};
$result_trees{'user_defined_txiinternalvalue'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'user_defined_txiinternalvalue'}{'contents'}[3];
$result_trees{'user_defined_txiinternalvalue'}{'contents'}[3]{'parent'} = $result_trees{'user_defined_txiinternalvalue'};

$result_texis{'user_defined_txiinternalvalue'} = '@macro txiinternalvalue
user internalvalue
@end macro

user internalvalue
';


$result_texts{'user_defined_txiinternalvalue'} = '
user internalvalue
';

$result_errors{'user_defined_txiinternalvalue'} = [];


$result_floats{'user_defined_txiinternalvalue'} = {};


1;
