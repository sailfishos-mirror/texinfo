use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'also_not_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'page '
            }
          ],
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'page',
          'contents' => [
            {
              'text' => ' 
',
              'type' => 'rawline_arg'
            }
          ]
        },
        {
          'contents' => [
            {
              'text' => 'noindent '
            },
            {
              'cmdname' => 'noindent',
              'source_info' => {
                'line_nr' => 4
              }
            },
            {
              'text' => ' ',
              'type' => 'ignorable_spaces_after_command'
            },
            {
              'text' => 'refill '
            },
            {
              'cmdname' => 'refill'
            },
            {
              'text' => ' something
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
          'cmdname' => 'noindent',
          'source_info' => {
            'line_nr' => 6
          }
        },
        {
          'text' => '     ',
          'type' => 'ignorable_spaces_after_command'
        },
        {
          'contents' => [
            {
              'text' => 'noindent at beginning of line
'
            },
            {
              'cmdname' => 'noindent',
              'source_info' => {
                'line_nr' => 7
              }
            },
            {
              'text' => '  
',
              'type' => 'ignorable_spaces_after_command'
            },
            {
              'text' => 'noindent on the preceding line
'
            },
            {
              'text' => '  '
            },
            {
              'cmdname' => 'noindent',
              'source_info' => {
                'line_nr' => 9
              }
            },
            {
              'text' => '    ',
              'type' => 'ignorable_spaces_after_command'
            },
            {
              'text' => 'noindent after space at beginning of line
'
            }
          ],
          'extra' => {
            'noindent' => 1
          },
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'page',
          'contents' => [
            {
              'text' => '         page at beginning of line
',
              'type' => 'rawline_arg'
            }
          ]
        },
        {
          'cmdname' => 'page',
          'contents' => [
            {
              'text' => '
',
              'type' => 'rawline_arg'
            }
          ]
        },
        {
          'contents' => [
            {
              'text' => 'After page on its own line.
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
              'text' => 'page '
            }
          ],
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'page',
          'contents' => [
            {
              'text' => '   
',
              'type' => 'rawline_arg'
            }
          ]
        },
        {
          'contents' => [
            {
              'text' => 'noindent '
            },
            {
              'cmdname' => 'noindent',
              'source_info' => {
                'line_nr' => 15
              }
            },
            {
              'text' => '    ',
              'type' => 'ignorable_spaces_after_command'
            },
            {
              'text' => 'refill '
            },
            {
              'cmdname' => 'refill'
            },
            {
              'text' => ' 
'
            },
            {
              'text' => 'novalidate '
            },
            {
              'cmdname' => 'novalidate',
              'contents' => [
                {
                  'text' => ' something
',
                  'type' => 'rawline_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 16
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
          'cmdname' => 'subheading',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'special'
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
          'extra' => {},
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 18
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
              'text' => 'Only valid between iftex:
'
            },
            {
              'text' => 'vskip '
            },
            {
              'cmdname' => 'vskip',
              'contents' => [
                {
                  'text' => ' 
',
                  'type' => 'rawline_arg'
                }
              ]
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
              'text' => 'exdent '
            }
          ],
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'exdent',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'line after exdent'
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
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 23
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'also_not_line'} = '

page @page 
noindent @noindent refill @refill something

@noindent     noindent at beginning of line
@noindent  
noindent on the preceding line
  @noindent    noindent after space at beginning of line
@page         page at beginning of line
@page
After page on its own line.

page @page   
noindent @noindent    refill @refill 
novalidate @novalidate something

@subheading special

Only valid between iftex:
vskip @vskip 

exdent @exdent line after exdent
';


$result_texts{'also_not_line'} = '

page 
noindent refill  something

noindent at beginning of line
noindent on the preceding line
  noindent after space at beginning of line


After page on its own line.

page 
noindent refill  
novalidate 
special
-------

Only valid between iftex:
vskip 
exdent line after exdent
';

$result_errors{'also_not_line'} = [
  {
    'error_line' => 'warning: @page should only appear at the beginning of a line
',
    'line_nr' => 3,
    'text' => '@page should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @noindent is useless inside of a paragraph
',
    'line_nr' => 4,
    'text' => '@noindent is useless inside of a paragraph',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @refill is obsolete
',
    'line_nr' => 4,
    'text' => '@refill is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @noindent is useless inside of a paragraph
',
    'line_nr' => 7,
    'text' => '@noindent is useless inside of a paragraph',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @noindent is useless inside of a paragraph
',
    'line_nr' => 9,
    'text' => '@noindent is useless inside of a paragraph',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @page should only appear at the beginning of a line
',
    'line_nr' => 14,
    'text' => '@page should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @noindent is useless inside of a paragraph
',
    'line_nr' => 15,
    'text' => '@noindent is useless inside of a paragraph',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @refill is obsolete
',
    'line_nr' => 15,
    'text' => '@refill is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @novalidate should only appear at the beginning of a line
',
    'line_nr' => 16,
    'text' => '@novalidate should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @vskip should only appear at the beginning of a line
',
    'line_nr' => 21,
    'text' => '@vskip should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @exdent should only appear at the beginning of a line
',
    'line_nr' => 23,
    'text' => '@exdent should only appear at the beginning of a line',
    'type' => 'warning'
  }
];


$result_floats{'also_not_line'} = {};


1;
