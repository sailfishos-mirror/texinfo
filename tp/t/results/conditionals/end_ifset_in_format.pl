use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'end_ifset_in_format'} = {
  'contents' => [
    {
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'notset',
              'type' => 'misc_arg'
            },
            {
              'parent' => {},
              'text' => '',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'arg_line' => ' notset
',
            'misc_args' => [
              'notset',
              ''
            ]
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
          'cmdname' => 'ignore',
          'contents' => [
            {
              'parent' => {},
              'text' => '@end ifset',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'last_raw_newline'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'ignore'
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
                'text_arg' => 'ignore'
              },
              'parent' => {}
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 5,
            'macro' => ''
          }
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'text
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
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'parent' => {},
              'text' => '@end ifset
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'verbatim'
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
                'text_arg' => 'verbatim'
              },
              'parent' => {}
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 12,
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '
',
                      'type' => 'raw'
                    },
                    {
                      'parent' => {},
                      'text' => '@end ifset
',
                      'type' => 'raw'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'verb',
              'contents' => [],
              'extra' => {
                'delimiter' => '%'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 18,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
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
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[1];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[1];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[3];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[3];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[3];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[3];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[4];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[6];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[6];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[6];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[8]{'contents'}[0];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[8];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[8];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'end_ifset_in_format'}{'contents'}[0];
$result_trees{'end_ifset_in_format'}{'contents'}[0]{'parent'} = $result_trees{'end_ifset_in_format'};

$result_texis{'end_ifset_in_format'} = '
@set notset

@ignore
@end ifset
@end ignore
text

@verbatim
@end ifset
@end verbatim

@verb{%
@end ifset
%}
';


$result_texts{'end_ifset_in_format'} = '

text

@end ifset


@end ifset

';

$result_errors{'end_ifset_in_format'} = [];


$result_floats{'end_ifset_in_format'} = {};


1;
