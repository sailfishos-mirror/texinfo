use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'flushright_not_closed_and_format'} = {
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
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'flushright',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'flushright
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'extra' => {
                    'spaces_after_argument' => ' 
'
                  },
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'cmdname' => 'quotation',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'A quot---ation
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'quotation'
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => '
'
                      },
                      'parent' => {},
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'end',
                  'extra' => {
                    'command_argument' => 'quotation',
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'quotation'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 6,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'end_command' => {}
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            }
          ],
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
$result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0];
$result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0];
$result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0];
$result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0];
$result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'flushright_not_closed_and_format'}{'contents'}[0];
$result_trees{'flushright_not_closed_and_format'}{'contents'}[0]{'parent'} = $result_trees{'flushright_not_closed_and_format'};

$result_texis{'flushright_not_closed_and_format'} = '@flushright
flushright

@quotation 
A quot---ation
@end quotation
';


$result_texts{'flushright_not_closed_and_format'} = 'flushright

A quot--ation
';

$result_errors{'flushright_not_closed_and_format'} = [
  {
    'error_line' => 'no matching `@end flushright\'
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'no matching `@end flushright\'',
    'type' => 'error'
  }
];


$result_floats{'flushright_not_closed_and_format'} = {};



$result_converted{'plaintext'}->{'flushright_not_closed_and_format'} = '                                                             flushright

                                                           A quot—ation
';

1;
