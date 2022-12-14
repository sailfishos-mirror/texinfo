use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'test_two_include'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => 'Include version
'
            },
            {
              'args' => [
                {
                  'text' => 'UPDATED',
                  'type' => 'misc_arg'
                },
                {
                  'text' => '28 March 2002',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'set',
              'extra' => {
                'misc_args' => [
                  'UPDATED',
                  '28 March 2002'
                ]
              },
              'info' => {
                'arg_line' => ' UPDATED 28 March 2002
'
              }
            },
            {
              'args' => [
                {
                  'text' => 'UPDATED-MONTH',
                  'type' => 'misc_arg'
                },
                {
                  'text' => 'March 2002',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'set',
              'extra' => {
                'misc_args' => [
                  'UPDATED-MONTH',
                  'March 2002'
                ]
              },
              'info' => {
                'arg_line' => ' UPDATED-MONTH March 2002
'
              }
            },
            {
              'args' => [
                {
                  'text' => 'EDITION',
                  'type' => 'misc_arg'
                },
                {
                  'text' => '4.2',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'set',
              'extra' => {
                'misc_args' => [
                  'EDITION',
                  '4.2'
                ]
              },
              'info' => {
                'arg_line' => ' EDITION 4.2
'
              }
            },
            {
              'args' => [
                {
                  'text' => 'VERSION',
                  'type' => 'misc_arg'
                },
                {
                  'text' => '4.2',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'set',
              'extra' => {
                'misc_args' => [
                  'VERSION',
                  '4.2'
                ]
              },
              'info' => {
                'arg_line' => ' VERSION 4.2
'
              }
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'text' => 'VERSION_DATE',
              'type' => 'misc_arg'
            },
            {
              'text' => 'October 2002',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'misc_args' => [
              'VERSION_DATE',
              'October 2002'
            ]
          },
          'info' => {
            'arg_line' => ' VERSION_DATE October 2002
'
          }
        },
        {
          'args' => [
            {
              'text' => 'SHORT_VERSION',
              'type' => 'misc_arg'
            },
            {
              'text' => '2-0',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'misc_args' => [
              'SHORT_VERSION',
              '2-0'
            ]
          },
          'info' => {
            'arg_line' => ' SHORT_VERSION 2-0
'
          }
        },
        {
          'args' => [
            {
              'text' => 'RPM_VERSION',
              'type' => 'misc_arg'
            },
            {
              'text' => '2.0.4',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'misc_args' => [
              'RPM_VERSION',
              '2.0.4'
            ]
          },
          'info' => {
            'arg_line' => ' RPM_VERSION 2.0.4
'
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'include inc_file
'
            },
            {
              'text' => 'In included file.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'After inclusion.
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'test_two_include'} = 'Include version
@set UPDATED 28 March 2002
@set UPDATED-MONTH March 2002
@set EDITION 4.2
@set VERSION 4.2

@set VERSION_DATE October 2002
@set SHORT_VERSION 2-0
@set RPM_VERSION 2.0.4

include inc_file
In included file.

After inclusion.
';


$result_texts{'test_two_include'} = 'Include version


include inc_file
In included file.

After inclusion.
';

$result_errors{'test_two_include'} = [];


$result_floats{'test_two_include'} = {};


1;
