use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_arguments'} = {
  'contents' => [
    {
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'strong',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 2
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'uref',
              'contents' => [
                {
                  'type' => 'brace_arg'
                },
                {
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'abbr',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    }
                  ],
                  'type' => 'brace_arg'
                },
                {
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 4
              }
            },
            {
              'text' => '
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

$result_texis{'empty_arguments'} = '
@strong{}
@uref{,}
@abbr{a,}
';


$result_texts{'empty_arguments'} = '


a
';

$result_errors{'empty_arguments'} = [];


$result_floats{'empty_arguments'} = {};



$result_converted{'info'}->{'empty_arguments'} = 'This is , produced from .

** a

Tag Table:

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'empty_arguments'} = [
  {
    'error_line' => 'warning: document without nodes
',
    'text' => 'document without nodes',
    'type' => 'warning'
  }
];


1;
