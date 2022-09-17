use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'accent_argument'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => '~',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => 'e'
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
          'cmdname' => 'itemize',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'ignorable_spaces_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'itemize'
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
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
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'e'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => '~',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 5,
                    'macro' => ''
                  }
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
          'cmdname' => 'itemize',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'ignorable_spaces_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'itemize'
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
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
            'line_nr' => 5,
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
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'parent'} = $result_trees{'accent_argument'};

$result_texis{'accent_argument'} = '@itemize @~e
@item item
@end itemize

@itemize @~{e}
@item item
@end itemize
';


$result_texts{'accent_argument'} = 'item

item
';

$result_errors{'accent_argument'} = [];


$result_floats{'accent_argument'} = {};



$result_converted{'plaintext'}->{'accent_argument'} = '   ̃e item

   ẽ item
';


$result_converted{'html_text'}->{'accent_argument'} = '<ul class="itemize" style="list-style-type: \'\\0303 e\'">
<li>item
</li></ul>

<ul class="itemize" style="list-style-type: \'\\1EBD \'">
<li>item
</li></ul>
';

1;
