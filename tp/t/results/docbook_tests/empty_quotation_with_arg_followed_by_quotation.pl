use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_quotation_with_arg_followed_by_quotation'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'something'
                }
              ],
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'quotation'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          }
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
                  'text' => 'In quotation
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
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 4,
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
$result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0];
$result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0];
$result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[2];
$result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[2];
$result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[2];
$result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0];
$result_trees{'empty_quotation_with_arg_followed_by_quotation'}{'contents'}[0]{'parent'} = $result_trees{'empty_quotation_with_arg_followed_by_quotation'};

$result_texis{'empty_quotation_with_arg_followed_by_quotation'} = '@quotation something
@end quotation

@quotation
In quotation
@end quotation
';


$result_texts{'empty_quotation_with_arg_followed_by_quotation'} = 'something

In quotation
';

$result_errors{'empty_quotation_with_arg_followed_by_quotation'} = [];


$result_floats{'empty_quotation_with_arg_followed_by_quotation'} = {};



$result_converted{'docbook'}->{'empty_quotation_with_arg_followed_by_quotation'} = '<blockquote></blockquote>
<blockquote><para>In quotation
</para></blockquote>';

1;
