use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'multitable_bracketed_prototype_not_closed_comment'} = {
  'contents' => [
    {
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    },
                    {
                      'args' => [
                        {
                          'text' => ' comment
',
                          'type' => 'misc_arg'
                        }
                      ],
                      'cmdname' => 'c',
                      'extra' => {
                        'misc_args' => [
                          ' comment
'
                        ]
                      }
                    }
                  ],
                  'type' => 'bracketed'
                }
              ],
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'multitable',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'multitable'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'multitable'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'max_columns' => 1,
            'prototypes' => [
              {
                'contents' => [
                  {},
                  {}
                ],
                'type' => 'bracketed_multitable_prototype'
              }
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 2,
            'macro' => ''
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'multitable_bracketed_prototype_not_closed_comment'}{'contents'}[0]{'contents'}[1]{'extra'}{'prototypes'}[0]{'contents'}[0] = $result_trees{'multitable_bracketed_prototype_not_closed_comment'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'multitable_bracketed_prototype_not_closed_comment'}{'contents'}[0]{'contents'}[1]{'extra'}{'prototypes'}[0]{'contents'}[1] = $result_trees{'multitable_bracketed_prototype_not_closed_comment'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1];

$result_texis{'multitable_bracketed_prototype_not_closed_comment'} = '
@multitable {a@c comment
}@end multitable
';


$result_texts{'multitable_bracketed_prototype_not_closed_comment'} = '
';

$result_errors{'multitable_bracketed_prototype_not_closed_comment'} = [
  {
    'error_line' => 'misplaced {
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => 'misplaced {',
    'type' => 'error'
  }
];


$result_floats{'multitable_bracketed_prototype_not_closed_comment'} = {};


1;
