use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'paragraph_in_style_command'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'a 2 paragraphs sample '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in first paragraph
'
                    },
                    {
                      'parent' => {},
                      'text' => '
',
                      'type' => 'empty_line'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'samp',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'in second.
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'a 3 paragraphs sample '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in first paragraph
'
                    },
                    {
                      'parent' => {},
                      'text' => '
',
                      'type' => 'empty_line'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'samp',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'in second
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'in third.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_in_style_command'}{'contents'}[0];
$result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[1];
$result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'paragraph_in_style_command'}{'contents'}[0];
$result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'paragraph_in_style_command'}{'contents'}[0];
$result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[3];
$result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[3];
$result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'paragraph_in_style_command'}{'contents'}[0];
$result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[4];
$result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'paragraph_in_style_command'}{'contents'}[0];
$result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'paragraph_in_style_command'}{'contents'}[0];
$result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[6];
$result_trees{'paragraph_in_style_command'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'paragraph_in_style_command'}{'contents'}[0];
$result_trees{'paragraph_in_style_command'}{'contents'}[0]{'parent'} = $result_trees{'paragraph_in_style_command'};

$result_texis{'paragraph_in_style_command'} = 'a 2 paragraphs sample @samp{in first paragraph

}in second.

a 3 paragraphs sample @samp{in first paragraph

}in second

in third.
';


$result_texts{'paragraph_in_style_command'} = 'a 2 paragraphs sample in first paragraph

in second.

a 3 paragraphs sample in first paragraph

in second

in third.
';

$result_errors{'paragraph_in_style_command'} = [
  {
    'error_line' => '@samp missing closing brace
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@samp missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => '@samp missing closing brace
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '@samp missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => '',
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'paragraph_in_style_command'} = {};


1;
