use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'double_titlepage_not_closed'} = {
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
          'cmdname' => 'titlepage',
          'contents' => [
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
                  'text' => 'This is in title page
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
              'cmdname' => 'titlepage',
              'contents' => [
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
                      'text' => 'And still in title page
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
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
$result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_titlepage_not_closed'}{'contents'}[0];
$result_trees{'double_titlepage_not_closed'}{'contents'}[0]{'parent'} = $result_trees{'double_titlepage_not_closed'};

$result_texis{'double_titlepage_not_closed'} = '@titlepage

This is in title page


@titlepage

And still in title page
';


$result_texts{'double_titlepage_not_closed'} = '';

$result_errors{'double_titlepage_not_closed'} = [
  {
    'error_line' => 'region titlepage inside region titlepage is not allowed
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'region titlepage inside region titlepage is not allowed',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: multiple @titlepage
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'multiple @titlepage',
    'type' => 'warning'
  },
  {
    'error_line' => 'no matching `@end titlepage\'
',
    'file_name' => '',
    'line_nr' => 8,
    'macro' => '',
    'text' => 'no matching `@end titlepage\'',
    'type' => 'error'
  },
  {
    'error_line' => 'no matching `@end titlepage\'
',
    'file_name' => '',
    'line_nr' => 8,
    'macro' => '',
    'text' => 'no matching `@end titlepage\'',
    'type' => 'error'
  }
];


$result_floats{'double_titlepage_not_closed'} = {};


1;
