use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'delcomment'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => '\\input texinfo
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
          'contents' => [
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' this tests both the del comment and a file without
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' element.
',
                  'type' => 'rawline_arg'
                }
              ]
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'source_marks' => [
                {
                  'counter' => 1,
                  'line' => ' this is a comment.
',
                  'sourcemark_type' => 'delcomment'
                }
              ],
              'text' => '
',
              'type' => 'empty_line'
            }
          ],
          'type' => 'preamble_before_content'
        },
        {
          'contents' => [
            {
              'text' => 'This line is the only output.
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
      'type' => 'before_node_section'
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

$result_texis{'delcomment'} = '\\input texinfo

@c this tests both the del comment and a file without
@c element.


This line is the only output.

@bye
';


$result_texts{'delcomment'} = '

This line is the only output.

';

$result_errors{'delcomment'} = [];


$result_floats{'delcomment'} = {};


1;
