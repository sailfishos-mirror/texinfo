use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'out_of_multitable'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '0.6 0.4 aaa'
                }
              ],
              'parent' => {},
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'columnfractions',
          'extra' => {
            'misc_args' => [
              '0.6',
              '0.4'
            ],
            'spaces_before_argument' => ' '
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
$result_trees{'out_of_multitable'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'out_of_multitable'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'out_of_multitable'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'out_of_multitable'}{'contents'}[0]{'contents'}[0];
$result_trees{'out_of_multitable'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'out_of_multitable'}{'contents'}[0];
$result_trees{'out_of_multitable'}{'contents'}[0]{'parent'} = $result_trees{'out_of_multitable'};

$result_texis{'out_of_multitable'} = '@columnfractions 0.6 0.4 aaa';


$result_texts{'out_of_multitable'} = '';

$result_errors{'out_of_multitable'} = [
  {
    'error_line' => 'column fraction not a number: aaa
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'column fraction not a number: aaa',
    'type' => 'error'
  },
  {
    'error_line' => '@columnfractions only meaningful on a @multitable line
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@columnfractions only meaningful on a @multitable line',
    'type' => 'error'
  }
];


$result_floats{'out_of_multitable'} = {};


1;
