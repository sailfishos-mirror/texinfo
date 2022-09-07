use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'defcondx_Ubar'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '\\input texinfo
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'defxcond.info'
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
                'text_arg' => 'defxcond.info'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'defxcond.texi',
                'line_nr' => 2,
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
                  'parent' => {},
                  'text' => ' set this from the command line.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' set this from the command line.
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' set bar
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' set bar
'
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
                  'parent' => {},
                  'text' => ' deffnx inside conditional.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' deffnx inside conditional.
'
                ]
              },
              'parent' => {}
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_content'
        },
        {
          'cmdname' => 'deffn',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'text' => 'foo'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'spaces_at_end'
                    }
                  ],
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'deffn',
                'def_parsed_hash' => {
                  'category' => {}
                },
                'original_def_cmdname' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'defxcond.texi',
                'line_nr' => 8,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'contents' => [
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
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Documentation.
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
              'type' => 'def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'deffn'
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
                'text_arg' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'defxcond.texi',
                'line_nr' => 16,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'defxcond.texi',
            'line_nr' => 8,
            'macro' => ''
          }
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
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[0];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1]{'contents'}[5];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[0];
$result_trees{'defcondx_Ubar'}{'contents'}[0]{'parent'} = $result_trees{'defcondx_Ubar'};
$result_trees{'defcondx_Ubar'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'defcondx_Ubar'}{'contents'}[1];
$result_trees{'defcondx_Ubar'}{'contents'}[1]{'parent'} = $result_trees{'defcondx_Ubar'};

$result_texis{'defcondx_Ubar'} = '\\input texinfo
@setfilename defxcond.info

@c set this from the command line.
@c set bar

@c deffnx inside conditional.
@deffn foo


Documentation.

@end deffn

@bye
';


$result_texts{'defcondx_Ubar'} = '

foo: 


Documentation.


';

$result_errors{'defcondx_Ubar'} = [
  {
    'error_line' => 'warning: missing name for @deffn
',
    'file_name' => 'defxcond.texi',
    'line_nr' => 8,
    'macro' => '',
    'text' => 'missing name for @deffn',
    'type' => 'warning'
  }
];


$result_floats{'defcondx_Ubar'} = {};


$result_converted_errors{'file_html'}->{'defcondx_Ubar'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'defxcond.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
