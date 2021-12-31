use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_no_argument'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'macro',
          'contents' => [],
          'extra' => {
            'arg_line' => '',
            'invalid_syntax' => 1
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'macro_no_argument'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_no_argument'}{'contents'}[0];
$result_trees{'macro_no_argument'}{'contents'}[0]{'parent'} = $result_trees{'macro_no_argument'};

$result_texis{'macro_no_argument'} = '@macro@end macro';


$result_texts{'macro_no_argument'} = '';

$result_errors{'macro_no_argument'} = [
  {
    'error_line' => ':1: @macro requires a name
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@macro requires a name',
    'type' => 'error'
  },
  {
    'error_line' => ':1: no matching `@end macro\'
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'no matching `@end macro\'',
    'type' => 'error'
  }
];


$result_floats{'macro_no_argument'} = {};


1;
