use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'split_for_format_not_split'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => '\\input texinfo @c -*-texinfo-*-
',
              'type' => 'text_before_beginning'
            },
            {
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'type' => 'preamble_before_beginning'
        },
        {
          'type' => 'preamble_before_content'
        }
      ],
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
              'text' => 'This is a very simple texi manual '
            },
            {
              'cmdname' => ' '
            },
            {
              'text' => ' <>.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
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
        'file_name' => 'simplest.texi',
        'line_nr' => 3
      }
    },
    {
      'cmdname' => 'bye',
      'contents' => [
        {
          'text' => '
',
          'type' => 'rawline_arg'
        }
      ]
    }
  ],
  'type' => 'document_root'
};

$result_texis{'split_for_format_not_split'} = '\\input texinfo @c -*-texinfo-*-

@node Top

This is a very simple texi manual @  <>.

@bye
';


$result_texts{'split_for_format_not_split'} = '
This is a very simple texi manual   <>.

';

$result_nodes{'split_for_format_not_split'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_menus{'split_for_format_not_split'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'split_for_format_not_split'} = [];


$result_floats{'split_for_format_not_split'} = {};


1;
