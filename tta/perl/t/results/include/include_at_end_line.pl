use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'include_at_end_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'include',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'inc_file.texi'
                },
                {
                  'cmdname' => '
'
                }
              ],
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'text_arg' => 'inc_file.texi'
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 1
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
              'text' => 'After.'
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

$result_texis{'include_at_end_line'} = '@include inc_file.texi@

After.';


$result_texts{'include_at_end_line'} = '
After.';

$result_errors{'include_at_end_line'} = [
  {
    'error_line' => 'warning: @ should not occur at end of argument to line command
',
    'line_nr' => 1,
    'text' => '@ should not occur at end of argument to line command',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @include: inc_file.texi@
',
    'line_nr' => 1,
    'text' => 'bad argument to @include: inc_file.texi@',
    'type' => 'error'
  }
];


$result_floats{'include_at_end_line'} = {};


1;
