use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'alias_zero'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'alias',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '0 = strong'
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
            'misc_args' => [
              '0',
              'strong'
            ]
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
          'contents' => [
            {
              'cmdname' => 'strong',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'g'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'info' => {
                'alias_of' => '0'
              },
              'source_info' => {
                'line_nr' => 2
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
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'alias_zero'} = '@alias 0 = strong
@strong{g}.
';


$result_texts{'alias_zero'} = 'g.
';

$result_errors{'alias_zero'} = [];


$result_floats{'alias_zero'} = {};


1;
