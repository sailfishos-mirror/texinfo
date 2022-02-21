use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_documentencoding'} = {
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
          'cmdname' => 'documentencoding',
          'extra' => {
            'missing_argument' => 1
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
$result_trees{'empty_documentencoding'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_documentencoding'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_documentencoding'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_documentencoding'}{'contents'}[0];
$result_trees{'empty_documentencoding'}{'contents'}[0]{'parent'} = $result_trees{'empty_documentencoding'};

$result_texis{'empty_documentencoding'} = '@documentencoding   
';


$result_texts{'empty_documentencoding'} = '';

$result_errors{'empty_documentencoding'} = [
  {
    'error_line' => 'warning: @documentencoding missing argument
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@documentencoding missing argument',
    'type' => 'warning'
  }
];


$result_floats{'empty_documentencoding'} = {};


1;
