use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'simplest_test_prefix_info'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '\\input texinfo @c -*-texinfo-*-
',
                  'type' => 'text_before_beginning'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'text_before_beginning'
                }
              ],
              'parent' => {},
              'type' => 'preamble_before_beginning'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_setfilename'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'simplest.info'
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
          'cmdname' => 'setfilename',
          'extra' => {
            'spaces_before_argument' => ' ',
            'text_arg' => 'simplest.info'
          },
          'line_nr' => {
            'file_name' => 'simplest.texi',
            'line_nr' => 3,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top'
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
      'cmdname' => 'node',
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
              'text' => 'This is a very simple texi manual '
            },
            {
              'cmdname' => ' ',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' <>.
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
        }
      ],
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => 'simplest.texi',
        'line_nr' => 5,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'misc_arg'
        }
      ],
      'cmdname' => 'bye',
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'simplest_test_prefix_info'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'simplest_test_prefix_info'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'simplest_test_prefix_info'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'simplest_test_prefix_info'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'simplest_test_prefix_info'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'simplest_test_prefix_info'}{'contents'}[0]{'contents'}[0];
$result_trees{'simplest_test_prefix_info'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'simplest_test_prefix_info'}{'contents'}[0];
$result_trees{'simplest_test_prefix_info'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'simplest_test_prefix_info'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'simplest_test_prefix_info'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'simplest_test_prefix_info'}{'contents'}[0]{'contents'}[1];
$result_trees{'simplest_test_prefix_info'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'simplest_test_prefix_info'}{'contents'}[0];
$result_trees{'simplest_test_prefix_info'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'simplest_test_prefix_info'}{'contents'}[0];
$result_trees{'simplest_test_prefix_info'}{'contents'}[0]{'parent'} = $result_trees{'simplest_test_prefix_info'};
$result_trees{'simplest_test_prefix_info'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'simplest_test_prefix_info'}{'contents'}[1]{'args'}[0];
$result_trees{'simplest_test_prefix_info'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'simplest_test_prefix_info'}{'contents'}[1];
$result_trees{'simplest_test_prefix_info'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'simplest_test_prefix_info'}{'contents'}[1];
$result_trees{'simplest_test_prefix_info'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'simplest_test_prefix_info'}{'contents'}[1]{'contents'}[1];
$result_trees{'simplest_test_prefix_info'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'simplest_test_prefix_info'}{'contents'}[1]{'contents'}[1];
$result_trees{'simplest_test_prefix_info'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'simplest_test_prefix_info'}{'contents'}[1]{'contents'}[1];
$result_trees{'simplest_test_prefix_info'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'simplest_test_prefix_info'}{'contents'}[1];
$result_trees{'simplest_test_prefix_info'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'simplest_test_prefix_info'}{'contents'}[1];
$result_trees{'simplest_test_prefix_info'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'simplest_test_prefix_info'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'simplest_test_prefix_info'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'simplest_test_prefix_info'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'simplest_test_prefix_info'}{'contents'}[1]{'parent'} = $result_trees{'simplest_test_prefix_info'};
$result_trees{'simplest_test_prefix_info'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'simplest_test_prefix_info'}{'contents'}[2];
$result_trees{'simplest_test_prefix_info'}{'contents'}[2]{'parent'} = $result_trees{'simplest_test_prefix_info'};

$result_texis{'simplest_test_prefix_info'} = '\\input texinfo @c -*-texinfo-*-

@setfilename simplest.info

@node Top

This is a very simple texi manual @  <>.

@bye
';


$result_texts{'simplest_test_prefix_info'} = '

This is a very simple texi manual   <>.

';

$result_nodes{'simplest_test_prefix_info'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_menus{'simplest_test_prefix_info'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'simplest_test_prefix_info'} = [];


$result_floats{'simplest_test_prefix_info'} = {};


1;
