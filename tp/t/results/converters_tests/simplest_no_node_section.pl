use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'simplest_no_node_section'} = {
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
                  'type' => 'preamble_text'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'preamble_text'
                }
              ],
              'parent' => {},
              'type' => 'preamble'
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
                  'text' => 'simplest_no_node_section.info'
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
            'text_arg' => 'simplest_no_node_section.info'
          },
          'line_nr' => {
            'file_name' => 'simplest_no_node_section.texi',
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
      'parent' => {},
      'type' => 'text_root'
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
$result_trees{'simplest_no_node_section'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'simplest_no_node_section'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'simplest_no_node_section'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'simplest_no_node_section'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'simplest_no_node_section'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'simplest_no_node_section'}{'contents'}[0]{'contents'}[0];
$result_trees{'simplest_no_node_section'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'simplest_no_node_section'}{'contents'}[0];
$result_trees{'simplest_no_node_section'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'simplest_no_node_section'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'simplest_no_node_section'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'simplest_no_node_section'}{'contents'}[0]{'contents'}[1];
$result_trees{'simplest_no_node_section'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'simplest_no_node_section'}{'contents'}[0];
$result_trees{'simplest_no_node_section'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'simplest_no_node_section'}{'contents'}[0];
$result_trees{'simplest_no_node_section'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'simplest_no_node_section'}{'contents'}[0]{'contents'}[3];
$result_trees{'simplest_no_node_section'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'simplest_no_node_section'}{'contents'}[0]{'contents'}[3];
$result_trees{'simplest_no_node_section'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'simplest_no_node_section'}{'contents'}[0]{'contents'}[3];
$result_trees{'simplest_no_node_section'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'simplest_no_node_section'}{'contents'}[0];
$result_trees{'simplest_no_node_section'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'simplest_no_node_section'}{'contents'}[0];
$result_trees{'simplest_no_node_section'}{'contents'}[0]{'parent'} = $result_trees{'simplest_no_node_section'};
$result_trees{'simplest_no_node_section'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'simplest_no_node_section'}{'contents'}[1];
$result_trees{'simplest_no_node_section'}{'contents'}[1]{'parent'} = $result_trees{'simplest_no_node_section'};

$result_texis{'simplest_no_node_section'} = '\\input texinfo @c -*-texinfo-*-

@setfilename simplest_no_node_section.info

This is a very simple texi manual @  <>.

@bye
';


$result_texts{'simplest_no_node_section'} = '
This is a very simple texi manual   <>.

';

$result_errors{'simplest_no_node_section'} = [];


$result_floats{'simplest_no_node_section'} = {};


$result_converted_errors{'file_html'}->{'simplest_no_node_section'} = [
  {
    'error_line' => 'simplest_no_node_section.texi: warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


$result_converted_errors{'file_info'}->{'simplest_no_node_section'} = [
  {
    'error_line' => 'simplest_no_node_section.texi: warning: document without nodes
',
    'text' => 'document without nodes',
    'type' => 'warning'
  }
];


1;
