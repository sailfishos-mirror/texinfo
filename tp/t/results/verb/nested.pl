use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'nested'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'b',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in b '
                    },
                    {
                      'cmdname' => 'verb',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => ' in verb { } ',
                              'type' => 'raw'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'info' => {
                        'delimiter' => '/'
                      },
                      'source_info' => {
                        'line_nr' => 1
                      }
                    },
                    {
                      'text' => ' in b end'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 1
              }
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

$result_texis{'nested'} = '@b{in b @verb{/ in verb { } /} in b end}';


$result_texts{'nested'} = 'in b  in verb { }  in b end';

$result_errors{'nested'} = [];


$result_floats{'nested'} = {};


1;
