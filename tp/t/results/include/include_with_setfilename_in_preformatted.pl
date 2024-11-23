use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'include_with_setfilename_in_preformatted'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'example',
          'contents' => [
            {
              'contents' => [
                {
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'argument'
            },
            {
              'source_marks' => [
                {
                  'counter' => 1,
                  'element' => {
                    'cmdname' => 'include',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'included_file_with_setfilename.texi'
                          }
                        ],
                        'info' => {
                          'spaces_after_argument' => {
                            'text' => '
'
                          }
                        },
                        'type' => 'line_arg'
                      }
                    ],
                    'extra' => {
                      'text_arg' => 'included_file_with_setfilename.texi'
                    },
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'line_nr' => 2
                    }
                  },
                  'sourcemark_type' => 'include',
                  'status' => 'start'
                },
                {
                  'counter' => 1,
                  'element' => {
                    'cmdname' => 'setfilename',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'included_file.info'
                          }
                        ],
                        'info' => {
                          'spaces_after_argument' => {
                            'text' => '
'
                          }
                        },
                        'type' => 'line_arg'
                      }
                    ],
                    'extra' => {
                      'text_arg' => 'included_file.info'
                    },
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'file_name' => 'included_file_with_setfilename.texi',
                      'line_nr' => 1
                    }
                  },
                  'sourcemark_type' => 'setfilename'
                }
              ],
              'type' => 'preformatted'
            },
            {
              'contents' => [
                {
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'source_marks' => [
                    {
                      'counter' => 1,
                      'position' => 18,
                      'sourcemark_type' => 'include',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'In included file.
'
                },
                {
                  'text' => 'after include
'
                }
              ],
              'type' => 'preformatted'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'example'
                    }
                  ],
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'text_arg' => 'example'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 4
              }
            }
          ],
          'source_info' => {
            'line_nr' => 1
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'include_with_setfilename_in_preformatted'} = '@example

In included file.
after include
@end example';


$result_texts{'include_with_setfilename_in_preformatted'} = '
In included file.
after include
';

$result_errors{'include_with_setfilename_in_preformatted'} = [];


$result_floats{'include_with_setfilename_in_preformatted'} = {};



$result_converted{'info'}->{'include_with_setfilename_in_preformatted'} = 'This is , produced from .


     In included file.
     after include

Tag Table:

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'include_with_setfilename_in_preformatted'} = [
  {
    'error_line' => 'warning: document without nodes
',
    'text' => 'document without nodes',
    'type' => 'warning'
  }
];


1;
