use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'image_and_punctuation'} = {
  'contents' => [
    {
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Top'
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
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'One space. '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'f--ile'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => '.
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
              'text' => 'Two spaces.  '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'f--ile'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 5
              }
            },
            {
              'text' => '.
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
              'text' => 'End line.
'
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'f--ile'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 8
              }
            },
            {
              'text' => '.
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
              'text' => 'One space. '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'words'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 10
              }
            },
            {
              'text' => '.
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
              'text' => 'Two spaces.  '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'words'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 12
              }
            },
            {
              'text' => '.
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
              'text' => 'End line.
'
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'words'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 15
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 1
      }
    }
  ],
  'type' => 'document_root'
};

$result_texis{'image_and_punctuation'} = '@node Top

One space. @image{f--ile}.

Two spaces.  @image{f--ile}.

End line.
@image{f--ile}.

One space. @image{words}.

Two spaces.  @image{words}.

End line.
@image{words}.
';


$result_texts{'image_and_punctuation'} = '
One space. f--ile.

Two spaces.  f--ile.

End line.
f--ile.

One space. words.

Two spaces.  words.

End line.
words.
';

$result_nodes{'image_and_punctuation'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_menus{'image_and_punctuation'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'image_and_punctuation'} = [];


$result_floats{'image_and_punctuation'} = {};



$result_converted{'info'}->{'image_and_punctuation'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

One space.   [image src="f--ile.png" text="Image description\\"\\"\\\\." ].

   Two spaces.   [image src="f--ile.png" text="Image description\\"\\"\\\\." ].

   End line.   [image src="f--ile.png" text="Image description\\"\\"\\\\." ].

   One space.  This is an image words..

   Two spaces.  This is an image words..

   End line.  This is an image words..


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
