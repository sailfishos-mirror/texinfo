use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_center'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => ' 
'
              },
              'parent' => {},
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'center',
          'extra' => {
            'missing_argument' => 1
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'empty_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_center'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_center'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_center'}{'contents'}[0];
$result_trees{'empty_center'}{'contents'}[0]{'parent'} = $result_trees{'empty_center'};

$result_texis{'empty_center'} = '@center 
';


$result_texts{'empty_center'} = '
';

$result_errors{'empty_center'} = [
  {
    'error_line' => 'warning: @center missing argument
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@center missing argument',
    'type' => 'warning'
  }
];


$result_floats{'empty_center'} = {};



$result_converted{'plaintext'}->{'empty_center'} = '';


$result_converted{'html_text'}->{'empty_center'} = '';


$result_converted{'latex_text'}->{'empty_center'} = '';


$result_converted{'docbook'}->{'empty_center'} = '<simpara role="center"></simpara>
';

1;
